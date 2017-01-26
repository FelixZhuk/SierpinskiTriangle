public void setup()
{

}
public void draw()
{
	sierpinski(0,100,100);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 5) {
		//triangle(x,y, x + len, y, x + len / 2, y - len);
		rect(x,y, x + len, y - len);
	}
	else {
		sierpinski(x,y,len/2);
		sierpinski(x + len/2,y,len/2);
		sierpinski(x + len/4,y - len/2,len/2);
	}
}