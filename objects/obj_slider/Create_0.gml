///@desc Setup

// Put the slider in the right place
baseX = x;
baseY = y;
x = relerp(minValue, maxValue, real(value), baseX-width/2, baseX+width/2);

// Variables for dragging
dragging = false;
mdx = 0;

// Event hooks for when the slider is dragged (onUpdate) or released (onReleased)
// To be overridden by Instance Creation Code
onUpdate = function(v) {};
onRelease = function(v) {};
