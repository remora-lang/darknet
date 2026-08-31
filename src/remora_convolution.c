#include "remora_convolution.h"
#include <assert.h>
int remoraConvolutionForward(
    layer layer, 
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
    
    // Fetch correct function depending on layer index
    switch(layer.index) {
        case 0: _mlir_ciface_entry_conv_2d_rem_layer_0(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 1: _mlir_ciface_entry_conv_2d_rem_layer_1(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 2: _mlir_ciface_entry_conv_2d_rem_layer_2(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 4: _mlir_ciface_entry_conv_2d_rem_layer_4(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 5: _mlir_ciface_entry_conv_2d_rem_layer_5(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 6: _mlir_ciface_entry_conv_2d_rem_layer_6(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 8: _mlir_ciface_entry_conv_2d_rem_layer_8(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 10: _mlir_ciface_entry_conv_2d_rem_layer_10(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 11: _mlir_ciface_entry_conv_2d_rem_layer_11(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 12: _mlir_ciface_entry_conv_2d_rem_layer_12(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 14: _mlir_ciface_entry_conv_2d_rem_layer_14(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 15: _mlir_ciface_entry_conv_2d_rem_layer_15(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 16: _mlir_ciface_entry_conv_2d_rem_layer_16(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 18: _mlir_ciface_entry_conv_2d_rem_layer_18(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 19: _mlir_ciface_entry_conv_2d_rem_layer_19(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 21: _mlir_ciface_entry_conv_2d_rem_layer_21(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 23: _mlir_ciface_entry_conv_2d_rem_layer_23(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 24: _mlir_ciface_entry_conv_2d_rem_layer_24(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 25: _mlir_ciface_entry_conv_2d_rem_layer_25(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 27: _mlir_ciface_entry_conv_2d_rem_layer_27(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 28: _mlir_ciface_entry_conv_2d_rem_layer_28(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 29: _mlir_ciface_entry_conv_2d_rem_layer_29(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 31: _mlir_ciface_entry_conv_2d_rem_layer_31(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 32: _mlir_ciface_entry_conv_2d_rem_layer_32(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 34: _mlir_ciface_entry_conv_2d_rem_layer_34(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 35: _mlir_ciface_entry_conv_2d_rem_layer_35(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 37: _mlir_ciface_entry_conv_2d_rem_layer_37(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 38: _mlir_ciface_entry_conv_2d_rem_layer_38(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 40: _mlir_ciface_entry_conv_2d_rem_layer_40(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 41: _mlir_ciface_entry_conv_2d_rem_layer_41(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 43: _mlir_ciface_entry_conv_2d_rem_layer_43(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 44: _mlir_ciface_entry_conv_2d_rem_layer_44(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 46: _mlir_ciface_entry_conv_2d_rem_layer_46(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 47: _mlir_ciface_entry_conv_2d_rem_layer_47(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 49: _mlir_ciface_entry_conv_2d_rem_layer_49(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 50: _mlir_ciface_entry_conv_2d_rem_layer_50(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 52: _mlir_ciface_entry_conv_2d_rem_layer_52(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 54: _mlir_ciface_entry_conv_2d_rem_layer_54(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 55: _mlir_ciface_entry_conv_2d_rem_layer_55(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 56: _mlir_ciface_entry_conv_2d_rem_layer_56(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 58: _mlir_ciface_entry_conv_2d_rem_layer_58(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 59: _mlir_ciface_entry_conv_2d_rem_layer_59(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 60: _mlir_ciface_entry_conv_2d_rem_layer_60(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 62: _mlir_ciface_entry_conv_2d_rem_layer_62(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 63: _mlir_ciface_entry_conv_2d_rem_layer_63(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 65: _mlir_ciface_entry_conv_2d_rem_layer_65(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 66: _mlir_ciface_entry_conv_2d_rem_layer_66(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 68: _mlir_ciface_entry_conv_2d_rem_layer_68(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 69: _mlir_ciface_entry_conv_2d_rem_layer_69(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 71: _mlir_ciface_entry_conv_2d_rem_layer_71(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 72: _mlir_ciface_entry_conv_2d_rem_layer_72(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 74: _mlir_ciface_entry_conv_2d_rem_layer_74(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 75: _mlir_ciface_entry_conv_2d_rem_layer_75(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 77: _mlir_ciface_entry_conv_2d_rem_layer_77(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 78: _mlir_ciface_entry_conv_2d_rem_layer_78(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 80: _mlir_ciface_entry_conv_2d_rem_layer_80(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 81: _mlir_ciface_entry_conv_2d_rem_layer_81(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 83: _mlir_ciface_entry_conv_2d_rem_layer_83(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 85: _mlir_ciface_entry_conv_2d_rem_layer_85(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 86: _mlir_ciface_entry_conv_2d_rem_layer_86(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 87: _mlir_ciface_entry_conv_2d_rem_layer_87(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 89: _mlir_ciface_entry_conv_2d_rem_layer_89(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 90: _mlir_ciface_entry_conv_2d_rem_layer_90(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 91: _mlir_ciface_entry_conv_2d_rem_layer_91(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 93: _mlir_ciface_entry_conv_2d_rem_layer_93(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 94: _mlir_ciface_entry_conv_2d_rem_layer_94(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 96: _mlir_ciface_entry_conv_2d_rem_layer_96(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 97: _mlir_ciface_entry_conv_2d_rem_layer_97(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 99: _mlir_ciface_entry_conv_2d_rem_layer_99(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 100: _mlir_ciface_entry_conv_2d_rem_layer_100(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 102: _mlir_ciface_entry_conv_2d_rem_layer_102(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 104: _mlir_ciface_entry_conv_2d_rem_layer_104(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 105: _mlir_ciface_entry_conv_2d_rem_layer_105(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 106: _mlir_ciface_entry_conv_2d_rem_layer_106(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 107: _mlir_ciface_entry_conv_2d_rem_layer_107(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 114: _mlir_ciface_entry_conv_2d_rem_layer_114(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 115: _mlir_ciface_entry_conv_2d_rem_layer_115(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 116: _mlir_ciface_entry_conv_2d_rem_layer_116(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 117: _mlir_ciface_entry_conv_2d_rem_layer_117(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 120: _mlir_ciface_entry_conv_2d_rem_layer_120(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 122: _mlir_ciface_entry_conv_2d_rem_layer_122(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 123: _mlir_ciface_entry_conv_2d_rem_layer_123(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 124: _mlir_ciface_entry_conv_2d_rem_layer_124(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 125: _mlir_ciface_entry_conv_2d_rem_layer_125(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 126: _mlir_ciface_entry_conv_2d_rem_layer_126(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 127: _mlir_ciface_entry_conv_2d_rem_layer_127(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 130: _mlir_ciface_entry_conv_2d_rem_layer_130(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 132: _mlir_ciface_entry_conv_2d_rem_layer_132(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 133: _mlir_ciface_entry_conv_2d_rem_layer_133(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 134: _mlir_ciface_entry_conv_2d_rem_layer_134(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 135: _mlir_ciface_entry_conv_2d_rem_layer_135(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 136: _mlir_ciface_entry_conv_2d_rem_layer_136(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 137: _mlir_ciface_entry_conv_2d_rem_layer_137(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 138: _mlir_ciface_entry_conv_2d_rem_layer_138(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 141: _mlir_ciface_entry_conv_2d_rem_layer_141(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 143: _mlir_ciface_entry_conv_2d_rem_layer_143(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 144: _mlir_ciface_entry_conv_2d_rem_layer_144(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 145: _mlir_ciface_entry_conv_2d_rem_layer_145(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 146: _mlir_ciface_entry_conv_2d_rem_layer_146(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 147: _mlir_ciface_entry_conv_2d_rem_layer_147(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 148: _mlir_ciface_entry_conv_2d_rem_layer_148(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 149: _mlir_ciface_entry_conv_2d_rem_layer_149(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 152: _mlir_ciface_entry_conv_2d_rem_layer_152(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 154: _mlir_ciface_entry_conv_2d_rem_layer_154(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 155: _mlir_ciface_entry_conv_2d_rem_layer_155(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 156: _mlir_ciface_entry_conv_2d_rem_layer_156(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 157: _mlir_ciface_entry_conv_2d_rem_layer_157(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 158: _mlir_ciface_entry_conv_2d_rem_layer_158(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 159: _mlir_ciface_entry_conv_2d_rem_layer_159(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        case 160: _mlir_ciface_entry_conv_2d_rem_layer_160(&out_memref_desc, &im_memref_desc, &weights_memref_desc); break;
        default: printf("ERROR: no matching conv2d function for layer %d", layer.index);
    };
}

