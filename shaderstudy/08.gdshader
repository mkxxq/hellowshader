shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}



void fragment() {
	// Called for every pixel the material is visible on.
	vec3 color = vec3(0.0);
	vec3 colorA = vec3(0.149,0.141,0.912);
	vec3 colorB = vec3(1.000,0.833,0.224);
	float pct = abs(sin(TIME));
	color = mix(colorA,colorB,pct);
	COLOR = vec4(color,1.0);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
