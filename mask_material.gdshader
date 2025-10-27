shader_type canvas_item;

uniform sampler2D mask_tex : source_color, filter_linear, repeat_disable;

uniform float threshold = 0.5;

void fragment() {
    vec4 base_color = texture(TEXTURE, UV);
    vec4 mask_color = texture(mask_tex, UV);
    if (mask_color.a < threshold) discard;
    COLOR = base_color;
}

//shader_type canvas_item;
//
//uniform sampler2D mask_tex : source_color, filter_linear, repeat_disable;
//
//void fragment() {
    //vec4 base_color = texture(TEXTURE, UV);
    //vec4 mask_color = texture(mask_tex, UV);
    //
    //// multiply alpha based on mask
    //base_color.a *= mask_color.a;
//
    //// discard fully transparent pixels for crisp edges
    //if (base_color.a < 0.01) discard;
//
    //COLOR = base_color;
//}