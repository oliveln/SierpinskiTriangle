int len = 500;
int prevMouseX = 0;

public void setup()
{
  size(500,500);
}
public void draw()
{
  background(255);
  strokeWeight(3);
  int x = 0;
  int y = 0;
  sierpinski(x, y, len);
}
public void mouseDragged()//optional
{
  if(prevMouseX < mouseX){
    len+=2;
  } else {
    len-=2;
  }
  
  prevMouseX = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x, y, x + len, y, x + (len * 0.5), y + len);
  }
  else{
    fill(53,88,41);
    stroke(53,88,41);
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y + len/2, len/2);
    stroke(156, 25, 29);
    fill(156, 25, 29);
    ellipse(x,y,15,15);
    stroke(255,255,0);
    fill(255,255,0);

  }
}






