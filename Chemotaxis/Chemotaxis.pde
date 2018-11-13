Bacteria s[]; 
void setup()   
{   
  frameRate(60);
  size(1000, 1000);
  s =  new Bacteria[1000];
  for (int i = 0; i<s.length; i++) {
    s[i]= new Bacteria((int)(width*Math.random()),
    (int)(height*Math.random()), (int)(255*Math.random()));
  }
  
}   
void draw()   
{    
  background(200);
  for (int i = 0; i<s.length; i++) {
    s[i].show();
    s[i].move();
  }

}  
class Bacteria    
{     
  int x_pos, y_pos;
  int colour;
  Bacteria(int x, int y, int c) {
    x_pos = x;
    y_pos = y;
    colour = c;
  }
  void move() {
    x_pos += -5+(Math.random()*11);
    y_pos += -5+(Math.random()*11);
    if(x_pos>width||x_pos<0||y_pos>height||y_pos<0){
      x_pos = width/2;
      y_pos = height/2;
    }
  }
  void show() {
    fill(colour);
    ellipse(x_pos, y_pos, 20, 20);
  }
}    
