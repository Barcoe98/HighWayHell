class obstacle {
  //variables
  private float x = 85;
  private float x2 = 170;
  private float x3 = 300;
  private float x4 = 390;
  private float y = random(-100, -50);
  private float yspeed = random(.5, 4);

  //constructors
  obstacle()
  {
  }

  obstacle( float xCoord, float x2Coord, float x3Coord, float x4Coord, float yCoord, float yVelocity)
  {
    x = xCoord;
    x2 = x2Coord;
    x3 = x3Coord;
    x4 = x4Coord;
    y = yCoord;
    yspeed = yVelocity;
  }

  //method
  void drive() {
    y = y + yspeed;

    if (y > height) {   // when y is less then the height, y with be set back to a random number between -100 and -50
      y = random(-100, -50);
      yspeed = yspeed +.1;   // also when y is reset, the speed of the cars will increase by 0.1 in speed
    }
  }

  void speedlimit() {

    if (yspeed > 5) {  //when the speed gets just below 5, it will reset back to a random numbr between 0.5 and 4
      yspeed=random(.5, 4);
    }
  }

  //void collision(){
  //if (

  void show () {
    noStroke();
    fill(255, 0, 255);

    //row 1
    rect(x, y, 26, 38);
    fill(255);
    rect(x+6,y+6,14,14);
    fill(0);
    rect(x-2, y, 4, 8);
    rect(x+24, y, 4, 8);
    rect(x-2, y+32, 4, 8);
    rect(x+24, y+32, 4, 8);
    

    //row 2
    fill(0, 0, 255);
    rect(x2, y, 26, 38);
     fill(255);
    rect(x2+6,y+6,14,14);
    fill(0);
    rect(x2-2, y, 4, 8);
    rect(x2+24, y, 4, 8);
    rect(x2-2, y+32, 4, 8);
    rect(x2+24, y+32, 4, 8);

    //row 3
    fill(255, 120, 0);
    rect(x3, y, 26, 38);
     fill(255);
    rect(x3+6,y+6,14,14);
    fill(0);
    rect(x3-2, y, 4, 8);
    rect(x3+24, y, 4, 8);
    rect(x3-2, y+32, 4, 8);
    rect(x3+24, y+32, 4, 8);

    //row 4
    fill(0, 255, 0);
    rect(x4, y, 26, 38);
     fill(255);
    rect(x4+6,y+6,14,14);
    fill(0);
    rect(x4-2, y, 4, 8);
    rect(x4+24, y, 4, 8);
    rect(x4-2, y+32, 4, 8);
    rect(x4+24, y+32, 4, 8);
  }
  //getters

  public float getX()
  {
    return x;
  }  
  public float getdX2()
  {
    return x2;
  }  
  public float getX3()
  {
    return x3;
  }  
  public float getX4()
  {
    return x4;
  }  
  public float getY()
  {
    return y;
  }  

  //setters
  public void setX(float x)
  {
    this.x = x;
  }
  public void setX2(float x2)
  {
    this.x2 = x2;
  }
  public void setX3(float x3)
  {
    this.x3 = x3;
  }
  public void setX4(float x4)
  {
    this.x4 = x4;
  }
    public void setY(float y)
  {
    this.y = y;
  }
    public void setYspeed(float yspeed)
  {
    this.yspeed = yspeed;
  }
}