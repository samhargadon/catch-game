class Blocks {

  //properties
  float blockx=0.0;
  float xspeed=random(4, 6);
  float blocky;
  float sqSize;
  float r;
  float g;
  float b;



  Blocks(float blockx, float blocky, float sqSize, float r, float g, float b) {
    this.blockx=blockx;
    this.blocky=blocky;
    this.sqSize=sqSize;
    this.r=r;
    this.g=g;
    this.b=b;
  }

  //methods
  void display() {
    fill(r, g, b);
    square(blockx, blocky, sqSize);
  }
  void move() {
    if (blockx>width) {
      blockx=0;
      xspeed=xspeed-1;
      score = score - 1;
      blocky=random(height);
      r=random(255);
      g=random(255);
      b=random(255);
      sqSize=random(20, 40);
    }
    blockx=blockx+xspeed;
  }

  void check_hit_pad () {
    if (blocky<=mouseY+(rectY/2) && blocky>=mouseY-(rectY/2)) {
      if(blockx>=((width-pgap)-(rectX))) {
        blockx=0;
        blocky=random(height);
        score = score + 1;
        xspeed = xspeed + 1;
        r = random(255);
        g = random(255);
        b = random(255);
        sqSize = random (20,40);
      
    }
  }
  }




}
