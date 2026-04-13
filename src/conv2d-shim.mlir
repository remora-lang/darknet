func.func private @printMemrefF32(memref<*xf32>) attributes { llvm.emit_c_interface }

func.func @remoraConvolutionForwardDyn(
          %im_ptr : memref<?x?x?x?xf32>,
          %weights_ptr : memref<?x?x?x?xf32>,
          %c_ptr : memref<?x?x?x?xf32>,
          %pad : i32)
          -> i32
          attributes { llvm.emit_c_interface } {

  // %im_print = memref.cast %im_ptr : memref<?x?x?x?xf32> to memref<*xf32>
  // call @printMemrefF32(%im_print) : (memref<*xf32>) -> ()

  %im = bufferization.to_tensor %im_ptr restrict : memref<?x?x?x?xf32> to tensor<?x?x?x?xf32>
  %weights = bufferization.to_tensor %weights_ptr restrict : memref<?x?x?x?xf32> to tensor<?x?x?x?xf32>
  %c = bufferization.to_tensor %c_ptr restrict : memref<?x?x?x?xf32> to tensor<?x?x?x?xf32>

  %cf0 = arith.constant 0.0 : f32
  %padded_im = tensor.pad %im low[0, 0, 1, 1] high[0, 0, 1, 1] {
  ^bb0(%arg0 : index, %arg1 : index, %arg2 : index, %arg3 : index):
    tensor.yield %cf0 : f32
  } : tensor <?x?x?x?xf32> to tensor<?x?x?x?xf32>

  %ret = call @conv_2d_nchw_fchw_dyn(%im, %weights, %c) : (tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>) -> (tensor<?x?x?x?xf32>)

  %ci0 = arith.constant 0 : i32
  return %ci0 : i32
}

func.func @conv_2d_nchw_fchw_dyn(%im: tensor<?x?x?x?xf32>, %weights: tensor<?x?x?x?xf32>, %out: tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>{

  %c0 = arith.constant 0.0 : f32
  
  %padded_im = tensor.pad %im low[0, 0, 1, 1] high[0, 0, 1, 1] {
  ^bb0(%arg0 : index, %arg1 : index, %arg2 : index, %arg3 : index):
    tensor.yield %c0 : f32
  } : tensor <?x?x?x?xf32> to tensor<?x?x?x?xf32>


  %ret = linalg.conv_2d_nchw_fchw {dilations = dense<1> : tensor<2xi64>,
                                   strides = dense<1> : tensor<2xi64>}
     ins (%padded_im, %weights: tensor<?x?x?x?xf32>, tensor<?x?x?x?xf32>)
    outs (%out: tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
  return %ret : tensor<?x?x?x?xf32>
}

func.func @remoraConvolutionForwardStatic(
          %im_ptr : memref<1x3x610x610xf32>,
          %weights_ptr : memref<32x3x3x3xf32>,
          %c_ptr : memref<1x32x608x608xf32>,
          %pad : i32)
          -> i32
          attributes { llvm.emit_c_interface } {

  //%im_print = memref.cast %im_ptr : memref<1x3x610x610xf32> to memref<*xf32>
  //call @printMemrefF32(%im_print) : (memref<*xf32>) -> ()

  %im = bufferization.to_tensor %im_ptr restrict : memref<1x3x610x610xf32> to tensor<1x3x610x610xf32>
  %weights = bufferization.to_tensor %weights_ptr restrict : memref<32x3x3x3xf32> to tensor<32x3x3x3xf32>
  %c = bufferization.to_tensor %c_ptr restrict : memref<1x32x608x608xf32> to tensor<1x32x608x608xf32>


  %ret = call @conv_2d_nchw_fchw(%im, %weights, %c) : (tensor<1x3x610x610xf32>, tensor<32x3x3x3xf32>, tensor<1x32x608x608xf32>) -> (tensor<1x32x608x608xf32>)

  %c0 = arith.constant 0 : i32
  return %c0 : i32
}

func.func @conv_2d_nchw_fchw(%im: tensor<1x3x610x610xf32>, %weights: tensor<32x3x3x3xf32>, %out: tensor<1x32x608x608xf32>) -> tensor<1x32x608x608xf32>{

  %ret = linalg.conv_2d_nchw_fchw {dilations = dense<1> : tensor<2xi64>,
                                   strides = dense<1> : tensor<2xi64>}
     ins (%im, %weights: tensor<1x3x610x610xf32>, tensor<32x3x3x3xf32>)
    outs (%out: tensor<1x32x608x608xf32>) -> tensor<1x32x608x608xf32>
  return %ret : tensor<1x32x608x608xf32>
}

// module attributes {transform.with_named_sequence} {
//   transform.named_sequence @__transform_main(%arg1: !transform.any_op {transform.readonly}) {
//     %0 = transform.structured.match ops{["linalg.conv_2d_nchw_fchw"]} in %arg1 : (!transform.any_op) -> !transform.any_op
//     %img2col_tensor_producer, %transformed = transform.structured.convert_conv2d_to_img2col %0 : (!transform.any_op) -> (!transform.any_op, !transform.any_op)
//     transform.print %img2col_tensor_producer {name = "tensor_producer"}: !transform.any_op
//     transform.print %transformed {name = "transformed"}: !transform.any_op
//     transform.yield
//   }
// }

