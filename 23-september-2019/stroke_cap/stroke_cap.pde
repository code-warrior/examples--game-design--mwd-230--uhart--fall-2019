size(600, 600);

// Define the width of the stroke
strokeWeight(10);

// Explicitly set the default value of ROUND as the decoration applied to the end of
// the stroke — The end cap, referred to as the strokeCap.
strokeCap(ROUND);
line(20, 30, 80, 30);

// The next end cap is self-explanatory. Note that there is no end cap when using
// this option.
strokeCap(SQUARE);
line(20, 50, 80, 50);

// This is a combination of the previous two: The end cap will grow like ROUND, but
// stay square like SQUARE.
strokeCap(PROJECT);
line(20, 70, 80, 70);
