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
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTex;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _oTex = TexCoord.xy;
    gl_Position = _r0005;
    TEX0.xy = TexCoord.xy;
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
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec4 _TMP1;
float _TMP10;
float _TMP9;
float _TMP15;
float _TMP14;
float _TMP11;
float _TMP12;
float _TMP8;
float _TMP7;
float _TMP6;
float _TMP5;
float _TMP4;
float _TMP3;
uniform sampler2D Texture;
input_dummy _IN2;
vec2 _TMP19;
vec2 _x0020;
float _v0024;
float _x0026;
vec2 _c0028;
float _temp0030;
float _rrr0030;
float _x10030;
float _x0030;
float _x20030;
vec3 _c0030;
float _t0036;
float _TMP39;
float _x0040;
float _val0048;
float _t0050;
float _TMP53;
float _x0054;
float _val0062;
float _t0064;
float _TMP67;
float _x0068;
float _val0076;
float _t0078;
float _TMP81;
float _x0082;
float _val0090;
float _t0092;
float _TMP95;
float _x0096;
float _val0104;
float _t0106;
float _TMP109;
float _x0110;
float _val0118;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _tempColor;
    float _range;
    float _i;
    _x0020 = TEX0.xy*TextureSize.xy - 5.00000000E-01;
    _TMP19 = fract(_x0020);
    _tempColor = vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00);
    _v0024 = 5.00000000E-01 + InputSize.y/2.50000000E+02;
    _x0026 = -_v0024;
    _TMP3 = floor(_x0026);
    _range = -_TMP3;
    _i = -_range;
    for (; _i < _range + 2.00000000E+00; _i = _i + 1.00000000E+00) { 
        _c0028 = vec2(TEX0.x, TEX0.y - (_TMP19.y - _i)/TextureSize.y);
        _TMP1 = COMPAT_TEXTURE(Texture, _c0028);
        _x0030 = _TMP19.y - _i;
        _TMP11 = inversesqrt(6.28318548E+00);
        _TMP4 = 1.00000000E+00/_TMP11;
        _temp0030 = _TMP4*(2.50000000E+02/InputSize.y);
        _rrr0030 = 5.00000000E-01*(InputSize.y/OutputSize.y);
        _x10030 = (_x0030 + _rrr0030)*_temp0030;
        _x20030 = (_x0030 - _rrr0030)*_temp0030;
        _TMP12 = abs(_x10030);
        _t0036 = 1.00000000E+00/(1.00000000E+00 + 3.32670003E-01*_TMP12);
        _x0040 = -_x10030*_x10030*5.00000000E-01;
        _TMP39 = pow(2.71828198E+00, _x0040);
        _TMP11 = inversesqrt(6.28318548E+00);
        _TMP14 = 1.00000000E+00/_TMP11;
        _val0048 = float((_x10030 > 0.00000000E+00));
        _TMP15 = _val0048 - float((_x10030 < 0.00000000E+00));
        _TMP5 = (5.00000000E-01 - (_TMP39/_TMP14)*_t0036*(4.36183602E-01 + _t0036*(-1.20167598E-01 + 9.37298000E-01*_t0036)))*_TMP15;
        _TMP12 = abs(_x20030);
        _t0050 = 1.00000000E+00/(1.00000000E+00 + 3.32670003E-01*_TMP12);
        _x0054 = -_x20030*_x20030*5.00000000E-01;
        _TMP53 = pow(2.71828198E+00, _x0054);
        _TMP11 = inversesqrt(6.28318548E+00);
        _TMP14 = 1.00000000E+00/_TMP11;
        _val0062 = float((_x20030 > 0.00000000E+00));
        _TMP15 = _val0062 - float((_x20030 < 0.00000000E+00));
        _TMP6 = (5.00000000E-01 - (_TMP53/_TMP14)*_t0050*(4.36183602E-01 + _t0050*(-1.20167598E-01 + 9.37298000E-01*_t0050)))*_TMP15;
        _c0030.x = _TMP1.x*(_TMP5 - _TMP6);
        _TMP12 = abs(_x10030);
        _t0064 = 1.00000000E+00/(1.00000000E+00 + 3.32670003E-01*_TMP12);
        _x0068 = -_x10030*_x10030*5.00000000E-01;
        _TMP67 = pow(2.71828198E+00, _x0068);
        _TMP11 = inversesqrt(6.28318548E+00);
        _TMP14 = 1.00000000E+00/_TMP11;
        _val0076 = float((_x10030 > 0.00000000E+00));
        _TMP15 = _val0076 - float((_x10030 < 0.00000000E+00));
        _TMP7 = (5.00000000E-01 - (_TMP67/_TMP14)*_t0064*(4.36183602E-01 + _t0064*(-1.20167598E-01 + 9.37298000E-01*_t0064)))*_TMP15;
        _TMP12 = abs(_x20030);
        _t0078 = 1.00000000E+00/(1.00000000E+00 + 3.32670003E-01*_TMP12);
        _x0082 = -_x20030*_x20030*5.00000000E-01;
        _TMP81 = pow(2.71828198E+00, _x0082);
        _TMP11 = inversesqrt(6.28318548E+00);
        _TMP14 = 1.00000000E+00/_TMP11;
        _val0090 = float((_x20030 > 0.00000000E+00));
        _TMP15 = _val0090 - float((_x20030 < 0.00000000E+00));
        _TMP8 = (5.00000000E-01 - (_TMP81/_TMP14)*_t0078*(4.36183602E-01 + _t0078*(-1.20167598E-01 + 9.37298000E-01*_t0078)))*_TMP15;
        _c0030.y = _TMP1.y*(_TMP7 - _TMP8);
        _TMP12 = abs(_x10030);
        _t0092 = 1.00000000E+00/(1.00000000E+00 + 3.32670003E-01*_TMP12);
        _x0096 = -_x10030*_x10030*5.00000000E-01;
        _TMP95 = pow(2.71828198E+00, _x0096);
        _TMP11 = inversesqrt(6.28318548E+00);
        _TMP14 = 1.00000000E+00/_TMP11;
        _val0104 = float((_x10030 > 0.00000000E+00));
        _TMP15 = _val0104 - float((_x10030 < 0.00000000E+00));
        _TMP9 = (5.00000000E-01 - (_TMP95/_TMP14)*_t0092*(4.36183602E-01 + _t0092*(-1.20167598E-01 + 9.37298000E-01*_t0092)))*_TMP15;
        _TMP12 = abs(_x20030);
        _t0106 = 1.00000000E+00/(1.00000000E+00 + 3.32670003E-01*_TMP12);
        _x0110 = -_x20030*_x20030*5.00000000E-01;
        _TMP109 = pow(2.71828198E+00, _x0110);
        _TMP11 = inversesqrt(6.28318548E+00);
        _TMP14 = 1.00000000E+00/_TMP11;
        _val0118 = float((_x20030 > 0.00000000E+00));
        _TMP15 = _val0118 - float((_x20030 < 0.00000000E+00));
        _TMP10 = (5.00000000E-01 - (_TMP109/_TMP14)*_t0106*(4.36183602E-01 + _t0106*(-1.20167598E-01 + 9.37298000E-01*_t0106)))*_TMP15;
        _c0030.z = _TMP1.z*(_TMP9 - _TMP10);
        _c0030 = _c0030*(OutputSize.y/InputSize.y);
        _tempColor = _tempColor + _c0030;
    } 
    _tempColor = _tempColor - vec3( 8.74999985E-02, 8.74999985E-02, 8.74999985E-02);
    _tempColor = _tempColor*vec3( 1.09589040E+00, 1.09589040E+00, 1.09589040E+00);
    _ret_0 = vec4(_tempColor.x, _tempColor.y, _tempColor.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif