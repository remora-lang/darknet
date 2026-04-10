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
      # cudatoolkitPatched = pkgs.cudaPackages_13.cudatoolkit.overrideAttrs(o : {
      #   paths = map (path :
      #   let 
      #     full = builtins.unsafeDiscardStringContext (baseNameOf path);
      #     parsed = (builtins.parseDrvName full).name;
      #     len = (builtins.stringLength parsed);
      #     last_eight = builtins.substring (len - 8) len parsed;
      #   in if last_eight == "cuda_crt"
      #   then pkgs.pkgs.cudaPackages_13.cuda_crt.overrideAttrs (o : {
      #     # at some point, needed to add noexcept(true) to some prototypes, but no longer
      #     # patches = (o.patches or []) ++ [./math_functions.patch];
      #   })
      #   else path) o.paths;
      # });
      cudatoolkitPatched = pkgs.cudaPackages_13.cudatoolkit;
    in
    {
      packages.default = cudatoolkitPatched;
      # default development shell: do `nix develop`
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = [
          pkgs.cmake
          cudatoolkitPatched
          pkgs.cudaPackages_13.cudnn
          pkgs.linuxPackages.nvidiaPackages.production
          pkgs.opencv4
          pkgs.gdb
        ];
        shellHook = ''
          export PS1="\W:nix: "
          read cudann_inc cudann_lib < ${pkgs.cudaPackages_13.cudnn}/nix-support/propagated-build-inputs
          echo "cuda: ${cudatoolkitPatched}"
          echo "cudnninc: $cudann_inc, cudnn_lib: $cudann_lib"
          echo "nvidia: ${pkgs.linuxPackages.nvidiaPackages.production}"
          echo "opencv: ${pkgs.opencv4}"
          echo "cuda_install: ${cudatoolkitPatched}"
          export PKG_CONFIG_PATH=${pkgs.opencv4}/lib/pkgconfig
          function build () { make CUDA_INSTALL=${cudatoolkitPatched} NVIDIAPKG=${pkgs.linuxPackages.nvidiaPackages.production} OPENCVDIR=${pkgs.opencv4} CUDNN_INC=$cudann_inc CUDNN_LIB=$cudann_lib; }
          function clean () { make CUDA_INSTALL=${cudatoolkitPatched} NVIDIAPKG=${pkgs.linuxPackages.nvidiaPackages.production} OPENCVDIR=${pkgs.opencv4} CUDNN_INC=$cudann_inc CUDNN_LIB=$cudann_lib clean; }
        '';
      };
    }
  );
}
