shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}
float plot(vec2 st, float pct){
	return smoothstep(pct-0.01,pct,st.y)-smoothstep(pct,pct+0.01,st.y);
}
void fragment() {
	// Called for every pixel the material is visible on.
	vec2 st = UV - vec2(0.5,0.5);
	float y = tan(st.x * PI) / PI;
	vec3 color = vec3(1.0,1.0,1.0);
	float pct = plot(st,y);
	COLOR = vec4(mix(color,vec3(0,1,0),pct),1.0);
	float y2 =  (1.0 /tan(st.x * PI)) / PI;
	float pct2 = plot(st,y2);
	COLOR = vec4(mix(COLOR.rgb,vec3(0,1,0),pct2),1.0);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
