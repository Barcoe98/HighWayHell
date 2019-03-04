class mycar {
  //variables
  private float carX = 24;
  private float direction = 2;
  private float carY = 600;
  private float col = random(0, 200);

  //constructors
  mycar()
  {
  }

  mycar(float xCoord, float yCoord, float direction2)
  {
    carX = xCoord;
    carY = yCoord;
    direction = direction2;
  }  

  //methods
  public void buttons() {

    if (key == CODED) {       // when the left arrow is pressed, the car will move left at the speed set
      if (keyCode == LEFT) {
        carX = carX - direction;
      }
    }
    if (key == CODED) {       // when the right arrow is pressed, the car will move right at the speed set
      if (keyCode == RIGHT) {
        carX = carX + direction;
      }
    }


    if (carX <=60) //when car moves to where x = 60 , it wont move any less then 60
    {
      carX=60;
    }
    if (carX >=415) //when car moves to where x = 415 , it wont move any more then 415
    {
      carX=415;
    }
  }

  public void colour() {
    if (key == CODED) {       // when the right arrow is pressed, the car will move right at the speed set
      if (keyCode == UP) {
        fill(col, 0, 0);
      }
    }
  }

  public void show() {
    //car
    noStroke();
    //body
    fill(200,0,0);
    rect(carX, carY, 26, 26);
    //middle
    rect(carX+6, carY-18, 14, 50);
    //back
    rect(carX-8, carY+30, 42, 10);
    //driver
    fill(80);
    rect(carX+6, carY+8, 12, 12);
    fill(0);
    rect(carX+9, carY+12, 6, 6);
    //wheels
    fill(0);
    rect(carX, carY-18, 6, 8);
    rect(carX+20, carY-18, 6, 8);
    rect(carX-6, carY+18, 6, 8);
    rect(carX+26, carY+18, 6, 8);
  }

  //getters

  public float getcarX()
  {
    return carX;
  }  
  public float getCarY()
  {
    return carY;
  }  
  //public float getDestination()
  //{
  //  return destination;
  //}  


  //setters
  public void setCarX(float carX)
  {
    this.carX = carX;
  }
  public void setCarY(float carY)
  {
    this.carY = carY;
  }
  //public void setDestination(float destination)
  ///{
  //  this.destination = destination;
  //}
}