#ifndef REMORA_CONVOLUTION_H
#define REMORA_CONVOLUTION_H

#include <stdint.h>

typedef struct MemRefDescriptor {
  float* allocatedPtr;
  float* alignedPtr;
  int64_t offset;
  int64_t sizes[4];
  int64_t strides[4];
} MemRefDescriptor;

#ifdef __cplusplus
extern "C" {
#endif

void _mlir_ciface_remoraConvolutionFwdGPU(
  int blocks, int threads,
  MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* c,
  int pad);
int _mlir_ciface_remoraConvolutionForwardStatic(
  MemRefDescriptor* im, MemRefDescriptor* weights, void *c);
int _mlir_ciface_remoraConvolutionForwardDyn(
  MemRefDescriptor* im, MemRefDescriptor* weights, void *c, int pad);
int remoraConvolutionForward(
    float* im, int channels, int height, int width,
    float* weights, int num_filters, int kernel_h, int kernel_w,
    int pad_h, int pad_w,
    int stride_h, int stride_w,
    int dilation_h, int dilation_w,
    float *a, float *b, float *c, int m, int n, int k);
int remoraConvolutionForwardGPU(
    float* im, int channels, int height, int width,
    float* weights, int num_filters, int kernel_h, int kernel_w,
    int pad_h, int pad_w,
    int stride_h, int stride_w,
    int dilation_h, int dilation_w,
    float *a, float *b, float *c, int m, int n, int k);

#ifdef __cplusplus
}
#endif

#endif // REMORA_CONVOLUTION_H
