{
  description = "build environment for darknet/yolo";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
               inherit system;
               config.allowUnfree = true;
               allowUnfreePredicate = pkgs._cuda.lib.allowUnfreeCudaPredicate;
               cudaCapabilities = [ 8.6 ];
               cudaForwardCompat = true;
               cudaSupport = true;               
      };
      cudatoolkitPatched = pkgs.cudaPackages_13.cudatoolkit;
    in
    {
      packages.default = pkgs.cudaPackages_13.cudatoolkit;
      # default development shell: do `nix develop`
      devShells.default = pkgs.mkShellNoCC {
        nativeBuildInputs = [
          pkgs.cmake
          pkgs.cudaPackages_13.cudatoolkit
          pkgs.cudaPackages_13.cudnn
          pkgs.linuxPackages.nvidiaPackages.production
          pkgs.opencv4
          pkgs.gdb
        ];
        shellHook = ''
          export PS1="\W:nix: "
          read cudann_inc cudann_lib < ${pkgs.cudaPackages_13.cudnn}/nix-support/propagated-build-inputs
          echo "cuda: ${pkgs.cudaPackages_13.cudatoolkit}"
          echo "cudnninc: $cudann_inc, cudnn_lib: $cudann_lib"
          echo "nvidia: ${pkgs.linuxPackages.nvidiaPackages.production}"
          echo "opencv: ${pkgs.opencv4}"
          export PKG_CONFIG_PATH=${pkgs.opencv4}/lib/pkgconfig
          export LD_LIBRARY_PATH=/home/gts3242/Projects/mocha/mocha-working/gregs-working/llvm-local/install/lib:/home/gts3242/Projects/mocha/mocha-working/gregs-working/llvm-local/install/lib/x86_64-unknown-linux-gnu
          function build () { make CUDA_INSTALL=${pkgs.cudaPackages_13.cudatoolkit} NVIDIAPKG=${pkgs.linuxPackages.nvidiaPackages.production} OPENCVDIR=${pkgs.opencv4} CUDNN_INC=$cudann_inc CUDNN_LIB=$cudann_lib; }
          function clean () { make CUDA_INSTALL=${pkgs.cudaPackages_13.cudatoolkit} NVIDIAPKG=${pkgs.linuxPackages.nvidiaPackages.production} OPENCVDIR=${pkgs.opencv4} CUDNN_INC=$cudann_inc CUDNN_LIB=$cudann_lib clean; }
        '';
      };
    }
  );
}
