// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
};
out_vertex _ret_0;
vec4 _r0022;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _TMP18;
    _r0022 = VertexCoord.x*MVPMatrix[0];
    _r0022 = _r0022 + VertexCoord.y*MVPMatrix[1];
    _r0022 = _r0022 + VertexCoord.z*MVPMatrix[2];
    _r0022 = _r0022 + VertexCoord.w*MVPMatrix[3];
    _TMP18._t1 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4( -1.95312500E-03, -2.23159790E-03, 1.95312500E-03, -2.23159790E-03);
    _TMP18._t2 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4( 1.95312500E-03, 2.23159790E-03, -1.95312500E-03, 2.23159790E-03);
    _TMP18._t3 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4( -9.76562500E-04, -1.11579895E-03, 9.76562500E-04, -1.11579895E-03);
    _TMP18._t4 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4( 9.76562500E-04, 1.11579895E-03, -9.76562500E-04, 1.11579895E-03);
    _TMP18._t5 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4( -1.95312500E-03, 0.00000000E+00, 1.95312500E-03, 0.00000000E+00);
    _TMP18._t6 = vec4(TexCoord.x, TexCoord.y, TexCoord.x, TexCoord.y) + vec4( 0.00000000E+00, -2.23159790E-03, 0.00000000E+00, 2.23159790E-03);
    _ret_0._position1 = _r0022;
    _ret_0._texCoord = TexCoord.xy;
    _ret_0._t1 = _TMP18._t1;
    _ret_0._t2 = _TMP18._t2;
    _ret_0._t3 = _TMP18._t3;
    _ret_0._t4 = _TMP18._t4;
    _ret_0._t5 = _TMP18._t5;
    _ret_0._t6 = _TMP18._t6;
    gl_Position = vec4(float(_r0022.x), float(_r0022.y), float(_r0022.z), float(_r0022.w));
    TEX0.xy = TexCoord.xy;
    TEX1 = _TMP18._t1;
    TEX2 = _TMP18._t2;
    TEX3 = _TMP18._t3;
    TEX4 = _TMP18._t4;
    TEX5 = _TMP18._t5;
    TEX6 = _TMP18._t6;
    return;
    TEX0.xy = _ret_0._texCoord;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t21;
COMPAT_VARYING     vec4 _t11;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t11;
    vec4 _t21;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
};
vec4 _ret_0;
float _TMP24;
vec3 _TMP23;
float _TMP26;
vec3 _TMP25;
float _TMP22;
vec3 _TMP21;
float _TMP20;
vec3 _TMP19;
float _TMP18;
vec3 _TMP17;
float _TMP16;
vec3 _TMP15;
float _TMP14;
vec3 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec2 _c0032;
vec2 _c0034;
vec2 _c0036;
vec2 _c0038;
vec2 _c0040;
vec2 _c0042;
vec2 _c0044;
vec2 _c0046;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec3 _a0058;
vec3 _a0062;
vec3 _a0066;
vec3 _a0070;
vec3 _a0074;
vec3 _a0078;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _c11;
    vec3 _c00;
    vec3 _c20;
    vec3 _c22;
    vec3 _c02;
    vec3 _s00;
    vec3 _s20;
    vec3 _s22;
    vec3 _s02;
    vec3 _c01;
    vec3 _c21;
    vec3 _c10;
    vec3 _c12;
    float _d1;
    float _d2;
    float _hl;
    float _vl;
    float _m1;
    float _m2;
    vec3 _t1;
    vec3 _t2;
    vec3 _TMP30;
    _c0032 = vec2(float(TEX0.x), float(TEX0.y));
    _TMP0 = COMPAT_TEXTURE(Texture, _c0032);
    _c11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _c0034 = vec2(float(TEX1.x), float(TEX1.y));
    _TMP1 = COMPAT_TEXTURE(Texture, _c0034);
    _c00 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _c0036 = vec2(float(TEX1.z), float(TEX1.w));
    _TMP2 = COMPAT_TEXTURE(Texture, _c0036);
    _c20 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _c0038 = vec2(float(TEX2.x), float(TEX2.y));
    _TMP3 = COMPAT_TEXTURE(Texture, _c0038);
    _c22 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _c0040 = vec2(float(TEX2.z), float(TEX2.w));
    _TMP4 = COMPAT_TEXTURE(Texture, _c0040);
    _c02 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _c0042 = vec2(float(TEX3.x), float(TEX3.y));
    _TMP5 = COMPAT_TEXTURE(Texture, _c0042);
    _s00 = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _c0044 = vec2(float(TEX3.z), float(TEX3.w));
    _TMP6 = COMPAT_TEXTURE(Texture, _c0044);
    _s20 = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _c0046 = vec2(float(TEX4.x), float(TEX4.y));
    _TMP7 = COMPAT_TEXTURE(Texture, _c0046);
    _s22 = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _c0048 = vec2(float(TEX4.z), float(TEX4.w));
    _TMP8 = COMPAT_TEXTURE(Texture, _c0048);
    _s02 = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _c0050 = vec2(float(TEX5.x), float(TEX5.y));
    _TMP9 = COMPAT_TEXTURE(Texture, _c0050);
    _c01 = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _c0052 = vec2(float(TEX5.z), float(TEX5.w));
    _TMP10 = COMPAT_TEXTURE(Texture, _c0052);
    _c21 = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _c0054 = vec2(float(TEX6.x), float(TEX6.y));
    _TMP11 = COMPAT_TEXTURE(Texture, _c0054);
    _c10 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _c0056 = vec2(float(TEX6.z), float(TEX6.w));
    _TMP12 = COMPAT_TEXTURE(Texture, _c0056);
    _c12 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _a0058 = _c00 - _c22;
    _TMP25 = abs(vec3(float(_a0058.x), float(_a0058.y), float(_a0058.z)));
    _TMP13 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP14 = float(_TMP26);
    _d1 = _TMP14 + 1.00016594E-04;
    _a0062 = _c20 - _c02;
    _TMP25 = abs(vec3(float(_a0062.x), float(_a0062.y), float(_a0062.z)));
    _TMP15 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP16 = float(_TMP26);
    _d2 = _TMP16 + 1.00016594E-04;
    _a0066 = _c01 - _c21;
    _TMP25 = abs(vec3(float(_a0066.x), float(_a0066.y), float(_a0066.z)));
    _TMP17 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP17.x), float(_TMP17.y), float(_TMP17.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP18 = float(_TMP26);
    _hl = _TMP18 + 1.00016594E-04;
    _a0070 = _c10 - _c12;
    _TMP25 = abs(vec3(float(_a0070.x), float(_a0070.y), float(_a0070.z)));
    _TMP19 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP19.x), float(_TMP19.y), float(_TMP19.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP20 = float(_TMP26);
    _vl = _TMP20 + 1.00016594E-04;
    _a0074 = _s00 - _s22;
    _TMP25 = abs(vec3(float(_a0074.x), float(_a0074.y), float(_a0074.z)));
    _TMP21 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP21.x), float(_TMP21.y), float(_TMP21.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP22 = float(_TMP26);
    _m1 = _TMP22 + 1.00040436E-03;
    _a0078 = _s02 - _s20;
    _TMP25 = abs(vec3(float(_a0078.x), float(_a0078.y), float(_a0078.z)));
    _TMP23 = vec3(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z));
    _TMP26 = dot(vec3(float(_TMP23.x), float(_TMP23.y), float(_TMP23.z)), vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP24 = float(_TMP26);
    _m2 = _TMP24 + 1.00040436E-03;
    _t1 = (_hl*(_c10 + _c12) + _vl*(_c01 + _c21) + (_hl + _vl)*_c11)/(2.00000000E+00*(_hl + _vl));
    _t2 = (_d1*(_c20 + _c02) + _d2*(_c00 + _c22) + (_d1 + _d2)*_c11)/(2.00000000E+00*(_d1 + _d2));
    _TMP30 = 2.50000000E-01*(_t1 + _t2 + (_m2*(_s00 + _s22) + _m1*(_s02 + _s20))/(_m1 + _m2));
    _ret_0 = vec4(_TMP30.x, _TMP30.y, _TMP30.z, 1.00000000E+00);
    FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
#endif
