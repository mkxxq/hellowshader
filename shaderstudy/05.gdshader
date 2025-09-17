shader_type canvas_item;

float plot(vec2 st,float pct){
	return smoothstep(pct-0.02,pct,st.y) - smoothstep(pct,pct+0.02,st.y);
}

void vertex() {
}

void fragment() {
	// Called for every pixel the material is visible on.
	// Called for every vertex the material is visible on.
	vec2 st = UV;
	float y = pow(st.x,5.0);
	vec3 color = vec3(y);
	float pct = plot(st,y);
	color = (1.0-pct)*color + pct* vec3(0.0,1.0,0.0);
	COLOR = vec4(color,1.0);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
