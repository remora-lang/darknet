#include "remora_convolution_futharkgpu.h"
#include <assert.h>
int remoraConvolutionForward(
    layer layer, 
    float* im, int channels, int height, int width,
    float* weights, int num_filters, int kernel_h, int kernel_w,
    int pad_h, int pad_w,
    int stride_h, int stride_w,
    int dilation_h, int dilation_w,
    float *a, float *b, float *c, int m, int n, int k) {

    // Initialize Futhark context 
    // Static context variables so that we don't do initialization on each convolution
    struct futhark_context_config* cfg = futhark_context_config_new();
    struct futhark_context* ctx = futhark_context_new(cfg);

    // Plumbing to hook yolov4 convolution layer paramters to futhark I/O struct
    struct futhark_f32_3d* read_value_0 = futhark_new_f32_3d(ctx, im, channels, height, width);
    // TODO: Confirm the last dimension passed here
    struct futhark_f32_4d* read_value_1 = futhark_new_f32_4d(ctx, weights, num_filters, kernel_h, kernel_w, channels);
    struct futhark_f32_2d* result_0;
    
    // Fetch correct function depending on layer index
    switch(layer.index) {
        case 0: futhark_entry_convzm2dzmremzslayer_0(ctx, &result_0, read_value_0, read_value_1); break;
        case 2: futhark_entry_convzm2dzmremzslayer_2(ctx, &result_0, read_value_0, read_value_1); break;
        case 4: futhark_entry_convzm2dzmremzslayer_4(ctx, &result_0, read_value_0, read_value_1); break;
        case 5: futhark_entry_convzm2dzmremzslayer_5(ctx, &result_0, read_value_0, read_value_1); break;
        case 6: futhark_entry_convzm2dzmremzslayer_6(ctx, &result_0, read_value_0, read_value_1); break;
        case 8: futhark_entry_convzm2dzmremzslayer_8(ctx, &result_0, read_value_0, read_value_1); break;
        case 10: futhark_entry_convzm2dzmremzslayer_10(ctx, &result_0, read_value_0, read_value_1); break;
        case 12: futhark_entry_convzm2dzmremzslayer_12(ctx, &result_0, read_value_0, read_value_1); break;
        case 14: futhark_entry_convzm2dzmremzslayer_14(ctx, &result_0, read_value_0, read_value_1); break;
        case 15: futhark_entry_convzm2dzmremzslayer_15(ctx, &result_0, read_value_0, read_value_1); break;
        case 16: futhark_entry_convzm2dzmremzslayer_16(ctx, &result_0, read_value_0, read_value_1); break;
        case 18: futhark_entry_convzm2dzmremzslayer_18(ctx, &result_0, read_value_0, read_value_1); break;
        case 19: futhark_entry_convzm2dzmremzslayer_19(ctx, &result_0, read_value_0, read_value_1); break;
        case 21: futhark_entry_convzm2dzmremzslayer_21(ctx, &result_0, read_value_0, read_value_1); break;
        case 23: futhark_entry_convzm2dzmremzslayer_23(ctx, &result_0, read_value_0, read_value_1); break;
        case 25: futhark_entry_convzm2dzmremzslayer_25(ctx, &result_0, read_value_0, read_value_1); break;
        case 27: futhark_entry_convzm2dzmremzslayer_27(ctx, &result_0, read_value_0, read_value_1); break;
        case 28: futhark_entry_convzm2dzmremzslayer_28(ctx, &result_0, read_value_0, read_value_1); break;
        case 29: futhark_entry_convzm2dzmremzslayer_29(ctx, &result_0, read_value_0, read_value_1); break;
        case 31: futhark_entry_convzm2dzmremzslayer_31(ctx, &result_0, read_value_0, read_value_1); break;
        case 32: futhark_entry_convzm2dzmremzslayer_32(ctx, &result_0, read_value_0, read_value_1); break;
        case 34: futhark_entry_convzm2dzmremzslayer_34(ctx, &result_0, read_value_0, read_value_1); break;
        case 35: futhark_entry_convzm2dzmremzslayer_35(ctx, &result_0, read_value_0, read_value_1); break;
        case 37: futhark_entry_convzm2dzmremzslayer_37(ctx, &result_0, read_value_0, read_value_1); break;
        case 38: futhark_entry_convzm2dzmremzslayer_38(ctx, &result_0, read_value_0, read_value_1); break;
        case 40: futhark_entry_convzm2dzmremzslayer_40(ctx, &result_0, read_value_0, read_value_1); break;
        case 41: futhark_entry_convzm2dzmremzslayer_41(ctx, &result_0, read_value_0, read_value_1); break;
        case 43: futhark_entry_convzm2dzmremzslayer_43(ctx, &result_0, read_value_0, read_value_1); break;
        case 44: futhark_entry_convzm2dzmremzslayer_44(ctx, &result_0, read_value_0, read_value_1); break;
        case 46: futhark_entry_convzm2dzmremzslayer_46(ctx, &result_0, read_value_0, read_value_1); break;
        case 47: futhark_entry_convzm2dzmremzslayer_47(ctx, &result_0, read_value_0, read_value_1); break;
        case 49: futhark_entry_convzm2dzmremzslayer_49(ctx, &result_0, read_value_0, read_value_1); break;
        case 50: futhark_entry_convzm2dzmremzslayer_50(ctx, &result_0, read_value_0, read_value_1); break;
        case 52: futhark_entry_convzm2dzmremzslayer_52(ctx, &result_0, read_value_0, read_value_1); break;
        case 54: futhark_entry_convzm2dzmremzslayer_54(ctx, &result_0, read_value_0, read_value_1); break;
        case 56: futhark_entry_convzm2dzmremzslayer_56(ctx, &result_0, read_value_0, read_value_1); break;
        case 58: futhark_entry_convzm2dzmremzslayer_58(ctx, &result_0, read_value_0, read_value_1); break;
        case 59: futhark_entry_convzm2dzmremzslayer_59(ctx, &result_0, read_value_0, read_value_1); break;
        case 60: futhark_entry_convzm2dzmremzslayer_60(ctx, &result_0, read_value_0, read_value_1); break;
        case 62: futhark_entry_convzm2dzmremzslayer_62(ctx, &result_0, read_value_0, read_value_1); break;
        case 63: futhark_entry_convzm2dzmremzslayer_63(ctx, &result_0, read_value_0, read_value_1); break;
        case 65: futhark_entry_convzm2dzmremzslayer_65(ctx, &result_0, read_value_0, read_value_1); break;
        case 66: futhark_entry_convzm2dzmremzslayer_66(ctx, &result_0, read_value_0, read_value_1); break;
        case 68: futhark_entry_convzm2dzmremzslayer_68(ctx, &result_0, read_value_0, read_value_1); break;
        case 69: futhark_entry_convzm2dzmremzslayer_69(ctx, &result_0, read_value_0, read_value_1); break;
        case 71: futhark_entry_convzm2dzmremzslayer_71(ctx, &result_0, read_value_0, read_value_1); break;
        case 72: futhark_entry_convzm2dzmremzslayer_72(ctx, &result_0, read_value_0, read_value_1); break;
        case 74: futhark_entry_convzm2dzmremzslayer_74(ctx, &result_0, read_value_0, read_value_1); break;
        case 75: futhark_entry_convzm2dzmremzslayer_75(ctx, &result_0, read_value_0, read_value_1); break;
        case 77: futhark_entry_convzm2dzmremzslayer_77(ctx, &result_0, read_value_0, read_value_1); break;
        case 78: futhark_entry_convzm2dzmremzslayer_78(ctx, &result_0, read_value_0, read_value_1); break;
        case 80: futhark_entry_convzm2dzmremzslayer_80(ctx, &result_0, read_value_0, read_value_1); break;
        case 81: futhark_entry_convzm2dzmremzslayer_81(ctx, &result_0, read_value_0, read_value_1); break;
        case 83: futhark_entry_convzm2dzmremzslayer_83(ctx, &result_0, read_value_0, read_value_1); break;
        case 85: futhark_entry_convzm2dzmremzslayer_85(ctx, &result_0, read_value_0, read_value_1); break;
        case 87: futhark_entry_convzm2dzmremzslayer_87(ctx, &result_0, read_value_0, read_value_1); break;
        case 89: futhark_entry_convzm2dzmremzslayer_89(ctx, &result_0, read_value_0, read_value_1); break;
        case 90: futhark_entry_convzm2dzmremzslayer_90(ctx, &result_0, read_value_0, read_value_1); break;
        case 91: futhark_entry_convzm2dzmremzslayer_91(ctx, &result_0, read_value_0, read_value_1); break;
        case 93: futhark_entry_convzm2dzmremzslayer_93(ctx, &result_0, read_value_0, read_value_1); break;
        case 94: futhark_entry_convzm2dzmremzslayer_94(ctx, &result_0, read_value_0, read_value_1); break;
        case 96: futhark_entry_convzm2dzmremzslayer_96(ctx, &result_0, read_value_0, read_value_1); break;
        case 97: futhark_entry_convzm2dzmremzslayer_97(ctx, &result_0, read_value_0, read_value_1); break;
        case 99: futhark_entry_convzm2dzmremzslayer_99(ctx, &result_0, read_value_0, read_value_1); break;
        case 100: futhark_entry_convzm2dzmremzslayer_100(ctx, &result_0, read_value_0, read_value_1); break;
        case 102: futhark_entry_convzm2dzmremzslayer_102(ctx, &result_0, read_value_0, read_value_1); break;
        case 104: futhark_entry_convzm2dzmremzslayer_104(ctx, &result_0, read_value_0, read_value_1); break;
        case 105: futhark_entry_convzm2dzmremzslayer_105(ctx, &result_0, read_value_0, read_value_1); break;
        case 106: futhark_entry_convzm2dzmremzslayer_106(ctx, &result_0, read_value_0, read_value_1); break;
        case 107: futhark_entry_convzm2dzmremzslayer_107(ctx, &result_0, read_value_0, read_value_1); break;
        case 114: futhark_entry_convzm2dzmremzslayer_114(ctx, &result_0, read_value_0, read_value_1); break;
        case 115: futhark_entry_convzm2dzmremzslayer_115(ctx, &result_0, read_value_0, read_value_1); break;
        case 116: futhark_entry_convzm2dzmremzslayer_116(ctx, &result_0, read_value_0, read_value_1); break;
        case 117: futhark_entry_convzm2dzmremzslayer_117(ctx, &result_0, read_value_0, read_value_1); break;
        case 120: futhark_entry_convzm2dzmremzslayer_120(ctx, &result_0, read_value_0, read_value_1); break;
        case 122: futhark_entry_convzm2dzmremzslayer_122(ctx, &result_0, read_value_0, read_value_1); break;
        case 123: futhark_entry_convzm2dzmremzslayer_123(ctx, &result_0, read_value_0, read_value_1); break;
        case 124: futhark_entry_convzm2dzmremzslayer_124(ctx, &result_0, read_value_0, read_value_1); break;
        case 125: futhark_entry_convzm2dzmremzslayer_125(ctx, &result_0, read_value_0, read_value_1); break;
        case 126: futhark_entry_convzm2dzmremzslayer_126(ctx, &result_0, read_value_0, read_value_1); break;
        case 127: futhark_entry_convzm2dzmremzslayer_127(ctx, &result_0, read_value_0, read_value_1); break;
        case 130: futhark_entry_convzm2dzmremzslayer_130(ctx, &result_0, read_value_0, read_value_1); break;
        case 132: futhark_entry_convzm2dzmremzslayer_132(ctx, &result_0, read_value_0, read_value_1); break;
        case 133: futhark_entry_convzm2dzmremzslayer_133(ctx, &result_0, read_value_0, read_value_1); break;
        case 134: futhark_entry_convzm2dzmremzslayer_134(ctx, &result_0, read_value_0, read_value_1); break;
        case 135: futhark_entry_convzm2dzmremzslayer_135(ctx, &result_0, read_value_0, read_value_1); break;
        case 136: futhark_entry_convzm2dzmremzslayer_136(ctx, &result_0, read_value_0, read_value_1); break;
        case 137: futhark_entry_convzm2dzmremzslayer_137(ctx, &result_0, read_value_0, read_value_1); break;
        case 138: futhark_entry_convzm2dzmremzslayer_138(ctx, &result_0, read_value_0, read_value_1); break;
        case 143: futhark_entry_convzm2dzmremzslayer_143(ctx, &result_0, read_value_0, read_value_1); break;
        case 144: futhark_entry_convzm2dzmremzslayer_144(ctx, &result_0, read_value_0, read_value_1); break;
        case 145: futhark_entry_convzm2dzmremzslayer_145(ctx, &result_0, read_value_0, read_value_1); break;
        case 146: futhark_entry_convzm2dzmremzslayer_146(ctx, &result_0, read_value_0, read_value_1); break;
        case 147: futhark_entry_convzm2dzmremzslayer_147(ctx, &result_0, read_value_0, read_value_1); break;
        case 148: futhark_entry_convzm2dzmremzslayer_148(ctx, &result_0, read_value_0, read_value_1); break;
        case 149: futhark_entry_convzm2dzmremzslayer_149(ctx, &result_0, read_value_0, read_value_1); break;
        case 154: futhark_entry_convzm2dzmremzslayer_154(ctx, &result_0, read_value_0, read_value_1); break;
        case 155: futhark_entry_convzm2dzmremzslayer_155(ctx, &result_0, read_value_0, read_value_1); break;
        case 156: futhark_entry_convzm2dzmremzslayer_156(ctx, &result_0, read_value_0, read_value_1); break;
        case 157: futhark_entry_convzm2dzmremzslayer_157(ctx, &result_0, read_value_0, read_value_1); break;
        case 158: futhark_entry_convzm2dzmremzslayer_158(ctx, &result_0, read_value_0, read_value_1); break;
        case 159: futhark_entry_convzm2dzmremzslayer_159(ctx, &result_0, read_value_0, read_value_1); break;
        case 160: futhark_entry_convzm2dzmremzslayer_160(ctx, &result_0, read_value_0, read_value_1); break;
        default: printf("ERROR: no matching conv2d function for layer %d", layer.index);
    };
}

