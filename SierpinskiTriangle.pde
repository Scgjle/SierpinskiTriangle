

public void setup()
{
  size(600,600);
  background(0,0,0);
}
public void draw()
{
  sierpinski(50,550,size);
}
public void keyPressed()//optional
{
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) { 
    triangle(x, y, x + len, y, x + len/2, y - len); 
  } else { 
    int half = len / 2;
    sierpinski(x, y, half); // bottom-right 
    sierpinski(x + half, y, half); 
    sierpinski(x + half/2, y - half, half);
  }
}
