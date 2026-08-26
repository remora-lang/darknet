#ifndef REMORA_CONVOLUTION_H
#define REMORA_CONVOLUTION_H

#include <assert.h>
#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <errno.h>

#include "convolutional_layer.h"

// Initialisation
struct futhark_context_config;
struct futhark_context_config *futhark_context_config_new(void);
void futhark_context_config_free(struct futhark_context_config *cfg);
int futhark_context_config_set_tuning_param(struct futhark_context_config *cfg, const char *param_name, size_t new_value);
struct futhark_context;
struct futhark_context *futhark_context_new(struct futhark_context_config *cfg);
void futhark_context_free(struct futhark_context *ctx);
void futhark_context_config_set_debugging(struct futhark_context_config *cfg, int flag);
void futhark_context_config_set_profiling(struct futhark_context_config *cfg, int flag);
void futhark_context_config_set_logging(struct futhark_context_config *cfg, int flag);
int futhark_get_tuning_param_count(void);
const char *futhark_get_tuning_param_name(int);
const char *futhark_get_tuning_param_class(int);

// Arrays
struct futhark_f32_1d;
struct futhark_f32_1d *futhark_new_f32_1d(struct futhark_context *ctx, const int32_t *data, int64_t dim0);
struct futhark_f32_1d *futhark_new_raw_f32_1d(struct futhark_context *ctx, unsigned char *data, int64_t dim0);
int futhark_free_f32_1d(struct futhark_context *ctx, struct futhark_f32_1d *arr);
int futhark_values_f32_1d(struct futhark_context *ctx, struct futhark_f32_1d *arr, int32_t *data);
int futhark_index_f32_1d(struct futhark_context *ctx, int32_t *out, struct futhark_f32_1d *arr, int64_t i0);
unsigned char *futhark_values_raw_f32_1d(struct futhark_context *ctx, struct futhark_f32_1d *arr);
const int64_t *futhark_shape_f32_1d(struct futhark_context *ctx, struct futhark_f32_1d *arr);
struct futhark_f32_2d;
struct futhark_f32_2d *futhark_new_f32_2d(struct futhark_context *ctx, const int32_t *data, int64_t dim0, int64_t dim1);
struct futhark_f32_2d *futhark_new_raw_f32_2d(struct futhark_context *ctx, unsigned char *data, int64_t dim0, int64_t dim1);
int futhark_free_f32_2d(struct futhark_context *ctx, struct futhark_f32_2d *arr);
int futhark_values_f32_2d(struct futhark_context *ctx, struct futhark_f32_2d *arr, int32_t *data);
int futhark_index_f32_2d(struct futhark_context *ctx, int32_t *out, struct futhark_f32_2d *arr, int64_t i0);
unsigned char *futhark_values_raw_f32_2d(struct futhark_context *ctx, struct futhark_f32_2d *arr);
const int64_t *futhark_shape_f32_2d(struct futhark_context *ctx, struct futhark_f32_2d *arr);
struct futhark_f32_3d;
struct futhark_f32_3d *futhark_new_f32_3d(struct futhark_context *ctx, const int32_t *data, int64_t dim0, int64_t dim1, int64_t dim2);
struct futhark_f32_3d *futhark_new_raw_f32_3d(struct futhark_context *ctx, unsigned char *data, int64_t dim0, int64_t dim1, int64_t dim2);
int futhark_free_f32_3d(struct futhark_context *ctx, struct futhark_f32_3d *arr);
int futhark_values_f32_3d(struct futhark_context *ctx, struct futhark_f32_3d *arr, int32_t *data);
int futhark_index_f32_3d(struct futhark_context *ctx, int32_t *out, struct futhark_f32_3d *arr, int64_t i0);
unsigned char *futhark_values_raw_f32_3d(struct futhark_context *ctx, struct futhark_f32_3d *arr);
const int64_t *futhark_shape_f32_3d(struct futhark_context *ctx, struct futhark_f32_3d *arr);
struct futhark_f32_4d;
struct futhark_f32_4d *futhark_new_f32_4d(struct futhark_context *ctx, const int32_t *data, int64_t dim0, int64_t dim1, int64_t dim2, int64_t dim3);
struct futhark_f32_4d *futhark_new_raw_f32_4d(struct futhark_context *ctx, unsigned char *data, int64_t dim0, int64_t dim1, int64_t dim2, int64_t dim3);
int futhark_free_f32_4d(struct futhark_context *ctx, struct futhark_f32_4d *arr);
int futhark_values_f32_4d(struct futhark_context *ctx, struct futhark_f32_4d *arr, int32_t *data);
int futhark_index_f32_4d(struct futhark_context *ctx, int32_t *out, struct futhark_f32_4d *arr, int64_t i0);
unsigned char *futhark_values_raw_f32_4d(struct futhark_context *ctx, struct futhark_f32_4d *arr);
const int64_t *futhark_shape_f32_4d(struct futhark_context *ctx, struct futhark_f32_4d *arr);

// Opaque values

// Miscellaneous
int futhark_context_sync(struct futhark_context *ctx);
void futhark_context_config_set_cache_file(struct futhark_context_config *cfg, const char *f);
char *futhark_context_get_error(struct futhark_context *ctx);
void futhark_context_set_logging_file(struct futhark_context *ctx, FILE *f);
void futhark_context_pause_profiling(struct futhark_context *ctx);
void futhark_context_unpause_profiling(struct futhark_context *ctx);
char *futhark_context_report(struct futhark_context *ctx);
int futhark_context_clear_caches(struct futhark_context *ctx);
#define FUTHARK_BACKEND_c
#define FUTHARK_SUCCESS 0
#define FUTHARK_PROGRAM_ERROR 2
#define FUTHARK_OUT_OF_MEMORY 3

// Entry points
int futhark_entry_conv_2d_rem_layer_0(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_1(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_10(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_100(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_102(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_104(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_105(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_106(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_107(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_11(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_114(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_115(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_116(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_117(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_12(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_120(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_122(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_123(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_124(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_125(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_126(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_127(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_130(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_132(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_133(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_134(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_135(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_136(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_137(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_138(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_14(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_141(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_143(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_144(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_145(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_146(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_147(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_148(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_149(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_15(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_152(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_154(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_155(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_156(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_157(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_158(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_159(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_16(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_160(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_18(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_19(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_2(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_21(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_23(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_24(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_25(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_27(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_28(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_29(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_31(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_32(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_34(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_35(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_37(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_38(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_4(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_40(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_41(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_43(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_44(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_46(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_47(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_49(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_5(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_50(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_52(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_54(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_55(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_56(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_58(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_59(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_6(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_60(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_62(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_63(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_65(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_66(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_68(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_69(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_71(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_72(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_74(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_75(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_77(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_78(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_8(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_80(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_81(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_83(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_85(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_86(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_87(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_89(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_90(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_91(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_93(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_94(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_96(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_97(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);
int futhark_entry_conv_2d_rem_layer_99(struct futhark_context *ctx, struct futhark_f32_2d **out, const struct futhark_f32_3d *in0, const struct futhark_f32_4d *in1);

#ifdef __cplusplus
extern "C" {
#endif

int remoraConvolutionForward(
    layer l, 
    float* im, int channels, int height, int width,
    float* weights, int num_filters, int kernel_h, int kernel_w,
    int pad_h, int pad_w,
    int stride_h, int stride_w,
    int dilation_h, int dilation_w,
    float *a, float *b, float *c, int m, int n, int k);
int remoraConvolutionForwardGPU(
    layer l, 
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
