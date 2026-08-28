#ifndef REMORA_CONVOLUTION_H
#define REMORA_CONVOLUTION_H

#include <stdint.h>
#include "convolutional_layer.h"

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

int _mlir_ciface_entry_conv_2d_rem_layer_0(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_1(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_2(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_4(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_5(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_6(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_8(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_10(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_11(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_12(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_14(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_15(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_16(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_18(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_19(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_21(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_23(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_24(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_25(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_27(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_28(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_29(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_31(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_32(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_34(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_35(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_37(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_38(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_40(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_41(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_43(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_44(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_46(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_47(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_49(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_50(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_52(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_54(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_55(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_56(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_58(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_59(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_60(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_62(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_63(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_65(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_66(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_68(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_69(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_71(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_72(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_74(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_75(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_77(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_78(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_80(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_81(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_83(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_85(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_86(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_87(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_89(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_90(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_91(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_93(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_94(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_96(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_97(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_99(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_100(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_102(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_104(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_105(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_106(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_107(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_114(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_115(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_116(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_117(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_120(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_122(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_123(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_124(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_125(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_126(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_127(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_130(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_132(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_133(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_134(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_135(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_136(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_137(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_138(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_141(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_143(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_144(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_145(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_146(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_147(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_148(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_149(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_152(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_154(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_155(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_156(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_157(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_158(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_159(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int _mlir_ciface_entry_conv_2d_rem_layer_160(MemRefDescriptor* im, MemRefDescriptor* weights, MemRefDescriptor* out);
int remoraConvolutionForward(
  layer layer, 
  float* im, int channels, int height, int width,
  float* weights, int num_filters, int kernel_h, int kernel_w,
  int pad_h, int pad_w,
  int stride_h, int stride_w,
  int dilation_h, int dilation_w,
  float *a, float *b, float *c, int m, int n, int k);
int remoraConvolutionForwardGPU(
    layer layer, 
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
