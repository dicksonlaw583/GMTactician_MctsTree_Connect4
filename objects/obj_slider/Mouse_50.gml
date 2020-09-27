///@desc Keep tracking the drag
if (dragging) {
	var newx = mouse_x+mdx;
	var semiWidth = width/2;
	x = clamp(newx, baseX-semiWidth, baseX+semiWidth);
	value = relerp(baseX-semiWidth, baseX+semiWidth, x, minValue, maxValue);
	onUpdate(value);
}
