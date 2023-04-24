///@desc Keep tracking the drag
if (dragging) {
	var newx = mouse_x+mdx;
	var semiWidth = width/2;
	x = clamp(newx, baseX-semiWidth, baseX+semiWidth);
	///Feather disable all
	value = relerp(baseX-semiWidth, baseX+semiWidth, x, minValue, maxValue);
	///Feather enable all
	onUpdate(value);
}
