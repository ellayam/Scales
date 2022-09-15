void setup() {
  size(500,500);
  frameRate(4);
}

void draw() {
  boolean shift = true;
  for(int y = 500; y >= 0; y-=50) {
    for(int x = -50; x <= 500; x+=100) {
      if(shift == true)
        scales(x,y);
       else
         scales(x+50,y);
    }
    if(shift==true)
      shift = false;
    else
      shift = true;
  }
}

void scales(int x, int y) {
  double rand = Math.random();
  int diam = (int)(rand * 10) + 100;
  float r = 255;
  noFill();
  while(diam > 0){
    stroke(r,0,r-100);
    ellipse(x,y,diam,diam);
    diam--;
    r-=2;
  }
 
  int siz = (int)(rand * 5) + 9;
  noStroke();
  fill(227,0,136);
  bezier(x,y,x+siz,y-siz,x+siz,y,x,y+siz);
  bezier(x,y,x-siz,y-siz,x-siz,y,x,y+siz);
}
