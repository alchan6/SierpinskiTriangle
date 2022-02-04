public void setup(){
  background(0);
  size(500,500);
}
int rgb1 = (int)(Math.random()*256);
int rgb2 = (int)(Math.random()*256);
int rgb3 = (int)(Math.random()*256);
int scope = 10;
public void draw(){
  sierpinski(0,500,500);
}
public void mousePressed(){//optional
  background(0);
  rgb1 = (int)(Math.random()*256);
  rgb2 = (int)(Math.random()*256);
  rgb3 = (int)(Math.random()*256);
  scope += 20;
}
public void sierpinski(int x, int y, int len){
  if(len <= scope){
    triangle(x,y,x+(len/2),y-len,x+len,y);
  }
  else{
    fill(rgb1,rgb2,rgb3);
    sierpinski(x,y,len/2);
    fill(rgb2,rgb3,rgb1);
    sierpinski(x+len/2,y,len/2);
    fill(rgb3,rgb1,rgb2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
