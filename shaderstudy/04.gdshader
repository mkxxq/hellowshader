shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

float plot(vec2 st){
	return smoothstep(0.02,0.0,abs(st.y-st.x));
}

void fragment() {
	// Called for every pixel the material is visible on.
	float y = UV.x;
	vec3 color = vec3(y);
	float pct = plot(UV);
	color = (1.0-pct)*color+pct*vec3(0.0,1.0,0.0);
	COLOR = vec4(color,1.0);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
