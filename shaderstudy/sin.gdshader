shader_type canvas_item;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	float y = sin(UV.x * PI * 2.0 - PI) /2.0+0.5;
	float diff = abs(UV.y-y);
	vec4 c = vec4(1,1,1,1);
	float a = smoothstep(0.01,0,diff);
	c.r = c.r * a;
	COLOR = c;
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
