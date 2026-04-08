module attributes {gpu.container_module} {
  gpu.module @kernels {
  	gpu.func @remoraConvolutionFwdKernel(
      %im_ptr : memref<?x?x?x?xf32>,
		  %weights_ptr : memref<?x?x?x?xf32>,
		  %out_ptr : memref<?x?x?x?xf32>,
		  %pad : index) kernel {

      %0 = gpu.thread_id x

      %im = bufferization.to_tensor %im_ptr : memref<?x?x?x?xf32> to tensor<?x?x?x?xf32>
	    %weights = bufferization.to_tensor %weights_ptr : memref<?x?x?x?xf32> to tensor<?x?x?x?xf32>
	    %out = bufferization.to_tensor %out_ptr : memref<?x?x?x?xf32> to tensor<?x?x?x?xf32>

	    // %cf0 = arith.constant 0.0 : f32
	    // %padded_im = tensor.pad %im low[0, 0, %pad, %pad] high[0, 0, %pad, %pad] {
	    // ^bb0(%arg0 : index, %arg1 : index, %arg2 : index, %arg3 : index):
	    //   tensor.yield %cf0 : f32
	    // } : tensor <?x?x?x?xf32> to tensor<?x?x?x?xf32>

	    %ret = linalg.conv_2d_nchw_fchw {dilations = dense<1> : tensor<2xi64>,
					     strides = dense<1> : tensor<2xi64>}
	       ins (%im, %weights: tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>)
	      outs (%out: tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
	    gpu.return
    }
  }

  func.func @remoraConvolutionFwdGPU(
    %blocks : index, %threads : index,
    %im_ptr : memref<?x?x?x?xf32>,
    %weights_ptr : memref<?x?x?x?xf32>,
    %out_ptr : memref<?x?x?x?xf32>,
    %pad : index)
    attributes { llvm.emit_c_interface } {

    %c1 = arith.constant 1 : index
    gpu.launch_func	@kernels::@remoraConvolutionFwdKernel
    blocks in (%blocks, %c1, %c1)
    threads in (%threads, %c1, %c1)
    args(%im_ptr : memref<?x?x?x?xf32>,
         %weights_ptr : memref<?x?x?x?xf32>,
         %out_ptr : memref<?x?x?x?xf32>,
         %pad : index)
    return
  }
}

