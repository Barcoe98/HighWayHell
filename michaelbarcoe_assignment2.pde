obstacle[] obstacles = new obstacle [8];
mycar car;

import javax.swing.*;
String Playername;
String Answer;
String controls;

void setup() {
  size(500, 700);
  Playername = JOptionPane.showInputDialog("Please Enter a Player Name","Tyrion Lannister"); //a display window will ask u type in a player name
  Answer = ("Hello " + Playername + " \nWelcome to Highway Hell, \nClick OK to Play");  // when u enter a name it will say hello and ur name and welcome
  controls = ("The contols are: Left Arrow = Move Left , Right Arrow = Move Right");  // the window will diplay the controls of the game
  JOptionPane.showMessageDialog( null, Answer );

  for (int i = 0; i < 8; i++) {
    obstacles[i] = new obstacle();
    car = new mycar();
  }
}

void draw() {
  fill(60);
  rect(0, 0, width, height);

  //road marking(solid)
  fill(255); 
  rect(54, 0, 5, height); 
  rect(width-57, 0, 5, height); 
  rect(217, 0, 5, height);
  rect(280, 0, 5, height);

  //road marking(spaced)
  for (int r = 0; r<=700; r=r+60) {
    fill(255);
    rect(138, r, 5, 26);
    rect(width-138, r, 5, 26);
  }

  //grass
  for (int g= 0; g<=650; g=g+226) {  
    fill(0, 200, 0);
    rect(g, 0, 50, height);
  }
  for(int t=30; t<=650;t=t+150){
    for (int g= 20; g<=650; g=g+226) {  
    fill(0, 100, 0);
    ellipse(g, t+4, 16, 16);
    }
  }
  for(int t=30; t<=650;t=t+150){
   for (int g= 26; g<=650; g=g+226) {  
    fill(0, 100, 0);
    ellipse(g+4, t+6, 16, 16);
   }
  }
  for(int t=30; t<=650;t=t+150){
  for (int g= 30; g<=650; g=g+226) {  
    fill(0, 100, 0);
    ellipse(g, t, 16, 16);
  }
  }

  for (int i = 0; i < 6; i++) {
    obstacles[i].drive();
    obstacles[i].show();
    obstacles[i].speedlimit();
  }
  car.buttons();
  car.show();
  car.colour();
  
  
  
  
}