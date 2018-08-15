/*
 * Generated by util/mkerr.pl DO NOT EDIT
 * Copyright 1995-2018 The OpenSSL Project Authors. All Rights Reserved.
 *
 * Licensed under the OpenSSL license (the "License").  You may not use
 * this file except in compliance with the License.  You can obtain a copy
 * in the file LICENSE in the source distribution or at
 * https://www.openssl.org/source/license.html
 */

#ifndef HEADER_ECERR_H
# define HEADER_ECERR_H

# include <openssl/opensslconf.h>

# ifndef OPENSSL_NO_EC

#  ifdef  __cplusplus
extern "C"
#  endif
int ERR_load_EC_strings(void);

/*
 * EC function codes.
 */
#  define EC_F_BN_TO_FELEM                                 224
#  define EC_F_D2I_ECPARAMETERS                            144
#  define EC_F_D2I_ECPKPARAMETERS                          145
#  define EC_F_D2I_ECPRIVATEKEY                            146
#  define EC_F_DO_EC_KEY_PRINT                             221
#  define EC_F_ECDH_CMS_DECRYPT                            238
#  define EC_F_ECDH_CMS_SET_SHARED_INFO                    239
#  define EC_F_ECDH_COMPUTE_KEY                            246
#  define EC_F_ECDH_SIMPLE_COMPUTE_KEY                     257
#  define EC_F_ECDSA_DO_SIGN_EX                            251
#  define EC_F_ECDSA_DO_VERIFY                             252
#  define EC_F_ECDSA_SIGN_EX                               254
#  define EC_F_ECDSA_SIGN_SETUP                            248
#  define EC_F_ECDSA_SIG_NEW                               265
#  define EC_F_ECDSA_VERIFY                                253
#  define EC_F_ECD_ITEM_VERIFY                             270
#  define EC_F_ECKEY_PARAM2TYPE                            223
#  define EC_F_ECKEY_PARAM_DECODE                          212
#  define EC_F_ECKEY_PRIV_DECODE                           213
#  define EC_F_ECKEY_PRIV_ENCODE                           214
#  define EC_F_ECKEY_PUB_DECODE                            215
#  define EC_F_ECKEY_PUB_ENCODE                            216
#  define EC_F_ECKEY_TYPE2PARAM                            220
#  define EC_F_ECPARAMETERS_PRINT                          147
#  define EC_F_ECPARAMETERS_PRINT_FP                       148
#  define EC_F_ECPKPARAMETERS_PRINT                        149
#  define EC_F_ECPKPARAMETERS_PRINT_FP                     150
#  define EC_F_ECP_NISTZ256_GET_AFFINE                     240
#  define EC_F_ECP_NISTZ256_INV_MOD_ORD                    275
#  define EC_F_ECP_NISTZ256_MULT_PRECOMPUTE                243
#  define EC_F_ECP_NISTZ256_POINTS_MUL                     241
#  define EC_F_ECP_NISTZ256_PRE_COMP_NEW                   244
#  define EC_F_ECP_NISTZ256_WINDOWED_MUL                   242
#  define EC_F_ECX_KEY_OP                                  266
#  define EC_F_ECX_PRIV_ENCODE                             267
#  define EC_F_ECX_PUB_ENCODE                              268
#  define EC_F_EC_ASN1_GROUP2CURVE                         153
#  define EC_F_EC_ASN1_GROUP2FIELDID                       154
#  define EC_F_EC_GF2M_MONTGOMERY_POINT_MULTIPLY           208
#  define EC_F_EC_GF2M_SIMPLE_GROUP_CHECK_DISCRIMINANT     159
#  define EC_F_EC_GF2M_SIMPLE_GROUP_SET_CURVE              195
#  define EC_F_EC_GF2M_SIMPLE_OCT2POINT                    160
#  define EC_F_EC_GF2M_SIMPLE_POINT2OCT                    161
#  define EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES 162
#  define EC_F_EC_GF2M_SIMPLE_POINT_SET_AFFINE_COORDINATES 163
#  define EC_F_EC_GF2M_SIMPLE_SET_COMPRESSED_COORDINATES   164
#  define EC_F_EC_GFP_MONT_FIELD_DECODE                    133
#  define EC_F_EC_GFP_MONT_FIELD_ENCODE                    134
#  define EC_F_EC_GFP_MONT_FIELD_MUL                       131
#  define EC_F_EC_GFP_MONT_FIELD_SET_TO_ONE                209
#  define EC_F_EC_GFP_MONT_FIELD_SQR                       132
#  define EC_F_EC_GFP_MONT_GROUP_SET_CURVE                 189
#  define EC_F_EC_GFP_NISTP224_GROUP_SET_CURVE             225
#  define EC_F_EC_GFP_NISTP224_POINTS_MUL                  228
#  define EC_F_EC_GFP_NISTP224_POINT_GET_AFFINE_COORDINATES 226
#  define EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE             230
#  define EC_F_EC_GFP_NISTP256_POINTS_MUL                  231
#  define EC_F_EC_GFP_NISTP256_POINT_GET_AFFINE_COORDINATES 232
#  define EC_F_EC_GFP_NISTP521_GROUP_SET_CURVE             233
#  define EC_F_EC_GFP_NISTP521_POINTS_MUL                  234
#  define EC_F_EC_GFP_NISTP521_POINT_GET_AFFINE_COORDINATES 235
#  define EC_F_EC_GFP_NIST_FIELD_MUL                       200
#  define EC_F_EC_GFP_NIST_FIELD_SQR                       201
#  define EC_F_EC_GFP_NIST_GROUP_SET_CURVE                 202
#  define EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT      165
#  define EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE               166
#  define EC_F_EC_GFP_SIMPLE_MAKE_AFFINE                   102
#  define EC_F_EC_GFP_SIMPLE_OCT2POINT                     103
#  define EC_F_EC_GFP_SIMPLE_POINT2OCT                     104
#  define EC_F_EC_GFP_SIMPLE_POINTS_MAKE_AFFINE            137
#  define EC_F_EC_GFP_SIMPLE_POINT_GET_AFFINE_COORDINATES  167
#  define EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES  168
#  define EC_F_EC_GFP_SIMPLE_SET_COMPRESSED_COORDINATES    169
#  define EC_F_EC_GROUP_CHECK                              170
#  define EC_F_EC_GROUP_CHECK_DISCRIMINANT                 171
#  define EC_F_EC_GROUP_COPY                               106
#  define EC_F_EC_GROUP_GET_CURVE_GF2M                     172
#  define EC_F_EC_GROUP_GET_CURVE_GFP                      130
#  define EC_F_EC_GROUP_GET_DEGREE                         173
#  define EC_F_EC_GROUP_GET_ECPARAMETERS                   261
#  define EC_F_EC_GROUP_GET_ECPKPARAMETERS                 262
#  define EC_F_EC_GROUP_GET_PENTANOMIAL_BASIS              193
#  define EC_F_EC_GROUP_GET_TRINOMIAL_BASIS                194
#  define EC_F_EC_GROUP_NEW                                108
#  define EC_F_EC_GROUP_NEW_BY_CURVE_NAME                  174
#  define EC_F_EC_GROUP_NEW_FROM_DATA                      175
#  define EC_F_EC_GROUP_NEW_FROM_ECPARAMETERS              263
#  define EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS            264
#  define EC_F_EC_GROUP_SET_CURVE_GF2M                     176
#  define EC_F_EC_GROUP_SET_CURVE_GFP                      109
#  define EC_F_EC_GROUP_SET_GENERATOR                      111
#  define EC_F_EC_GROUP_SET_SEED                           286
#  define EC_F_EC_KEY_CHECK_KEY                            177
#  define EC_F_EC_KEY_COPY                                 178
#  define EC_F_EC_KEY_GENERATE_KEY                         179
#  define EC_F_EC_KEY_NEW                                  182
#  define EC_F_EC_KEY_NEW_METHOD                           245
#  define EC_F_EC_KEY_OCT2PRIV                             255
#  define EC_F_EC_KEY_PRINT                                180
#  define EC_F_EC_KEY_PRINT_FP                             181
#  define EC_F_EC_KEY_PRIV2BUF                             279
#  define EC_F_EC_KEY_PRIV2OCT                             256
#  define EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES    229
#  define EC_F_EC_KEY_SIMPLE_CHECK_KEY                     258
#  define EC_F_EC_KEY_SIMPLE_OCT2PRIV                      259
#  define EC_F_EC_KEY_SIMPLE_PRIV2OCT                      260
#  define EC_F_EC_PKEY_CHECK                               273
#  define EC_F_EC_PKEY_PARAM_CHECK                         274
#  define EC_F_EC_POINTS_MAKE_AFFINE                       136
#  define EC_F_EC_POINT_ADD                                112
#  define EC_F_EC_POINT_BN2POINT                           280
#  define EC_F_EC_POINT_CMP                                113
#  define EC_F_EC_POINT_COPY                               114
#  define EC_F_EC_POINT_DBL                                115
#  define EC_F_EC_POINT_GET_AFFINE_COORDINATES_GF2M        183
#  define EC_F_EC_POINT_GET_AFFINE_COORDINATES_GFP         116
#  define EC_F_EC_POINT_GET_JPROJECTIVE_COORDINATES_GFP    117
#  define EC_F_EC_POINT_INVERT                             210
#  define EC_F_EC_POINT_IS_AT_INFINITY                     118
#  define EC_F_EC_POINT_IS_ON_CURVE                        119
#  define EC_F_EC_POINT_MAKE_AFFINE                        120
#  define EC_F_EC_POINT_NEW                                121
#  define EC_F_EC_POINT_OCT2POINT                          122
#  define EC_F_EC_POINT_POINT2BUF                          281
#  define EC_F_EC_POINT_POINT2OCT                          123
#  define EC_F_EC_POINT_SET_AFFINE_COORDINATES_GF2M        185
#  define EC_F_EC_POINT_SET_AFFINE_COORDINATES_GFP         124
#  define EC_F_EC_POINT_SET_COMPRESSED_COORDINATES_GF2M    186
#  define EC_F_EC_POINT_SET_COMPRESSED_COORDINATES_GFP     125
#  define EC_F_EC_POINT_SET_JPROJECTIVE_COORDINATES_GFP    126
#  define EC_F_EC_POINT_SET_TO_INFINITY                    127
#  define EC_F_EC_PRE_COMP_NEW                             196
#  define EC_F_EC_WNAF_MUL                                 187
#  define EC_F_EC_WNAF_PRECOMPUTE_MULT                     188
#  define EC_F_I2D_ECPARAMETERS                            190
#  define EC_F_I2D_ECPKPARAMETERS                          191
#  define EC_F_I2D_ECPRIVATEKEY                            192
#  define EC_F_I2O_ECPUBLICKEY                             151
#  define EC_F_NISTP224_PRE_COMP_NEW                       227
#  define EC_F_NISTP256_PRE_COMP_NEW                       236
#  define EC_F_NISTP521_PRE_COMP_NEW                       237
#  define EC_F_O2I_ECPUBLICKEY                             152
#  define EC_F_OLD_EC_PRIV_DECODE                          222
#  define EC_F_OSSL_ECDH_COMPUTE_KEY                       247
#  define EC_F_OSSL_ECDSA_SIGN_SIG                         249
#  define EC_F_OSSL_ECDSA_VERIFY_SIG                       250
#  define EC_F_PKEY_ECD_CTRL                               271
#  define EC_F_PKEY_ECD_DIGESTSIGN                         272
#  define EC_F_PKEY_ECD_DIGESTSIGN25519                    276
#  define EC_F_PKEY_ECD_DIGESTSIGN448                      277
#  define EC_F_PKEY_ECD_SIGN25519                          284
#  define EC_F_PKEY_ECD_SIGN448                            285
#  define EC_F_PKEY_ECX_DERIVE                             269
#  define EC_F_PKEY_EC_CTRL                                197
#  define EC_F_PKEY_EC_CTRL_STR                            198
#  define EC_F_PKEY_EC_DERIVE                              217
#  define EC_F_PKEY_EC_INIT                                282
#  define EC_F_PKEY_EC_KDF_DERIVE                          283
#  define EC_F_PKEY_EC_KEYGEN                              199
#  define EC_F_PKEY_EC_PARAMGEN                            219
#  define EC_F_PKEY_EC_SIGN                                218
#  define EC_F_VALIDATE_ECX_DERIVE                         278

/*
 * EC reason codes.
 */
#  define EC_R_ASN1_ERROR                                  115
#  define EC_R_BAD_SIGNATURE                               156
#  define EC_R_BIGNUM_OUT_OF_RANGE                         144
#  define EC_R_BUFFER_TOO_SMALL                            100
#  define EC_R_COORDINATES_OUT_OF_RANGE                    146
#  define EC_R_CURVE_DOES_NOT_SUPPORT_ECDH                 160
#  define EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING              159
#  define EC_R_D2I_ECPKPARAMETERS_FAILURE                  117
#  define EC_R_DECODE_ERROR                                142
#  define EC_R_DISCRIMINANT_IS_ZERO                        118
#  define EC_R_EC_GROUP_NEW_BY_NAME_FAILURE                119
#  define EC_R_FIELD_TOO_LARGE                             143
#  define EC_R_GF2M_NOT_SUPPORTED                          147
#  define EC_R_GROUP2PKPARAMETERS_FAILURE                  120
#  define EC_R_I2D_ECPKPARAMETERS_FAILURE                  121
#  define EC_R_INCOMPATIBLE_OBJECTS                        101
#  define EC_R_INVALID_ARGUMENT                            112
#  define EC_R_INVALID_COMPRESSED_POINT                    110
#  define EC_R_INVALID_COMPRESSION_BIT                     109
#  define EC_R_INVALID_CURVE                               141
#  define EC_R_INVALID_DIGEST                              151
#  define EC_R_INVALID_DIGEST_TYPE                         138
#  define EC_R_INVALID_ENCODING                            102
#  define EC_R_INVALID_FIELD                               103
#  define EC_R_INVALID_FORM                                104
#  define EC_R_INVALID_GROUP_ORDER                         122
#  define EC_R_INVALID_KEY                                 116
#  define EC_R_INVALID_OUTPUT_LENGTH                       161
#  define EC_R_INVALID_PEER_KEY                            133
#  define EC_R_INVALID_PENTANOMIAL_BASIS                   132
#  define EC_R_INVALID_PRIVATE_KEY                         123
#  define EC_R_INVALID_TRINOMIAL_BASIS                     137
#  define EC_R_KDF_PARAMETER_ERROR                         148
#  define EC_R_KEYS_NOT_SET                                140
#  define EC_R_MISSING_PARAMETERS                          124
#  define EC_R_MISSING_PRIVATE_KEY                         125
#  define EC_R_NEED_NEW_SETUP_VALUES                       157
#  define EC_R_NOT_A_NIST_PRIME                            135
#  define EC_R_NOT_IMPLEMENTED                             126
#  define EC_R_NOT_INITIALIZED                             111
#  define EC_R_NO_PARAMETERS_SET                           139
#  define EC_R_NO_PRIVATE_VALUE                            154
#  define EC_R_OPERATION_NOT_SUPPORTED                     152
#  define EC_R_PASSED_NULL_PARAMETER                       134
#  define EC_R_PEER_KEY_ERROR                              149
#  define EC_R_PKPARAMETERS2GROUP_FAILURE                  127
#  define EC_R_POINT_ARITHMETIC_FAILURE                    155
#  define EC_R_POINT_AT_INFINITY                           106
#  define EC_R_POINT_IS_NOT_ON_CURVE                       107
#  define EC_R_RANDOM_NUMBER_GENERATION_FAILED             158
#  define EC_R_SHARED_INFO_ERROR                           150
#  define EC_R_SLOT_FULL                                   108
#  define EC_R_UNDEFINED_GENERATOR                         113
#  define EC_R_UNDEFINED_ORDER                             128
#  define EC_R_UNKNOWN_GROUP                               129
#  define EC_R_UNKNOWN_ORDER                               114
#  define EC_R_UNSUPPORTED_FIELD                           131
#  define EC_R_WRONG_CURVE_PARAMETERS                      145
#  define EC_R_WRONG_ORDER                                 130

# endif
#endif
