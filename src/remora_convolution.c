#include "remora_convolution.h"
#include <assert.h>
int remoraConvolutionForward(
    float* im, int channels, int height, int width,
    float* weights, int num_filters, int kernel_h, int kernel_w,
    int pad_h, int pad_w,
    int stride_h, int stride_w,
    int dilation_h, int dilation_w,
    float *a, float *b, float *c, int m, int n, int k) {

    MemRefDescriptor im_memref_desc = {
        im, im, 0, {1, channels, height, width}, {channels*height*width, height*width, width, 1} };
    MemRefDescriptor weights_memref_desc = {
        weights, weights, 0, {num_filters, channels, kernel_h, kernel_w}, {channels*kernel_h*kernel_w, kernel_h*kernel_w, kernel_w, 1} };
    MemRefDescriptor out_memref_desc = {
        c, c, 0, {1, num_filters, height, width}, {channels*height*width, height*width, width, 1} };

    assert(pad_h == pad_w && "Padding maintains square shapes");
    
    _mlir_ciface_remoraConvolutionForwardDyn(
        &im_memref_desc, &weights_memref_desc, &out_memref_desc, pad_h);
}

