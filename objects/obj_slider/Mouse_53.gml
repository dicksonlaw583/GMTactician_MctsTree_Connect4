///@desc If it's on the bar but not on the knob, start dragging from there
if (!dragging && !position_meeting(mouse_x, mouse_y, id) && point_in_rectangle(mouse_x, mouse_y, baseX-width/2-fingerTolerance, baseY-height/2-fingerTolerance, baseX+width/2+fingerTolerance, baseY+height/2+fingerTolerance)) {
	dragging = true;
	x = clamp(mouse_x, baseX-width/2, baseX+width/2);
	mdx = 0;
}
