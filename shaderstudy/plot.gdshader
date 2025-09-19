shader_type canvas_item;

#include "res://shaderstudy/plot.gdshaderinc"

uniform vec2 size = vec2(128,128);

void vertex() {
	// Called for every vertex the material is visible on.
}
float yfunc(float x){
	return tan(x * PI) / PI;
}

void fragment() {
	float speed = 0.2;
	vec2 st = UV - vec2(0.5,0.5);
	float y = yfunc(st.x);
	vec3 color = vec3(1.0,1.0,1.0);
	//float pct = plot(st,y);
	//color = mix(color,vec3(0,1,0),pct);
	//COLOR = vec4(color,1.0);
	//if (abs(st.y - y) < 0.01){
		//COLOR.rgb= vec3(0,1,0);
	//}else{
		//COLOR.rgb = vec3(1,1,1);
	//}
	//float t = smoothstep(0,0.01,abs(st.y -y)) ;
	float t =  smoothstep(y -0.005, y,st.y ) - smoothstep(y  , y+0.005,st.y );
	//color = mix(color,vec3(0,1,0),t);
	color = mix(color,vec3(0,1,0),t);
	COLOR.rgb = color;
	//float t2 = smoothstep(0,1,sin(TIME/st.x));
	//COLOR.rgb = mix(COLOR.rgb,vec3(0,0,0),t2);
	float mx = mod(TIME * speed * 2.0,1.0)-0.5;
	float my = yfunc(mx);
	float dis = distance(st,vec2(mx,my));
	COLOR.rgb = mix(vec3(0,0,1),COLOR.rgb,smoothstep(0,0.01,dis));

}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
