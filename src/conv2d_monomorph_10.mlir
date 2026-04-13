module {
  func.func @"make-idx/304"(%arg0: i32, %arg1: i32) -> tensor<2xi32> {
    %from_elements = tensor.from_elements %arg0, %arg1 : tensor<2xi32>
    return %from_elements : tensor<2xi32>
  }
  func.func @"idx-row/304"(%arg0: i32) -> tensor<304x2xi32> {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c3_i32 = arith.constant 3 : i32
    %c4_i32 = arith.constant 4 : i32
    %c5_i32 = arith.constant 5 : i32
    %c6_i32 = arith.constant 6 : i32
    %c7_i32 = arith.constant 7 : i32
    %c8_i32 = arith.constant 8 : i32
    %c9_i32 = arith.constant 9 : i32
    %c10_i32 = arith.constant 10 : i32
    %c11_i32 = arith.constant 11 : i32
    %c12_i32 = arith.constant 12 : i32
    %c13_i32 = arith.constant 13 : i32
    %c14_i32 = arith.constant 14 : i32
    %c15_i32 = arith.constant 15 : i32
    %c16_i32 = arith.constant 16 : i32
    %c17_i32 = arith.constant 17 : i32
    %c18_i32 = arith.constant 18 : i32
    %c19_i32 = arith.constant 19 : i32
    %c20_i32 = arith.constant 20 : i32
    %c21_i32 = arith.constant 21 : i32
    %c22_i32 = arith.constant 22 : i32
    %c23_i32 = arith.constant 23 : i32
    %c24_i32 = arith.constant 24 : i32
    %c25_i32 = arith.constant 25 : i32
    %c26_i32 = arith.constant 26 : i32
    %c27_i32 = arith.constant 27 : i32
    %c28_i32 = arith.constant 28 : i32
    %c29_i32 = arith.constant 29 : i32
    %c30_i32 = arith.constant 30 : i32
    %c31_i32 = arith.constant 31 : i32
    %c32_i32 = arith.constant 32 : i32
    %c33_i32 = arith.constant 33 : i32
    %c34_i32 = arith.constant 34 : i32
    %c35_i32 = arith.constant 35 : i32
    %c36_i32 = arith.constant 36 : i32
    %c37_i32 = arith.constant 37 : i32
    %c38_i32 = arith.constant 38 : i32
    %c39_i32 = arith.constant 39 : i32
    %c40_i32 = arith.constant 40 : i32
    %c41_i32 = arith.constant 41 : i32
    %c42_i32 = arith.constant 42 : i32
    %c43_i32 = arith.constant 43 : i32
    %c44_i32 = arith.constant 44 : i32
    %c45_i32 = arith.constant 45 : i32
    %c46_i32 = arith.constant 46 : i32
    %c47_i32 = arith.constant 47 : i32
    %c48_i32 = arith.constant 48 : i32
    %c49_i32 = arith.constant 49 : i32
    %c50_i32 = arith.constant 50 : i32
    %c51_i32 = arith.constant 51 : i32
    %c52_i32 = arith.constant 52 : i32
    %c53_i32 = arith.constant 53 : i32
    %c54_i32 = arith.constant 54 : i32
    %c55_i32 = arith.constant 55 : i32
    %c56_i32 = arith.constant 56 : i32
    %c57_i32 = arith.constant 57 : i32
    %c58_i32 = arith.constant 58 : i32
    %c59_i32 = arith.constant 59 : i32
    %c60_i32 = arith.constant 60 : i32
    %c61_i32 = arith.constant 61 : i32
    %c62_i32 = arith.constant 62 : i32
    %c63_i32 = arith.constant 63 : i32
    %c64_i32 = arith.constant 64 : i32
    %c65_i32 = arith.constant 65 : i32
    %c66_i32 = arith.constant 66 : i32
    %c67_i32 = arith.constant 67 : i32
    %c68_i32 = arith.constant 68 : i32
    %c69_i32 = arith.constant 69 : i32
    %c70_i32 = arith.constant 70 : i32
    %c71_i32 = arith.constant 71 : i32
    %c72_i32 = arith.constant 72 : i32
    %c73_i32 = arith.constant 73 : i32
    %c74_i32 = arith.constant 74 : i32
    %c75_i32 = arith.constant 75 : i32
    %c76_i32 = arith.constant 76 : i32
    %c77_i32 = arith.constant 77 : i32
    %c78_i32 = arith.constant 78 : i32
    %c79_i32 = arith.constant 79 : i32
    %c80_i32 = arith.constant 80 : i32
    %c81_i32 = arith.constant 81 : i32
    %c82_i32 = arith.constant 82 : i32
    %c83_i32 = arith.constant 83 : i32
    %c84_i32 = arith.constant 84 : i32
    %c85_i32 = arith.constant 85 : i32
    %c86_i32 = arith.constant 86 : i32
    %c87_i32 = arith.constant 87 : i32
    %c88_i32 = arith.constant 88 : i32
    %c89_i32 = arith.constant 89 : i32
    %c90_i32 = arith.constant 90 : i32
    %c91_i32 = arith.constant 91 : i32
    %c92_i32 = arith.constant 92 : i32
    %c93_i32 = arith.constant 93 : i32
    %c94_i32 = arith.constant 94 : i32
    %c95_i32 = arith.constant 95 : i32
    %c96_i32 = arith.constant 96 : i32
    %c97_i32 = arith.constant 97 : i32
    %c98_i32 = arith.constant 98 : i32
    %c99_i32 = arith.constant 99 : i32
    %c100_i32 = arith.constant 100 : i32
    %c101_i32 = arith.constant 101 : i32
    %c102_i32 = arith.constant 102 : i32
    %c103_i32 = arith.constant 103 : i32
    %c104_i32 = arith.constant 104 : i32
    %c105_i32 = arith.constant 105 : i32
    %c106_i32 = arith.constant 106 : i32
    %c107_i32 = arith.constant 107 : i32
    %c108_i32 = arith.constant 108 : i32
    %c109_i32 = arith.constant 109 : i32
    %c110_i32 = arith.constant 110 : i32
    %c111_i32 = arith.constant 111 : i32
    %c112_i32 = arith.constant 112 : i32
    %c113_i32 = arith.constant 113 : i32
    %c114_i32 = arith.constant 114 : i32
    %c115_i32 = arith.constant 115 : i32
    %c116_i32 = arith.constant 116 : i32
    %c117_i32 = arith.constant 117 : i32
    %c118_i32 = arith.constant 118 : i32
    %c119_i32 = arith.constant 119 : i32
    %c120_i32 = arith.constant 120 : i32
    %c121_i32 = arith.constant 121 : i32
    %c122_i32 = arith.constant 122 : i32
    %c123_i32 = arith.constant 123 : i32
    %c124_i32 = arith.constant 124 : i32
    %c125_i32 = arith.constant 125 : i32
    %c126_i32 = arith.constant 126 : i32
    %c127_i32 = arith.constant 127 : i32
    %c128_i32 = arith.constant 128 : i32
    %c129_i32 = arith.constant 129 : i32
    %c130_i32 = arith.constant 130 : i32
    %c131_i32 = arith.constant 131 : i32
    %c132_i32 = arith.constant 132 : i32
    %c133_i32 = arith.constant 133 : i32
    %c134_i32 = arith.constant 134 : i32
    %c135_i32 = arith.constant 135 : i32
    %c136_i32 = arith.constant 136 : i32
    %c137_i32 = arith.constant 137 : i32
    %c138_i32 = arith.constant 138 : i32
    %c139_i32 = arith.constant 139 : i32
    %c140_i32 = arith.constant 140 : i32
    %c141_i32 = arith.constant 141 : i32
    %c142_i32 = arith.constant 142 : i32
    %c143_i32 = arith.constant 143 : i32
    %c144_i32 = arith.constant 144 : i32
    %c145_i32 = arith.constant 145 : i32
    %c146_i32 = arith.constant 146 : i32
    %c147_i32 = arith.constant 147 : i32
    %c148_i32 = arith.constant 148 : i32
    %c149_i32 = arith.constant 149 : i32
    %c150_i32 = arith.constant 150 : i32
    %c151_i32 = arith.constant 151 : i32
    %c152_i32 = arith.constant 152 : i32
    %c153_i32 = arith.constant 153 : i32
    %c154_i32 = arith.constant 154 : i32
    %c155_i32 = arith.constant 155 : i32
    %c156_i32 = arith.constant 156 : i32
    %c157_i32 = arith.constant 157 : i32
    %c158_i32 = arith.constant 158 : i32
    %c159_i32 = arith.constant 159 : i32
    %c160_i32 = arith.constant 160 : i32
    %c161_i32 = arith.constant 161 : i32
    %c162_i32 = arith.constant 162 : i32
    %c163_i32 = arith.constant 163 : i32
    %c164_i32 = arith.constant 164 : i32
    %c165_i32 = arith.constant 165 : i32
    %c166_i32 = arith.constant 166 : i32
    %c167_i32 = arith.constant 167 : i32
    %c168_i32 = arith.constant 168 : i32
    %c169_i32 = arith.constant 169 : i32
    %c170_i32 = arith.constant 170 : i32
    %c171_i32 = arith.constant 171 : i32
    %c172_i32 = arith.constant 172 : i32
    %c173_i32 = arith.constant 173 : i32
    %c174_i32 = arith.constant 174 : i32
    %c175_i32 = arith.constant 175 : i32
    %c176_i32 = arith.constant 176 : i32
    %c177_i32 = arith.constant 177 : i32
    %c178_i32 = arith.constant 178 : i32
    %c179_i32 = arith.constant 179 : i32
    %c180_i32 = arith.constant 180 : i32
    %c181_i32 = arith.constant 181 : i32
    %c182_i32 = arith.constant 182 : i32
    %c183_i32 = arith.constant 183 : i32
    %c184_i32 = arith.constant 184 : i32
    %c185_i32 = arith.constant 185 : i32
    %c186_i32 = arith.constant 186 : i32
    %c187_i32 = arith.constant 187 : i32
    %c188_i32 = arith.constant 188 : i32
    %c189_i32 = arith.constant 189 : i32
    %c190_i32 = arith.constant 190 : i32
    %c191_i32 = arith.constant 191 : i32
    %c192_i32 = arith.constant 192 : i32
    %c193_i32 = arith.constant 193 : i32
    %c194_i32 = arith.constant 194 : i32
    %c195_i32 = arith.constant 195 : i32
    %c196_i32 = arith.constant 196 : i32
    %c197_i32 = arith.constant 197 : i32
    %c198_i32 = arith.constant 198 : i32
    %c199_i32 = arith.constant 199 : i32
    %c200_i32 = arith.constant 200 : i32
    %c201_i32 = arith.constant 201 : i32
    %c202_i32 = arith.constant 202 : i32
    %c203_i32 = arith.constant 203 : i32
    %c204_i32 = arith.constant 204 : i32
    %c205_i32 = arith.constant 205 : i32
    %c206_i32 = arith.constant 206 : i32
    %c207_i32 = arith.constant 207 : i32
    %c208_i32 = arith.constant 208 : i32
    %c209_i32 = arith.constant 209 : i32
    %c210_i32 = arith.constant 210 : i32
    %c211_i32 = arith.constant 211 : i32
    %c212_i32 = arith.constant 212 : i32
    %c213_i32 = arith.constant 213 : i32
    %c214_i32 = arith.constant 214 : i32
    %c215_i32 = arith.constant 215 : i32
    %c216_i32 = arith.constant 216 : i32
    %c217_i32 = arith.constant 217 : i32
    %c218_i32 = arith.constant 218 : i32
    %c219_i32 = arith.constant 219 : i32
    %c220_i32 = arith.constant 220 : i32
    %c221_i32 = arith.constant 221 : i32
    %c222_i32 = arith.constant 222 : i32
    %c223_i32 = arith.constant 223 : i32
    %c224_i32 = arith.constant 224 : i32
    %c225_i32 = arith.constant 225 : i32
    %c226_i32 = arith.constant 226 : i32
    %c227_i32 = arith.constant 227 : i32
    %c228_i32 = arith.constant 228 : i32
    %c229_i32 = arith.constant 229 : i32
    %c230_i32 = arith.constant 230 : i32
    %c231_i32 = arith.constant 231 : i32
    %c232_i32 = arith.constant 232 : i32
    %c233_i32 = arith.constant 233 : i32
    %c234_i32 = arith.constant 234 : i32
    %c235_i32 = arith.constant 235 : i32
    %c236_i32 = arith.constant 236 : i32
    %c237_i32 = arith.constant 237 : i32
    %c238_i32 = arith.constant 238 : i32
    %c239_i32 = arith.constant 239 : i32
    %c240_i32 = arith.constant 240 : i32
    %c241_i32 = arith.constant 241 : i32
    %c242_i32 = arith.constant 242 : i32
    %c243_i32 = arith.constant 243 : i32
    %c244_i32 = arith.constant 244 : i32
    %c245_i32 = arith.constant 245 : i32
    %c246_i32 = arith.constant 246 : i32
    %c247_i32 = arith.constant 247 : i32
    %c248_i32 = arith.constant 248 : i32
    %c249_i32 = arith.constant 249 : i32
    %c250_i32 = arith.constant 250 : i32
    %c251_i32 = arith.constant 251 : i32
    %c252_i32 = arith.constant 252 : i32
    %c253_i32 = arith.constant 253 : i32
    %c254_i32 = arith.constant 254 : i32
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c257_i32 = arith.constant 257 : i32
    %c258_i32 = arith.constant 258 : i32
    %c259_i32 = arith.constant 259 : i32
    %c260_i32 = arith.constant 260 : i32
    %c261_i32 = arith.constant 261 : i32
    %c262_i32 = arith.constant 262 : i32
    %c263_i32 = arith.constant 263 : i32
    %c264_i32 = arith.constant 264 : i32
    %c265_i32 = arith.constant 265 : i32
    %c266_i32 = arith.constant 266 : i32
    %c267_i32 = arith.constant 267 : i32
    %c268_i32 = arith.constant 268 : i32
    %c269_i32 = arith.constant 269 : i32
    %c270_i32 = arith.constant 270 : i32
    %c271_i32 = arith.constant 271 : i32
    %c272_i32 = arith.constant 272 : i32
    %c273_i32 = arith.constant 273 : i32
    %c274_i32 = arith.constant 274 : i32
    %c275_i32 = arith.constant 275 : i32
    %c276_i32 = arith.constant 276 : i32
    %c277_i32 = arith.constant 277 : i32
    %c278_i32 = arith.constant 278 : i32
    %c279_i32 = arith.constant 279 : i32
    %c280_i32 = arith.constant 280 : i32
    %c281_i32 = arith.constant 281 : i32
    %c282_i32 = arith.constant 282 : i32
    %c283_i32 = arith.constant 283 : i32
    %c284_i32 = arith.constant 284 : i32
    %c285_i32 = arith.constant 285 : i32
    %c286_i32 = arith.constant 286 : i32
    %c287_i32 = arith.constant 287 : i32
    %c288_i32 = arith.constant 288 : i32
    %c289_i32 = arith.constant 289 : i32
    %c290_i32 = arith.constant 290 : i32
    %c291_i32 = arith.constant 291 : i32
    %c292_i32 = arith.constant 292 : i32
    %c293_i32 = arith.constant 293 : i32
    %c294_i32 = arith.constant 294 : i32
    %c295_i32 = arith.constant 295 : i32
    %c296_i32 = arith.constant 296 : i32
    %c297_i32 = arith.constant 297 : i32
    %c298_i32 = arith.constant 298 : i32
    %c299_i32 = arith.constant 299 : i32
    %c300_i32 = arith.constant 300 : i32
    %c301_i32 = arith.constant 301 : i32
    %c302_i32 = arith.constant 302 : i32
    %c303_i32 = arith.constant 303 : i32
    %from_elements = tensor.from_elements %c0_i32, %c1_i32, %c2_i32, %c3_i32, %c4_i32, %c5_i32, %c6_i32, %c7_i32, %c8_i32, %c9_i32, %c10_i32, %c11_i32, %c12_i32, %c13_i32, %c14_i32, %c15_i32, %c16_i32, %c17_i32, %c18_i32, %c19_i32, %c20_i32, %c21_i32, %c22_i32, %c23_i32, %c24_i32, %c25_i32, %c26_i32, %c27_i32, %c28_i32, %c29_i32, %c30_i32, %c31_i32, %c32_i32, %c33_i32, %c34_i32, %c35_i32, %c36_i32, %c37_i32, %c38_i32, %c39_i32, %c40_i32, %c41_i32, %c42_i32, %c43_i32, %c44_i32, %c45_i32, %c46_i32, %c47_i32, %c48_i32, %c49_i32, %c50_i32, %c51_i32, %c52_i32, %c53_i32, %c54_i32, %c55_i32, %c56_i32, %c57_i32, %c58_i32, %c59_i32, %c60_i32, %c61_i32, %c62_i32, %c63_i32, %c64_i32, %c65_i32, %c66_i32, %c67_i32, %c68_i32, %c69_i32, %c70_i32, %c71_i32, %c72_i32, %c73_i32, %c74_i32, %c75_i32, %c76_i32, %c77_i32, %c78_i32, %c79_i32, %c80_i32, %c81_i32, %c82_i32, %c83_i32, %c84_i32, %c85_i32, %c86_i32, %c87_i32, %c88_i32, %c89_i32, %c90_i32, %c91_i32, %c92_i32, %c93_i32, %c94_i32, %c95_i32, %c96_i32, %c97_i32, %c98_i32, %c99_i32, %c100_i32, %c101_i32, %c102_i32, %c103_i32, %c104_i32, %c105_i32, %c106_i32, %c107_i32, %c108_i32, %c109_i32, %c110_i32, %c111_i32, %c112_i32, %c113_i32, %c114_i32, %c115_i32, %c116_i32, %c117_i32, %c118_i32, %c119_i32, %c120_i32, %c121_i32, %c122_i32, %c123_i32, %c124_i32, %c125_i32, %c126_i32, %c127_i32, %c128_i32, %c129_i32, %c130_i32, %c131_i32, %c132_i32, %c133_i32, %c134_i32, %c135_i32, %c136_i32, %c137_i32, %c138_i32, %c139_i32, %c140_i32, %c141_i32, %c142_i32, %c143_i32, %c144_i32, %c145_i32, %c146_i32, %c147_i32, %c148_i32, %c149_i32, %c150_i32, %c151_i32, %c152_i32, %c153_i32, %c154_i32, %c155_i32, %c156_i32, %c157_i32, %c158_i32, %c159_i32, %c160_i32, %c161_i32, %c162_i32, %c163_i32, %c164_i32, %c165_i32, %c166_i32, %c167_i32, %c168_i32, %c169_i32, %c170_i32, %c171_i32, %c172_i32, %c173_i32, %c174_i32, %c175_i32, %c176_i32, %c177_i32, %c178_i32, %c179_i32, %c180_i32, %c181_i32, %c182_i32, %c183_i32, %c184_i32, %c185_i32, %c186_i32, %c187_i32, %c188_i32, %c189_i32, %c190_i32, %c191_i32, %c192_i32, %c193_i32, %c194_i32, %c195_i32, %c196_i32, %c197_i32, %c198_i32, %c199_i32, %c200_i32, %c201_i32, %c202_i32, %c203_i32, %c204_i32, %c205_i32, %c206_i32, %c207_i32, %c208_i32, %c209_i32, %c210_i32, %c211_i32, %c212_i32, %c213_i32, %c214_i32, %c215_i32, %c216_i32, %c217_i32, %c218_i32, %c219_i32, %c220_i32, %c221_i32, %c222_i32, %c223_i32, %c224_i32, %c225_i32, %c226_i32, %c227_i32, %c228_i32, %c229_i32, %c230_i32, %c231_i32, %c232_i32, %c233_i32, %c234_i32, %c235_i32, %c236_i32, %c237_i32, %c238_i32, %c239_i32, %c240_i32, %c241_i32, %c242_i32, %c243_i32, %c244_i32, %c245_i32, %c246_i32, %c247_i32, %c248_i32, %c249_i32, %c250_i32, %c251_i32, %c252_i32, %c253_i32, %c254_i32, %c255_i32, %c256_i32, %c257_i32, %c258_i32, %c259_i32, %c260_i32, %c261_i32, %c262_i32, %c263_i32, %c264_i32, %c265_i32, %c266_i32, %c267_i32, %c268_i32, %c269_i32, %c270_i32, %c271_i32, %c272_i32, %c273_i32, %c274_i32, %c275_i32, %c276_i32, %c277_i32, %c278_i32, %c279_i32, %c280_i32, %c281_i32, %c282_i32, %c283_i32, %c284_i32, %c285_i32, %c286_i32, %c287_i32, %c288_i32, %c289_i32, %c290_i32, %c291_i32, %c292_i32, %c293_i32, %c294_i32, %c295_i32, %c296_i32, %c297_i32, %c298_i32, %c299_i32, %c300_i32, %c301_i32, %c302_i32, %c303_i32 : tensor<304xi32>
    %0 = tensor.empty() : tensor<304x2xi32>
    %c0 = arith.constant 0 : index
    %c304 = arith.constant 304 : index
    %c1 = arith.constant 1 : index
    %1 = scf.for %arg1 = %c0 to %c304 step %c1 iter_args(%arg2 = %0) -> (tensor<304x2xi32>) {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      %extracted = tensor.extract %from_elements[%arg1] : tensor<304xi32>
      %2 = func.call @"make-idx/304"(%arg0, %extracted) : (i32, i32) -> tensor<2xi32>
      %c1_3 = arith.constant 1 : index
      %c304_4 = arith.constant 304 : index
      %c2 = arith.constant 2 : index
      %inserted_slice = tensor.insert_slice %2 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<2xi32> into tensor<304x2xi32>
      scf.yield %inserted_slice : tensor<304x2xi32>
    }
    return %0 : tensor<304x2xi32>
  }
  func.func @"idxs-of/304-304"() -> tensor<304x304x2xi32> {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c3_i32 = arith.constant 3 : i32
    %c4_i32 = arith.constant 4 : i32
    %c5_i32 = arith.constant 5 : i32
    %c6_i32 = arith.constant 6 : i32
    %c7_i32 = arith.constant 7 : i32
    %c8_i32 = arith.constant 8 : i32
    %c9_i32 = arith.constant 9 : i32
    %c10_i32 = arith.constant 10 : i32
    %c11_i32 = arith.constant 11 : i32
    %c12_i32 = arith.constant 12 : i32
    %c13_i32 = arith.constant 13 : i32
    %c14_i32 = arith.constant 14 : i32
    %c15_i32 = arith.constant 15 : i32
    %c16_i32 = arith.constant 16 : i32
    %c17_i32 = arith.constant 17 : i32
    %c18_i32 = arith.constant 18 : i32
    %c19_i32 = arith.constant 19 : i32
    %c20_i32 = arith.constant 20 : i32
    %c21_i32 = arith.constant 21 : i32
    %c22_i32 = arith.constant 22 : i32
    %c23_i32 = arith.constant 23 : i32
    %c24_i32 = arith.constant 24 : i32
    %c25_i32 = arith.constant 25 : i32
    %c26_i32 = arith.constant 26 : i32
    %c27_i32 = arith.constant 27 : i32
    %c28_i32 = arith.constant 28 : i32
    %c29_i32 = arith.constant 29 : i32
    %c30_i32 = arith.constant 30 : i32
    %c31_i32 = arith.constant 31 : i32
    %c32_i32 = arith.constant 32 : i32
    %c33_i32 = arith.constant 33 : i32
    %c34_i32 = arith.constant 34 : i32
    %c35_i32 = arith.constant 35 : i32
    %c36_i32 = arith.constant 36 : i32
    %c37_i32 = arith.constant 37 : i32
    %c38_i32 = arith.constant 38 : i32
    %c39_i32 = arith.constant 39 : i32
    %c40_i32 = arith.constant 40 : i32
    %c41_i32 = arith.constant 41 : i32
    %c42_i32 = arith.constant 42 : i32
    %c43_i32 = arith.constant 43 : i32
    %c44_i32 = arith.constant 44 : i32
    %c45_i32 = arith.constant 45 : i32
    %c46_i32 = arith.constant 46 : i32
    %c47_i32 = arith.constant 47 : i32
    %c48_i32 = arith.constant 48 : i32
    %c49_i32 = arith.constant 49 : i32
    %c50_i32 = arith.constant 50 : i32
    %c51_i32 = arith.constant 51 : i32
    %c52_i32 = arith.constant 52 : i32
    %c53_i32 = arith.constant 53 : i32
    %c54_i32 = arith.constant 54 : i32
    %c55_i32 = arith.constant 55 : i32
    %c56_i32 = arith.constant 56 : i32
    %c57_i32 = arith.constant 57 : i32
    %c58_i32 = arith.constant 58 : i32
    %c59_i32 = arith.constant 59 : i32
    %c60_i32 = arith.constant 60 : i32
    %c61_i32 = arith.constant 61 : i32
    %c62_i32 = arith.constant 62 : i32
    %c63_i32 = arith.constant 63 : i32
    %c64_i32 = arith.constant 64 : i32
    %c65_i32 = arith.constant 65 : i32
    %c66_i32 = arith.constant 66 : i32
    %c67_i32 = arith.constant 67 : i32
    %c68_i32 = arith.constant 68 : i32
    %c69_i32 = arith.constant 69 : i32
    %c70_i32 = arith.constant 70 : i32
    %c71_i32 = arith.constant 71 : i32
    %c72_i32 = arith.constant 72 : i32
    %c73_i32 = arith.constant 73 : i32
    %c74_i32 = arith.constant 74 : i32
    %c75_i32 = arith.constant 75 : i32
    %c76_i32 = arith.constant 76 : i32
    %c77_i32 = arith.constant 77 : i32
    %c78_i32 = arith.constant 78 : i32
    %c79_i32 = arith.constant 79 : i32
    %c80_i32 = arith.constant 80 : i32
    %c81_i32 = arith.constant 81 : i32
    %c82_i32 = arith.constant 82 : i32
    %c83_i32 = arith.constant 83 : i32
    %c84_i32 = arith.constant 84 : i32
    %c85_i32 = arith.constant 85 : i32
    %c86_i32 = arith.constant 86 : i32
    %c87_i32 = arith.constant 87 : i32
    %c88_i32 = arith.constant 88 : i32
    %c89_i32 = arith.constant 89 : i32
    %c90_i32 = arith.constant 90 : i32
    %c91_i32 = arith.constant 91 : i32
    %c92_i32 = arith.constant 92 : i32
    %c93_i32 = arith.constant 93 : i32
    %c94_i32 = arith.constant 94 : i32
    %c95_i32 = arith.constant 95 : i32
    %c96_i32 = arith.constant 96 : i32
    %c97_i32 = arith.constant 97 : i32
    %c98_i32 = arith.constant 98 : i32
    %c99_i32 = arith.constant 99 : i32
    %c100_i32 = arith.constant 100 : i32
    %c101_i32 = arith.constant 101 : i32
    %c102_i32 = arith.constant 102 : i32
    %c103_i32 = arith.constant 103 : i32
    %c104_i32 = arith.constant 104 : i32
    %c105_i32 = arith.constant 105 : i32
    %c106_i32 = arith.constant 106 : i32
    %c107_i32 = arith.constant 107 : i32
    %c108_i32 = arith.constant 108 : i32
    %c109_i32 = arith.constant 109 : i32
    %c110_i32 = arith.constant 110 : i32
    %c111_i32 = arith.constant 111 : i32
    %c112_i32 = arith.constant 112 : i32
    %c113_i32 = arith.constant 113 : i32
    %c114_i32 = arith.constant 114 : i32
    %c115_i32 = arith.constant 115 : i32
    %c116_i32 = arith.constant 116 : i32
    %c117_i32 = arith.constant 117 : i32
    %c118_i32 = arith.constant 118 : i32
    %c119_i32 = arith.constant 119 : i32
    %c120_i32 = arith.constant 120 : i32
    %c121_i32 = arith.constant 121 : i32
    %c122_i32 = arith.constant 122 : i32
    %c123_i32 = arith.constant 123 : i32
    %c124_i32 = arith.constant 124 : i32
    %c125_i32 = arith.constant 125 : i32
    %c126_i32 = arith.constant 126 : i32
    %c127_i32 = arith.constant 127 : i32
    %c128_i32 = arith.constant 128 : i32
    %c129_i32 = arith.constant 129 : i32
    %c130_i32 = arith.constant 130 : i32
    %c131_i32 = arith.constant 131 : i32
    %c132_i32 = arith.constant 132 : i32
    %c133_i32 = arith.constant 133 : i32
    %c134_i32 = arith.constant 134 : i32
    %c135_i32 = arith.constant 135 : i32
    %c136_i32 = arith.constant 136 : i32
    %c137_i32 = arith.constant 137 : i32
    %c138_i32 = arith.constant 138 : i32
    %c139_i32 = arith.constant 139 : i32
    %c140_i32 = arith.constant 140 : i32
    %c141_i32 = arith.constant 141 : i32
    %c142_i32 = arith.constant 142 : i32
    %c143_i32 = arith.constant 143 : i32
    %c144_i32 = arith.constant 144 : i32
    %c145_i32 = arith.constant 145 : i32
    %c146_i32 = arith.constant 146 : i32
    %c147_i32 = arith.constant 147 : i32
    %c148_i32 = arith.constant 148 : i32
    %c149_i32 = arith.constant 149 : i32
    %c150_i32 = arith.constant 150 : i32
    %c151_i32 = arith.constant 151 : i32
    %c152_i32 = arith.constant 152 : i32
    %c153_i32 = arith.constant 153 : i32
    %c154_i32 = arith.constant 154 : i32
    %c155_i32 = arith.constant 155 : i32
    %c156_i32 = arith.constant 156 : i32
    %c157_i32 = arith.constant 157 : i32
    %c158_i32 = arith.constant 158 : i32
    %c159_i32 = arith.constant 159 : i32
    %c160_i32 = arith.constant 160 : i32
    %c161_i32 = arith.constant 161 : i32
    %c162_i32 = arith.constant 162 : i32
    %c163_i32 = arith.constant 163 : i32
    %c164_i32 = arith.constant 164 : i32
    %c165_i32 = arith.constant 165 : i32
    %c166_i32 = arith.constant 166 : i32
    %c167_i32 = arith.constant 167 : i32
    %c168_i32 = arith.constant 168 : i32
    %c169_i32 = arith.constant 169 : i32
    %c170_i32 = arith.constant 170 : i32
    %c171_i32 = arith.constant 171 : i32
    %c172_i32 = arith.constant 172 : i32
    %c173_i32 = arith.constant 173 : i32
    %c174_i32 = arith.constant 174 : i32
    %c175_i32 = arith.constant 175 : i32
    %c176_i32 = arith.constant 176 : i32
    %c177_i32 = arith.constant 177 : i32
    %c178_i32 = arith.constant 178 : i32
    %c179_i32 = arith.constant 179 : i32
    %c180_i32 = arith.constant 180 : i32
    %c181_i32 = arith.constant 181 : i32
    %c182_i32 = arith.constant 182 : i32
    %c183_i32 = arith.constant 183 : i32
    %c184_i32 = arith.constant 184 : i32
    %c185_i32 = arith.constant 185 : i32
    %c186_i32 = arith.constant 186 : i32
    %c187_i32 = arith.constant 187 : i32
    %c188_i32 = arith.constant 188 : i32
    %c189_i32 = arith.constant 189 : i32
    %c190_i32 = arith.constant 190 : i32
    %c191_i32 = arith.constant 191 : i32
    %c192_i32 = arith.constant 192 : i32
    %c193_i32 = arith.constant 193 : i32
    %c194_i32 = arith.constant 194 : i32
    %c195_i32 = arith.constant 195 : i32
    %c196_i32 = arith.constant 196 : i32
    %c197_i32 = arith.constant 197 : i32
    %c198_i32 = arith.constant 198 : i32
    %c199_i32 = arith.constant 199 : i32
    %c200_i32 = arith.constant 200 : i32
    %c201_i32 = arith.constant 201 : i32
    %c202_i32 = arith.constant 202 : i32
    %c203_i32 = arith.constant 203 : i32
    %c204_i32 = arith.constant 204 : i32
    %c205_i32 = arith.constant 205 : i32
    %c206_i32 = arith.constant 206 : i32
    %c207_i32 = arith.constant 207 : i32
    %c208_i32 = arith.constant 208 : i32
    %c209_i32 = arith.constant 209 : i32
    %c210_i32 = arith.constant 210 : i32
    %c211_i32 = arith.constant 211 : i32
    %c212_i32 = arith.constant 212 : i32
    %c213_i32 = arith.constant 213 : i32
    %c214_i32 = arith.constant 214 : i32
    %c215_i32 = arith.constant 215 : i32
    %c216_i32 = arith.constant 216 : i32
    %c217_i32 = arith.constant 217 : i32
    %c218_i32 = arith.constant 218 : i32
    %c219_i32 = arith.constant 219 : i32
    %c220_i32 = arith.constant 220 : i32
    %c221_i32 = arith.constant 221 : i32
    %c222_i32 = arith.constant 222 : i32
    %c223_i32 = arith.constant 223 : i32
    %c224_i32 = arith.constant 224 : i32
    %c225_i32 = arith.constant 225 : i32
    %c226_i32 = arith.constant 226 : i32
    %c227_i32 = arith.constant 227 : i32
    %c228_i32 = arith.constant 228 : i32
    %c229_i32 = arith.constant 229 : i32
    %c230_i32 = arith.constant 230 : i32
    %c231_i32 = arith.constant 231 : i32
    %c232_i32 = arith.constant 232 : i32
    %c233_i32 = arith.constant 233 : i32
    %c234_i32 = arith.constant 234 : i32
    %c235_i32 = arith.constant 235 : i32
    %c236_i32 = arith.constant 236 : i32
    %c237_i32 = arith.constant 237 : i32
    %c238_i32 = arith.constant 238 : i32
    %c239_i32 = arith.constant 239 : i32
    %c240_i32 = arith.constant 240 : i32
    %c241_i32 = arith.constant 241 : i32
    %c242_i32 = arith.constant 242 : i32
    %c243_i32 = arith.constant 243 : i32
    %c244_i32 = arith.constant 244 : i32
    %c245_i32 = arith.constant 245 : i32
    %c246_i32 = arith.constant 246 : i32
    %c247_i32 = arith.constant 247 : i32
    %c248_i32 = arith.constant 248 : i32
    %c249_i32 = arith.constant 249 : i32
    %c250_i32 = arith.constant 250 : i32
    %c251_i32 = arith.constant 251 : i32
    %c252_i32 = arith.constant 252 : i32
    %c253_i32 = arith.constant 253 : i32
    %c254_i32 = arith.constant 254 : i32
    %c255_i32 = arith.constant 255 : i32
    %c256_i32 = arith.constant 256 : i32
    %c257_i32 = arith.constant 257 : i32
    %c258_i32 = arith.constant 258 : i32
    %c259_i32 = arith.constant 259 : i32
    %c260_i32 = arith.constant 260 : i32
    %c261_i32 = arith.constant 261 : i32
    %c262_i32 = arith.constant 262 : i32
    %c263_i32 = arith.constant 263 : i32
    %c264_i32 = arith.constant 264 : i32
    %c265_i32 = arith.constant 265 : i32
    %c266_i32 = arith.constant 266 : i32
    %c267_i32 = arith.constant 267 : i32
    %c268_i32 = arith.constant 268 : i32
    %c269_i32 = arith.constant 269 : i32
    %c270_i32 = arith.constant 270 : i32
    %c271_i32 = arith.constant 271 : i32
    %c272_i32 = arith.constant 272 : i32
    %c273_i32 = arith.constant 273 : i32
    %c274_i32 = arith.constant 274 : i32
    %c275_i32 = arith.constant 275 : i32
    %c276_i32 = arith.constant 276 : i32
    %c277_i32 = arith.constant 277 : i32
    %c278_i32 = arith.constant 278 : i32
    %c279_i32 = arith.constant 279 : i32
    %c280_i32 = arith.constant 280 : i32
    %c281_i32 = arith.constant 281 : i32
    %c282_i32 = arith.constant 282 : i32
    %c283_i32 = arith.constant 283 : i32
    %c284_i32 = arith.constant 284 : i32
    %c285_i32 = arith.constant 285 : i32
    %c286_i32 = arith.constant 286 : i32
    %c287_i32 = arith.constant 287 : i32
    %c288_i32 = arith.constant 288 : i32
    %c289_i32 = arith.constant 289 : i32
    %c290_i32 = arith.constant 290 : i32
    %c291_i32 = arith.constant 291 : i32
    %c292_i32 = arith.constant 292 : i32
    %c293_i32 = arith.constant 293 : i32
    %c294_i32 = arith.constant 294 : i32
    %c295_i32 = arith.constant 295 : i32
    %c296_i32 = arith.constant 296 : i32
    %c297_i32 = arith.constant 297 : i32
    %c298_i32 = arith.constant 298 : i32
    %c299_i32 = arith.constant 299 : i32
    %c300_i32 = arith.constant 300 : i32
    %c301_i32 = arith.constant 301 : i32
    %c302_i32 = arith.constant 302 : i32
    %c303_i32 = arith.constant 303 : i32
    %from_elements = tensor.from_elements %c0_i32, %c1_i32, %c2_i32, %c3_i32, %c4_i32, %c5_i32, %c6_i32, %c7_i32, %c8_i32, %c9_i32, %c10_i32, %c11_i32, %c12_i32, %c13_i32, %c14_i32, %c15_i32, %c16_i32, %c17_i32, %c18_i32, %c19_i32, %c20_i32, %c21_i32, %c22_i32, %c23_i32, %c24_i32, %c25_i32, %c26_i32, %c27_i32, %c28_i32, %c29_i32, %c30_i32, %c31_i32, %c32_i32, %c33_i32, %c34_i32, %c35_i32, %c36_i32, %c37_i32, %c38_i32, %c39_i32, %c40_i32, %c41_i32, %c42_i32, %c43_i32, %c44_i32, %c45_i32, %c46_i32, %c47_i32, %c48_i32, %c49_i32, %c50_i32, %c51_i32, %c52_i32, %c53_i32, %c54_i32, %c55_i32, %c56_i32, %c57_i32, %c58_i32, %c59_i32, %c60_i32, %c61_i32, %c62_i32, %c63_i32, %c64_i32, %c65_i32, %c66_i32, %c67_i32, %c68_i32, %c69_i32, %c70_i32, %c71_i32, %c72_i32, %c73_i32, %c74_i32, %c75_i32, %c76_i32, %c77_i32, %c78_i32, %c79_i32, %c80_i32, %c81_i32, %c82_i32, %c83_i32, %c84_i32, %c85_i32, %c86_i32, %c87_i32, %c88_i32, %c89_i32, %c90_i32, %c91_i32, %c92_i32, %c93_i32, %c94_i32, %c95_i32, %c96_i32, %c97_i32, %c98_i32, %c99_i32, %c100_i32, %c101_i32, %c102_i32, %c103_i32, %c104_i32, %c105_i32, %c106_i32, %c107_i32, %c108_i32, %c109_i32, %c110_i32, %c111_i32, %c112_i32, %c113_i32, %c114_i32, %c115_i32, %c116_i32, %c117_i32, %c118_i32, %c119_i32, %c120_i32, %c121_i32, %c122_i32, %c123_i32, %c124_i32, %c125_i32, %c126_i32, %c127_i32, %c128_i32, %c129_i32, %c130_i32, %c131_i32, %c132_i32, %c133_i32, %c134_i32, %c135_i32, %c136_i32, %c137_i32, %c138_i32, %c139_i32, %c140_i32, %c141_i32, %c142_i32, %c143_i32, %c144_i32, %c145_i32, %c146_i32, %c147_i32, %c148_i32, %c149_i32, %c150_i32, %c151_i32, %c152_i32, %c153_i32, %c154_i32, %c155_i32, %c156_i32, %c157_i32, %c158_i32, %c159_i32, %c160_i32, %c161_i32, %c162_i32, %c163_i32, %c164_i32, %c165_i32, %c166_i32, %c167_i32, %c168_i32, %c169_i32, %c170_i32, %c171_i32, %c172_i32, %c173_i32, %c174_i32, %c175_i32, %c176_i32, %c177_i32, %c178_i32, %c179_i32, %c180_i32, %c181_i32, %c182_i32, %c183_i32, %c184_i32, %c185_i32, %c186_i32, %c187_i32, %c188_i32, %c189_i32, %c190_i32, %c191_i32, %c192_i32, %c193_i32, %c194_i32, %c195_i32, %c196_i32, %c197_i32, %c198_i32, %c199_i32, %c200_i32, %c201_i32, %c202_i32, %c203_i32, %c204_i32, %c205_i32, %c206_i32, %c207_i32, %c208_i32, %c209_i32, %c210_i32, %c211_i32, %c212_i32, %c213_i32, %c214_i32, %c215_i32, %c216_i32, %c217_i32, %c218_i32, %c219_i32, %c220_i32, %c221_i32, %c222_i32, %c223_i32, %c224_i32, %c225_i32, %c226_i32, %c227_i32, %c228_i32, %c229_i32, %c230_i32, %c231_i32, %c232_i32, %c233_i32, %c234_i32, %c235_i32, %c236_i32, %c237_i32, %c238_i32, %c239_i32, %c240_i32, %c241_i32, %c242_i32, %c243_i32, %c244_i32, %c245_i32, %c246_i32, %c247_i32, %c248_i32, %c249_i32, %c250_i32, %c251_i32, %c252_i32, %c253_i32, %c254_i32, %c255_i32, %c256_i32, %c257_i32, %c258_i32, %c259_i32, %c260_i32, %c261_i32, %c262_i32, %c263_i32, %c264_i32, %c265_i32, %c266_i32, %c267_i32, %c268_i32, %c269_i32, %c270_i32, %c271_i32, %c272_i32, %c273_i32, %c274_i32, %c275_i32, %c276_i32, %c277_i32, %c278_i32, %c279_i32, %c280_i32, %c281_i32, %c282_i32, %c283_i32, %c284_i32, %c285_i32, %c286_i32, %c287_i32, %c288_i32, %c289_i32, %c290_i32, %c291_i32, %c292_i32, %c293_i32, %c294_i32, %c295_i32, %c296_i32, %c297_i32, %c298_i32, %c299_i32, %c300_i32, %c301_i32, %c302_i32, %c303_i32 : tensor<304xi32>
    %0 = tensor.empty() : tensor<304x304x2xi32>
    %c0 = arith.constant 0 : index
    %c304 = arith.constant 304 : index
    %c1 = arith.constant 1 : index
    %1 = scf.for %arg0 = %c0 to %c304 step %c1 iter_args(%arg1 = %0) -> (tensor<304x304x2xi32>) {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      %extracted = tensor.extract %from_elements[%arg0] : tensor<304xi32>
      %2 = func.call @"idx-row/304"(%extracted) : (i32) -> tensor<304x2xi32>
      %c1_3 = arith.constant 1 : index
      %c304_4 = arith.constant 304 : index
      %c304_5 = arith.constant 304 : index
      %c2 = arith.constant 2 : index
      %inserted_slice = tensor.insert_slice %2 into %arg1[%arg0, 0, 0] [1, 304, 2] [1, 1, 1] : tensor<304x2xi32> into tensor<304x304x2xi32>
      scf.yield %inserted_slice : tensor<304x304x2xi32>
    }
    return %0 : tensor<304x304x2xi32>
  }
  func.func @"make-idx/1"(%arg0: i32, %arg1: i32) -> tensor<2xi32> {
    %from_elements = tensor.from_elements %arg0, %arg1 : tensor<2xi32>
    return %from_elements : tensor<2xi32>
  }
  func.func @"idx-row/1"(%arg0: i32) -> tensor<1x2xi32> {
    %c0_i32 = arith.constant 0 : i32
    %from_elements = tensor.from_elements %c0_i32 : tensor<1xi32>
    %0 = tensor.empty() : tensor<1x2xi32>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    %1 = scf.for %arg1 = %c0 to %c1 step %c1_0 iter_args(%arg2 = %0) -> (tensor<1x2xi32>) {
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      %extracted = tensor.extract %from_elements[%arg1] : tensor<1xi32>
      %2 = func.call @"make-idx/1"(%arg0, %extracted) : (i32, i32) -> tensor<2xi32>
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      %inserted_slice = tensor.insert_slice %2 into %arg2[%arg1, 0] [1, 2] [1, 1] : tensor<2xi32> into tensor<1x2xi32>
      scf.yield %inserted_slice : tensor<1x2xi32>
    }
    return %0 : tensor<1x2xi32>
  }
  func.func @"idxs-of/1-1"() -> tensor<1x1x2xi32> {
    %c0_i32 = arith.constant 0 : i32
    %from_elements = tensor.from_elements %c0_i32 : tensor<1xi32>
    %0 = tensor.empty() : tensor<1x1x2xi32>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    %1 = scf.for %arg0 = %c0 to %c1 step %c1_0 iter_args(%arg1 = %0) -> (tensor<1x1x2xi32>) {
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      %extracted = tensor.extract %from_elements[%arg0] : tensor<1xi32>
      %2 = func.call @"idx-row/1"(%extracted) : (i32) -> tensor<1x2xi32>
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      %c1_6 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      %inserted_slice = tensor.insert_slice %2 into %arg1[%arg0, 0, 0] [1, 1, 2] [1, 1, 1] : tensor<1x2xi32> into tensor<1x1x2xi32>
      scf.yield %inserted_slice : tensor<1x1x2xi32>
    }
    return %0 : tensor<1x1x2xi32>
  }
  func.func @"subarray/f/0-304"(%arg0: tensor<304x304xf32>, %arg1: tensor<2xi32>) -> tensor<304x304xf32> {
    %0 = tensor.empty() : tensor<304x304x2xi32>
    %broadcasted = linalg.broadcast ins(%arg1 : tensor<2xi32>) outs(%0 : tensor<304x304x2xi32>) dimensions = [0, 1] 
    %1 = call @"idxs-of/304-304"() : () -> tensor<304x304x2xi32>
    %2 = tensor.empty() : tensor<304x304x2xi32>
    %c0 = arith.constant 0 : index
    %c304 = arith.constant 304 : index
    %c1 = arith.constant 1 : index
    %3 = scf.for %arg2 = %c0 to %c304 step %c1 iter_args(%arg3 = %2) -> (tensor<304x304x2xi32>) {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      %c304_6 = arith.constant 304 : index
      %c2 = arith.constant 2 : index
      %extracted_slice = tensor.extract_slice %broadcasted[%arg2, 0, 0] [1, 304, 2] [1, 1, 1] : tensor<304x304x2xi32> to tensor<1x304x2xi32>
      %collapsed = tensor.collapse_shape %extracted_slice [[0, 1], [2]] : tensor<1x304x2xi32> into tensor<304x2xi32>
      %c1_7 = arith.constant 1 : index
      %c304_8 = arith.constant 304 : index
      %c2_9 = arith.constant 2 : index
      %extracted_slice_10 = tensor.extract_slice %1[%arg2, 0, 0] [1, 304, 2] [1, 1, 1] : tensor<304x304x2xi32> to tensor<1x304x2xi32>
      %collapsed_11 = tensor.collapse_shape %extracted_slice_10 [[0, 1], [2]] : tensor<1x304x2xi32> into tensor<304x2xi32>
      %6 = tensor.empty() : tensor<304x2xi32>
      %c0_12 = arith.constant 0 : index
      %c304_13 = arith.constant 304 : index
      %c1_14 = arith.constant 1 : index
      %7 = scf.for %arg4 = %c0_12 to %c304_13 step %c1_14 iter_args(%arg5 = %6) -> (tensor<304x2xi32>) {
        %c0_19 = arith.constant 0 : index
        %c1_20 = arith.constant 1 : index
        %c1_21 = arith.constant 1 : index
        %c2_22 = arith.constant 2 : index
        %extracted_slice_23 = tensor.extract_slice %collapsed[%arg4, 0] [1, 2] [1, 1] : tensor<304x2xi32> to tensor<1x2xi32>
        %collapsed_24 = tensor.collapse_shape %extracted_slice_23 [[0, 1]] : tensor<1x2xi32> into tensor<2xi32>
        %c1_25 = arith.constant 1 : index
        %c2_26 = arith.constant 2 : index
        %extracted_slice_27 = tensor.extract_slice %collapsed_11[%arg4, 0] [1, 2] [1, 1] : tensor<304x2xi32> to tensor<1x2xi32>
        %collapsed_28 = tensor.collapse_shape %extracted_slice_27 [[0, 1]] : tensor<1x2xi32> into tensor<2xi32>
        %8 = tensor.empty() : tensor<2xi32>
        %c0_29 = arith.constant 0 : index
        %c2_30 = arith.constant 2 : index
        %c1_31 = arith.constant 1 : index
        %9 = scf.for %arg6 = %c0_29 to %c2_30 step %c1_31 iter_args(%arg7 = %8) -> (tensor<2xi32>) {
          %c0_36 = arith.constant 0 : index
          %c1_37 = arith.constant 1 : index
          %c1_38 = arith.constant 1 : index
          %extracted = tensor.extract %collapsed_24[%arg6] : tensor<2xi32>
          %c1_39 = arith.constant 1 : index
          %extracted_40 = tensor.extract %collapsed_28[%arg6] : tensor<2xi32>
          %10 = arith.addi %extracted, %extracted_40 : i32
          %c1_41 = arith.constant 1 : index
          %c2_42 = arith.constant 2 : index
          %inserted = tensor.insert %10 into %arg7[%arg6] : tensor<2xi32>
          scf.yield %inserted : tensor<2xi32>
        }
        %c1_32 = arith.constant 1 : index
        %c304_33 = arith.constant 304 : index
        %c2_34 = arith.constant 2 : index
        %inserted_slice_35 = tensor.insert_slice %8 into %arg5[%arg4, 0] [1, 2] [1, 1] : tensor<2xi32> into tensor<304x2xi32>
        scf.yield %inserted_slice_35 : tensor<304x2xi32>
      }
      %c1_15 = arith.constant 1 : index
      %c304_16 = arith.constant 304 : index
      %c304_17 = arith.constant 304 : index
      %c2_18 = arith.constant 2 : index
      %inserted_slice = tensor.insert_slice %6 into %arg3[%arg2, 0, 0] [1, 304, 2] [1, 1, 1] : tensor<304x2xi32> into tensor<304x304x2xi32>
      scf.yield %inserted_slice : tensor<304x304x2xi32>
    }
    %4 = tensor.empty() : tensor<304x304xf32>
    %c0_0 = arith.constant 0 : index
    %c304_1 = arith.constant 304 : index
    %c1_2 = arith.constant 1 : index
    %5 = scf.for %arg2 = %c0_0 to %c304_1 step %c1_2 iter_args(%arg3 = %4) -> (tensor<304x304xf32>) {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      %c304_6 = arith.constant 304 : index
      %c2 = arith.constant 2 : index
      %extracted_slice = tensor.extract_slice %2[%arg2, 0, 0] [1, 304, 2] [1, 1, 1] : tensor<304x304x2xi32> to tensor<1x304x2xi32>
      %collapsed = tensor.collapse_shape %extracted_slice [[0, 1], [2]] : tensor<1x304x2xi32> into tensor<304x2xi32>
      %6 = tensor.empty() : tensor<304xf32>
      %c0_7 = arith.constant 0 : index
      %c304_8 = arith.constant 304 : index
      %c1_9 = arith.constant 1 : index
      %7 = scf.for %arg4 = %c0_7 to %c304_8 step %c1_9 iter_args(%arg5 = %6) -> (tensor<304xf32>) {
        %c0_13 = arith.constant 0 : index
        %c1_14 = arith.constant 1 : index
        %c1_15 = arith.constant 1 : index
        %c2_16 = arith.constant 2 : index
        %extracted_slice_17 = tensor.extract_slice %collapsed[%arg4, 0] [1, 2] [1, 1] : tensor<304x2xi32> to tensor<1x2xi32>
        %collapsed_18 = tensor.collapse_shape %extracted_slice_17 [[0, 1]] : tensor<1x2xi32> into tensor<2xi32>
        %c0_i64 = arith.constant 0 : i64
        %8 = index.casts %c0_i64 : i64 to index
        %extracted = tensor.extract %collapsed_18[%8] : tensor<2xi32>
        %c1_i64 = arith.constant 1 : i64
        %9 = index.casts %c1_i64 : i64 to index
        %extracted_19 = tensor.extract %collapsed_18[%9] : tensor<2xi32>
        %10 = arith.extsi %extracted : i32 to i64
        %11 = arith.extsi %extracted_19 : i32 to i64
        %12 = index.casts %10 : i64 to index
        %13 = index.casts %11 : i64 to index
        %extracted_20 = tensor.extract %arg0[%12, %13] : tensor<304x304xf32>
        %c1_21 = arith.constant 1 : index
        %c304_22 = arith.constant 304 : index
        %inserted = tensor.insert %extracted_20 into %arg5[%arg4] : tensor<304xf32>
        scf.yield %inserted : tensor<304xf32>
      }
      %c1_10 = arith.constant 1 : index
      %c304_11 = arith.constant 304 : index
      %c304_12 = arith.constant 304 : index
      %inserted_slice = tensor.insert_slice %6 into %arg3[%arg2, 0] [1, 304] [1, 1] : tensor<304xf32> into tensor<304x304xf32>
      scf.yield %inserted_slice : tensor<304x304xf32>
    }
    return %4 : tensor<304x304xf32>
  }
  func.func @"lifted-subarray/f/1x1-0-304"(%arg0: tensor<304x304xf32>, %arg1: tensor<1x1x2xi32>) -> tensor<1x1x304x304xf32> {
    %0 = tensor.empty() : tensor<1x1x304x304xf32>
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_0 = arith.constant 1 : index
    %1 = scf.for %arg2 = %c0 to %c1 step %c1_0 iter_args(%arg3 = %0) -> (tensor<1x1x304x304xf32>) {
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      %c1_3 = arith.constant 1 : index
      %c1_4 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      %extracted_slice = tensor.extract_slice %arg1[%arg2, 0, 0] [1, 1, 2] [1, 1, 1] : tensor<1x1x2xi32> to tensor<1x1x2xi32>
      %collapsed = tensor.collapse_shape %extracted_slice [[0, 1], [2]] : tensor<1x1x2xi32> into tensor<1x2xi32>
      %2 = tensor.empty() : tensor<1x304x304xf32>
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      %c1_7 = arith.constant 1 : index
      %3 = scf.for %arg4 = %c0_5 to %c1_6 step %c1_7 iter_args(%arg5 = %2) -> (tensor<1x304x304xf32>) {
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        %c1_14 = arith.constant 1 : index
        %c2_15 = arith.constant 2 : index
        %extracted_slice_16 = tensor.extract_slice %collapsed[%arg4, 0] [1, 2] [1, 1] : tensor<1x2xi32> to tensor<1x2xi32>
        %collapsed_17 = tensor.collapse_shape %extracted_slice_16 [[0, 1]] : tensor<1x2xi32> into tensor<2xi32>
        %4 = func.call @"subarray/f/0-304"(%arg0, %collapsed_17) : (tensor<304x304xf32>, tensor<2xi32>) -> tensor<304x304xf32>
        %c1_18 = arith.constant 1 : index
        %c1_19 = arith.constant 1 : index
        %c304_20 = arith.constant 304 : index
        %c304_21 = arith.constant 304 : index
        %inserted_slice_22 = tensor.insert_slice %4 into %arg5[%arg4, 0, 0] [1, 304, 304] [1, 1, 1] : tensor<304x304xf32> into tensor<1x304x304xf32>
        scf.yield %inserted_slice_22 : tensor<1x304x304xf32>
      }
      %c1_8 = arith.constant 1 : index
      %c1_9 = arith.constant 1 : index
      %c1_10 = arith.constant 1 : index
      %c304 = arith.constant 304 : index
      %c304_11 = arith.constant 304 : index
      %inserted_slice = tensor.insert_slice %2 into %arg3[%arg2, 0, 0, 0] [1, 1, 304, 304] [1, 1, 1, 1] : tensor<1x304x304xf32> into tensor<1x1x304x304xf32>
      scf.yield %inserted_slice : tensor<1x1x304x304xf32>
    }
    return %0 : tensor<1x1x304x304xf32>
  }
  func.func @"im2col/304-1-0-128"(%arg0: tensor<128x304x304xf32>) -> tensor<128x92416xf32> {
    %0 = call @"idxs-of/1-1"() : () -> tensor<1x1x2xi32>
    %1 = tensor.empty() : tensor<128x1x1x2xi32>
    %broadcasted = linalg.broadcast ins(%0 : tensor<1x1x2xi32>) outs(%1 : tensor<128x1x1x2xi32>) dimensions = [0] 
    %2 = tensor.empty() : tensor<128x1x1x304x304xf32>
    %c0 = arith.constant 0 : index
    %c128 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    %3 = scf.for %arg1 = %c0 to %c128 step %c1 iter_args(%arg2 = %2) -> (tensor<128x1x1x304x304xf32>) {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      %c1_8 = arith.constant 1 : index
      %c304 = arith.constant 304 : index
      %c304_9 = arith.constant 304 : index
      %extracted_slice = tensor.extract_slice %arg0[%arg1, 0, 0] [1, 304, 304] [1, 1, 1] : tensor<128x304x304xf32> to tensor<1x304x304xf32>
      %collapsed_10 = tensor.collapse_shape %extracted_slice [[0, 1], [2]] : tensor<1x304x304xf32> into tensor<304x304xf32>
      %c1_11 = arith.constant 1 : index
      %c1_12 = arith.constant 1 : index
      %c1_13 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      %extracted_slice_14 = tensor.extract_slice %broadcasted[%arg1, 0, 0, 0] [1, 1, 1, 2] [1, 1, 1, 1] : tensor<128x1x1x2xi32> to tensor<1x1x1x2xi32>
      %collapsed_15 = tensor.collapse_shape %extracted_slice_14 [[0, 1], [2], [3]] : tensor<1x1x1x2xi32> into tensor<1x1x2xi32>
      %8 = func.call @"lifted-subarray/f/1x1-0-304"(%collapsed_10, %collapsed_15) : (tensor<304x304xf32>, tensor<1x1x2xi32>) -> tensor<1x1x304x304xf32>
      %c1_16 = arith.constant 1 : index
      %c128_17 = arith.constant 128 : index
      %c1_18 = arith.constant 1 : index
      %c1_19 = arith.constant 1 : index
      %c304_20 = arith.constant 304 : index
      %c304_21 = arith.constant 304 : index
      %inserted_slice = tensor.insert_slice %8 into %arg2[%arg1, 0, 0, 0, 0] [1, 1, 1, 304, 304] [1, 1, 1, 1, 1] : tensor<1x1x304x304xf32> into tensor<128x1x1x304x304xf32>
      scf.yield %inserted_slice : tensor<128x1x1x304x304xf32>
    }
    %4 = tensor.empty() : tensor<128x1x1x92416xf32>
    %c0_0 = arith.constant 0 : index
    %c128_1 = arith.constant 128 : index
    %c1_2 = arith.constant 1 : index
    %5 = scf.for %arg1 = %c0_0 to %c128_1 step %c1_2 iter_args(%arg2 = %4) -> (tensor<128x1x1x92416xf32>) {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      %c1_8 = arith.constant 1 : index
      %c1_9 = arith.constant 1 : index
      %c1_10 = arith.constant 1 : index
      %c304 = arith.constant 304 : index
      %c304_11 = arith.constant 304 : index
      %extracted_slice = tensor.extract_slice %2[%arg1, 0, 0, 0, 0] [1, 1, 1, 304, 304] [1, 1, 1, 1, 1] : tensor<128x1x1x304x304xf32> to tensor<1x1x1x304x304xf32>
      %collapsed_12 = tensor.collapse_shape %extracted_slice [[0, 1], [2], [3], [4]] : tensor<1x1x1x304x304xf32> into tensor<1x1x304x304xf32>
      %8 = tensor.empty() : tensor<1x1x92416xf32>
      %c0_13 = arith.constant 0 : index
      %c1_14 = arith.constant 1 : index
      %c1_15 = arith.constant 1 : index
      %9 = scf.for %arg3 = %c0_13 to %c1_14 step %c1_15 iter_args(%arg4 = %8) -> (tensor<1x1x92416xf32>) {
        %c0_20 = arith.constant 0 : index
        %c1_21 = arith.constant 1 : index
        %c1_22 = arith.constant 1 : index
        %c1_23 = arith.constant 1 : index
        %c304_24 = arith.constant 304 : index
        %c304_25 = arith.constant 304 : index
        %extracted_slice_26 = tensor.extract_slice %collapsed_12[%arg3, 0, 0, 0] [1, 1, 304, 304] [1, 1, 1, 1] : tensor<1x1x304x304xf32> to tensor<1x1x304x304xf32>
        %collapsed_27 = tensor.collapse_shape %extracted_slice_26 [[0, 1], [2], [3]] : tensor<1x1x304x304xf32> into tensor<1x304x304xf32>
        %10 = tensor.empty() : tensor<1x92416xf32>
        %c0_28 = arith.constant 0 : index
        %c1_29 = arith.constant 1 : index
        %c1_30 = arith.constant 1 : index
        %11 = scf.for %arg5 = %c0_28 to %c1_29 step %c1_30 iter_args(%arg6 = %10) -> (tensor<1x92416xf32>) {
          %c0_36 = arith.constant 0 : index
          %c1_37 = arith.constant 1 : index
          %c1_38 = arith.constant 1 : index
          %c304_39 = arith.constant 304 : index
          %c304_40 = arith.constant 304 : index
          %extracted_slice_41 = tensor.extract_slice %collapsed_27[%arg5, 0, 0] [1, 304, 304] [1, 1, 1] : tensor<1x304x304xf32> to tensor<1x304x304xf32>
          %collapsed_42 = tensor.collapse_shape %extracted_slice_41 [[0, 1], [2]] : tensor<1x304x304xf32> into tensor<304x304xf32>
          %collapsed_43 = tensor.collapse_shape %collapsed_42 [[0, 1]] : tensor<304x304xf32> into tensor<92416xf32>
          %c1_44 = arith.constant 1 : index
          %c1_45 = arith.constant 1 : index
          %c92416_46 = arith.constant 92416 : index
          %inserted_slice_47 = tensor.insert_slice %collapsed_43 into %arg6[%arg5, 0] [1, 92416] [1, 1] : tensor<92416xf32> into tensor<1x92416xf32>
          scf.yield %inserted_slice_47 : tensor<1x92416xf32>
        }
        %c1_31 = arith.constant 1 : index
        %c1_32 = arith.constant 1 : index
        %c1_33 = arith.constant 1 : index
        %c92416_34 = arith.constant 92416 : index
        %inserted_slice_35 = tensor.insert_slice %10 into %arg4[%arg3, 0, 0] [1, 1, 92416] [1, 1, 1] : tensor<1x92416xf32> into tensor<1x1x92416xf32>
        scf.yield %inserted_slice_35 : tensor<1x1x92416xf32>
      }
      %c1_16 = arith.constant 1 : index
      %c128_17 = arith.constant 128 : index
      %c1_18 = arith.constant 1 : index
      %c1_19 = arith.constant 1 : index
      %c92416 = arith.constant 92416 : index
      %inserted_slice = tensor.insert_slice %8 into %arg2[%arg1, 0, 0, 0] [1, 1, 1, 92416] [1, 1, 1, 1] : tensor<1x1x92416xf32> into tensor<128x1x1x92416xf32>
      scf.yield %inserted_slice : tensor<128x1x1x92416xf32>
    }
    %6 = tensor.empty() : tensor<128x1x92416xf32>
    %c0_3 = arith.constant 0 : index
    %c128_4 = arith.constant 128 : index
    %c1_5 = arith.constant 1 : index
    %7 = scf.for %arg1 = %c0_3 to %c128_4 step %c1_5 iter_args(%arg2 = %6) -> (tensor<128x1x92416xf32>) {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      %c1_8 = arith.constant 1 : index
      %c1_9 = arith.constant 1 : index
      %c1_10 = arith.constant 1 : index
      %c92416 = arith.constant 92416 : index
      %extracted_slice = tensor.extract_slice %4[%arg1, 0, 0, 0] [1, 1, 1, 92416] [1, 1, 1, 1] : tensor<128x1x1x92416xf32> to tensor<1x1x1x92416xf32>
      %collapsed_11 = tensor.collapse_shape %extracted_slice [[0, 1], [2], [3]] : tensor<1x1x1x92416xf32> into tensor<1x1x92416xf32>
      %collapsed_12 = tensor.collapse_shape %collapsed_11 [[0, 1], [2]] : tensor<1x1x92416xf32> into tensor<1x92416xf32>
      %c1_13 = arith.constant 1 : index
      %c128_14 = arith.constant 128 : index
      %c1_15 = arith.constant 1 : index
      %c92416_16 = arith.constant 92416 : index
      %inserted_slice = tensor.insert_slice %collapsed_12 into %arg2[%arg1, 0, 0] [1, 1, 92416] [1, 1, 1] : tensor<1x92416xf32> into tensor<128x1x92416xf32>
      scf.yield %inserted_slice : tensor<128x1x92416xf32>
    }
    %collapsed = tensor.collapse_shape %6 [[0, 1], [2]] : tensor<128x1x92416xf32> into tensor<128x92416xf32>
    return %collapsed : tensor<128x92416xf32>
  }
  func.func @"dot/128"(%arg0: tensor<128xf32>, %arg1: tensor<128xf32>) -> f32 {
    %0 = tensor.empty() : tensor<128xf32>
    %c0 = arith.constant 0 : index
    %c128 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    %1 = scf.for %arg2 = %c0 to %c128 step %c1 iter_args(%arg3 = %0) -> (tensor<128xf32>) {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      %c1_8 = arith.constant 1 : index
      %extracted = tensor.extract %arg0[%arg2] : tensor<128xf32>
      %c1_9 = arith.constant 1 : index
      %extracted_10 = tensor.extract %arg1[%arg2] : tensor<128xf32>
      %5 = arith.mulf %extracted, %extracted_10 : f32
      %c1_11 = arith.constant 1 : index
      %c128_12 = arith.constant 128 : index
      %inserted = tensor.insert %5 into %arg3[%arg2] : tensor<128xf32>
      scf.yield %inserted : tensor<128xf32>
    }
    %2 = tensor.empty() : tensor<128xf32>
    %c0_0 = arith.constant 0 : index
    %c128_1 = arith.constant 128 : index
    %c1_2 = arith.constant 1 : index
    %3 = scf.for %arg2 = %c0_0 to %c128_1 step %c1_2 iter_args(%arg3 = %2) -> (tensor<128xf32>) {
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      %c1_8 = arith.constant 1 : index
      %extracted = tensor.extract %0[%arg2] : tensor<128xf32>
      %c1_9 = arith.constant 1 : index
      %c128_10 = arith.constant 128 : index
      %inserted = tensor.insert %extracted into %arg3[%arg2] : tensor<128xf32>
      scf.yield %inserted : tensor<128xf32>
    }
    %cst = arith.constant 0.000000e+00 : f32
    %c0_3 = arith.constant 0 : index
    %c128_4 = arith.constant 128 : index
    %c1_5 = arith.constant 1 : index
    %4 = scf.for %arg2 = %c0_3 to %c128_4 step %c1_5 iter_args(%arg3 = %cst) -> (f32) {
      %extracted = tensor.extract %2[%arg2] : tensor<128xf32>
      %5 = arith.addf %arg3, %extracted : f32
      scf.yield %arg3 : f32
    }
    return %cst : f32
  }
  func.func @"lifted_dot/128-92416"(%arg0: tensor<128xf32>, %arg1: tensor<128x92416xf32>) -> tensor<92416xf32> {
    %0 = tensor.empty() : tensor<92416x128xf32>
    %transposed = linalg.transpose ins(%arg1 : tensor<128x92416xf32>) outs(%0 : tensor<92416x128xf32>) permutation = [1, 0] 
    %1 = tensor.empty() : tensor<92416xf32>
    %c0 = arith.constant 0 : index
    %c92416 = arith.constant 92416 : index
    %c1 = arith.constant 1 : index
    %2 = scf.for %arg2 = %c0 to %c92416 step %c1 iter_args(%arg3 = %1) -> (tensor<92416xf32>) {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      %c128 = arith.constant 128 : index
      %extracted_slice = tensor.extract_slice %transposed[%arg2, 0] [1, 128] [1, 1] : tensor<92416x128xf32> to tensor<1x128xf32>
      %collapsed = tensor.collapse_shape %extracted_slice [[0, 1]] : tensor<1x128xf32> into tensor<128xf32>
      %3 = func.call @"dot/128"(%arg0, %collapsed) : (tensor<128xf32>, tensor<128xf32>) -> f32
      %c1_3 = arith.constant 1 : index
      %c92416_4 = arith.constant 92416 : index
      %inserted = tensor.insert %3 into %arg3[%arg2] : tensor<92416xf32>
      scf.yield %inserted : tensor<92416xf32>
    }
    return %1 : tensor<92416xf32>
  }
  func.func @"matmul/64-128-304_304"(%arg0: tensor<64x128xf32>, %arg1: tensor<128x92416xf32>) -> tensor<64x92416xf32> {
    %0 = tensor.empty() : tensor<64x92416xf32>
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    %1 = scf.for %arg2 = %c0 to %c64 step %c1 iter_args(%arg3 = %0) -> (tensor<64x92416xf32>) {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      %c128 = arith.constant 128 : index
      %extracted_slice = tensor.extract_slice %arg0[%arg2, 0] [1, 128] [1, 1] : tensor<64x128xf32> to tensor<1x128xf32>
      %collapsed = tensor.collapse_shape %extracted_slice [[0, 1]] : tensor<1x128xf32> into tensor<128xf32>
      %2 = func.call @"lifted_dot/128-92416"(%collapsed, %arg1) : (tensor<128xf32>, tensor<128x92416xf32>) -> tensor<92416xf32>
      %c1_3 = arith.constant 1 : index
      %c64_4 = arith.constant 64 : index
      %c92416 = arith.constant 92416 : index
      %inserted_slice = tensor.insert_slice %2 into %arg3[%arg2, 0] [1, 92416] [1, 1] : tensor<92416xf32> into tensor<64x92416xf32>
      scf.yield %inserted_slice : tensor<64x92416xf32>
    }
    return %0 : tensor<64x92416xf32>
  }
  func.func @"conv2d/304-1-128-64-0"(%arg0: tensor<128x304x304xf32>, %arg1: tensor<64x128x1x1xf32>) -> tensor<64x92416xf32> {
    %0 = tensor.empty() : tensor<64x128x1xf32>
    %c0 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1 = arith.constant 1 : index
    %1 = scf.for %arg2 = %c0 to %c64 step %c1 iter_args(%arg3 = %0) -> (tensor<64x128x1xf32>) {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      %c128 = arith.constant 128 : index
      %c1_6 = arith.constant 1 : index
      %c1_7 = arith.constant 1 : index
      %extracted_slice = tensor.extract_slice %arg1[%arg2, 0, 0, 0] [1, 128, 1, 1] [1, 1, 1, 1] : tensor<64x128x1x1xf32> to tensor<1x128x1x1xf32>
      %collapsed = tensor.collapse_shape %extracted_slice [[0, 1], [2], [3]] : tensor<1x128x1x1xf32> into tensor<128x1x1xf32>
      %6 = tensor.empty() : tensor<128x1xf32>
      %c0_8 = arith.constant 0 : index
      %c128_9 = arith.constant 128 : index
      %c1_10 = arith.constant 1 : index
      %7 = scf.for %arg4 = %c0_8 to %c128_9 step %c1_10 iter_args(%arg5 = %6) -> (tensor<128x1xf32>) {
        %c0_15 = arith.constant 0 : index
        %c1_16 = arith.constant 1 : index
        %c1_17 = arith.constant 1 : index
        %c1_18 = arith.constant 1 : index
        %c1_19 = arith.constant 1 : index
        %extracted_slice_20 = tensor.extract_slice %collapsed[%arg4, 0, 0] [1, 1, 1] [1, 1, 1] : tensor<128x1x1xf32> to tensor<1x1x1xf32>
        %collapsed_21 = tensor.collapse_shape %extracted_slice_20 [[0, 1], [2]] : tensor<1x1x1xf32> into tensor<1x1xf32>
        %collapsed_22 = tensor.collapse_shape %collapsed_21 [[0, 1]] : tensor<1x1xf32> into tensor<1xf32>
        %c1_23 = arith.constant 1 : index
        %c128_24 = arith.constant 128 : index
        %c1_25 = arith.constant 1 : index
        %inserted_slice_26 = tensor.insert_slice %collapsed_22 into %arg5[%arg4, 0] [1, 1] [1, 1] : tensor<1xf32> into tensor<128x1xf32>
        scf.yield %inserted_slice_26 : tensor<128x1xf32>
      }
      %c1_11 = arith.constant 1 : index
      %c64_12 = arith.constant 64 : index
      %c128_13 = arith.constant 128 : index
      %c1_14 = arith.constant 1 : index
      %inserted_slice = tensor.insert_slice %6 into %arg3[%arg2, 0, 0] [1, 128, 1] [1, 1, 1] : tensor<128x1xf32> into tensor<64x128x1xf32>
      scf.yield %inserted_slice : tensor<64x128x1xf32>
    }
    %2 = tensor.empty() : tensor<64x128xf32>
    %c0_0 = arith.constant 0 : index
    %c64_1 = arith.constant 64 : index
    %c1_2 = arith.constant 1 : index
    %3 = scf.for %arg2 = %c0_0 to %c64_1 step %c1_2 iter_args(%arg3 = %2) -> (tensor<64x128xf32>) {
      %c0_3 = arith.constant 0 : index
      %c1_4 = arith.constant 1 : index
      %c1_5 = arith.constant 1 : index
      %c128 = arith.constant 128 : index
      %c1_6 = arith.constant 1 : index
      %extracted_slice = tensor.extract_slice %0[%arg2, 0, 0] [1, 128, 1] [1, 1, 1] : tensor<64x128x1xf32> to tensor<1x128x1xf32>
      %collapsed = tensor.collapse_shape %extracted_slice [[0, 1], [2]] : tensor<1x128x1xf32> into tensor<128x1xf32>
      %collapsed_7 = tensor.collapse_shape %collapsed [[0, 1]] : tensor<128x1xf32> into tensor<128xf32>
      %c1_8 = arith.constant 1 : index
      %c64_9 = arith.constant 64 : index
      %c128_10 = arith.constant 128 : index
      %inserted_slice = tensor.insert_slice %collapsed_7 into %arg3[%arg2, 0] [1, 128] [1, 1] : tensor<128xf32> into tensor<64x128xf32>
      scf.yield %inserted_slice : tensor<64x128xf32>
    }
    %4 = call @"im2col/304-1-0-128"(%arg0) : (tensor<128x304x304xf32>) -> tensor<128x92416xf32>
    %5 = call @"matmul/64-128-304_304"(%2, %4) : (tensor<64x128xf32>, tensor<128x92416xf32>) -> tensor<64x92416xf32>
    return %5 : tensor<64x92416xf32>
  }
  func.func @entry_main() -> tensor<64x92416xf32> {
    %cst = arith.constant 3.700000e+01 : f32
    %from_elements = tensor.from_elements %cst : tensor<f32>
    %0 = tensor.empty() : tensor<128x304x304xf32>
    %broadcasted = linalg.broadcast ins(%from_elements : tensor<f32>) outs(%0 : tensor<128x304x304xf32>) dimensions = [0, 1, 2] 
    %cst_0 = arith.constant 3.700000e+01 : f32
    %from_elements_1 = tensor.from_elements %cst_0 : tensor<f32>
    %1 = tensor.empty() : tensor<64x128x1x1xf32>
    %broadcasted_2 = linalg.broadcast ins(%from_elements_1 : tensor<f32>) outs(%1 : tensor<64x128x1x1xf32>) dimensions = [0, 1, 2, 3] 
    %2 = call @"conv2d/304-1-128-64-0"(%broadcasted, %broadcasted_2) : (tensor<128x304x304xf32>, tensor<64x128x1x1xf32>) -> tensor<64x92416xf32>
    return %2 : tensor<64x92416xf32>
  }
}
