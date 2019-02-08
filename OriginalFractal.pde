public void setup()
{
	size(800,800);
	background(255,184,189);
	rectMode(CENTER);
}
public void draw()
{
	noFill();
	strokeWeight(5);
	stroke(255,255,0);
	ellipse(400,210,60,135);
	fractal(400,400,480);
	noFill();
	strokeWeight(1);
	stroke(0);
	ellipse(400,90,40,135);
}
public void fractal(int x, int y, int size)
{
	noStroke();
	fill(255, 95, 152);
	ellipse(x, y, size, size);
	fill(150, 212, 255);
	rect(x, y, size/2, size/2);
	if (size < 20)
	{
	}
	else  
	{
		fractal(x-size/2, y, size/2);
		fractal(x+size/2, y, size/2);
		fractal(x, y+size/2, size/3);
	}
}