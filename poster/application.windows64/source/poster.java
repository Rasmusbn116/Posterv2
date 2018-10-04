import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class poster extends PApplet {

//global
  //Page switchers
  boolean startPage=true;
  boolean game1Intro=false;
  boolean game1=false;
  boolean game2Intro=false;
  boolean game2=false;
  boolean game3Intro=false;
  boolean game3=false;
  boolean animation=false;
  Boolean endPage=false;
  
  //images
  PImage imgStartPage;
  PImage imgGame1Girl;
  PImage imgGame2Girl;
  PImage imgGame3Girl;
  PImage imgGame1BG;
  PImage imgGame2BG;
  PImage imgGame3BG;
  PImage imgEndPage;
  
  PImage dimgag;
  PImage mateo;
  PImage dglad;
  PImage dglass;
  
  //fonts
  PFont codeFont;
  PFont sansFont;
  
  //colors 
int orange = color(255,181,96);
int pink = color(255,159,173);
int blue = color(117,96,255);
int aBlack = color(0);
int white = color(255);
  
  //Buttons
  Button button1;
  Button button2;
  Button button3;
  Button button4;
  Button button5;
  Button button6;
 


public void setup(){
  //load pictures/fonts
  imgStartPage = loadImage("startPage.png");
  imgGame1Girl = loadImage("girlGames1.png");
  imgGame2Girl = loadImage("girlGames2.png");
  imgGame3Girl = loadImage("girlGames3.png");
  imgGame1BG = loadImage("girlGamesBG1.png");
  imgGame2BG = loadImage("girlGamesBG2.png");
  imgGame3BG = loadImage("girlGamesBG3.png");
  imgEndPage = loadImage("endPage.png");
  
  cgoals = loadImage("goals.png");
  ObstaclePicture = loadImage("boat.PNG");
  
  mateo = loadImage("mateo.JPG");
  dimgag = loadImage("sad.JPG"); 
  dglad = loadImage("glad.JPG");
  dglass = loadImage("dglad.jpg");
  
  codeFont = createFont("SourceCodePro-Regular.ttf",32);
  sansFont = createFont("ProcessingSansPro-Regular.ttf",50);
  
  //Makes a number of objects in the array
  for ( int i = 0; i < obstacle.length; i++) {       
    obstacle[i] = new Obstacle();                   } 
  //size of program
  
  }

public void draw(){
  //startPage
  if(startPage==true){
    image(imgStartPage,0,0);
    button1=new Button("Click to start",2,1);
    }
  if(game1Intro==true && game1==false){
    image(imgGame1BG, 0, 0);
    image(imgGame1Girl,0,0);
    button2=new Button("Click to start programming",3,2);
    }
  if(startPage==false && game1Intro==false && game1==false && game2==false && game2Intro==false && animation==false && game3==false && game3Intro==false){
    if(aMode==true){
      image(imgGame1BG, 0, 0);
      }
    else if
      (aMode==false){
      image(imgGame2BG, 0, 0);
      }
    strokeWeight(5);
    fill(255);
    rect(20.5f,20.5f,800,800);
    rect(520.5f,20.5f,300,800);
    rect(520.5f,20.5f,300,200);
    rect(20.5f,20.5f,500,100);
    rect(20.5f,120.5f,500,100);
  
    //UI text
    textFont(sansFont);
    textSize(58);
    fill(pink);
    text("DRAWING PROGRAM",23,90.5f);
    text("CODE",610.5f,90.5f);
    textSize(25);
    text("COLOR",52,150.5f);
    text("SIZE",186,150.5f);
    text("SHAPE",300,150.5f);
    text("RESET",422,150.5f);
    textFont(codeFont);
    if(aMode==true){
      game1=true;
      }
    else if
      (aMode==false){
      game2=true;
      }
    }
  if(game1==true && animation==false || game2==true && animation==false){
    //UI Filler
    noStroke();
    fill(white);  //background for UI
    rect(170,160,340,57.5f); //reseting settings
    
    
    //UI
    stroke(0);
    strokeWeight(5);
    rect(520.5f,120.5f,300,700);
    
    //UItext
    fill(aBlack);
    textSize(20);
    text("if (box(X) = color(Y));                   then(colorSelector(Z)=color(Y));",530.5f,150.5f,290,790);
    text("if (box(X) = stroke(Y);                   then(strokeSelector(Z)=stroke(Y);" ,530.5f,350.5f,290,790);  
    text("if (box(X) = shape(Y);                    then(shapeSelector(Z)=shape(Y);" ,530.5f,550.5f,290,790);  
    
    
    //Color Squares
    fill(aColor1);
    rect(aBoxDrawColor1X,aBoxDrawColorY,aBoxWH,aBoxWH);
    fill(aColor2);  
    rect(aBoxDrawColor2X,aBoxDrawColorY,aBoxWH,aBoxWH);
    fill(aColor3);
    rect(aBoxDrawColor3X,aBoxDrawColorY,aBoxWH,aBoxWH);
    noFill(); // To make checkboxes white
    
    //Stroke lines 
    strokeWeight(aStrokeDraw1);
    line(aStrokeDraw1X,aStrokeDrawY1,aStrokeDraw1X,aStrokeDrawY2);
    strokeWeight(aStrokeDraw2);
    line(aStrokeDraw2X,aStrokeDrawY1,aStrokeDraw2X,aStrokeDrawY2);
    strokeWeight(aStrokeDraw3);
    line(aStrokeDraw3X,aStrokeDrawY1,aStrokeDraw3X,aStrokeDrawY2);
    strokeWeight(5); 
    
    //Shapes
    line(aShapeLineDrawX,aShapeLineDrawY1,aShapeLineDrawX,aShapeLineDrawY2);
    if(aShapeSelectorProg==2){
      ellipse(aShapeEllipseDrawX,aShapeEllipseDrawY,aShapeWH,aShapeWH);
      }
    if(aShapeSelectorProg==3){
      rect(aShapeRectDrawX,aShapeRectDrawY,aShapeWH,aShapeWH);
      }
    
    //Resetbutton
    rect(aBoxDrawResetX,aBoxDrawResetY,aBoxWH,aBoxWH);
    
        
    // squares to put Colorsquares in
    rect(aBoxProgColor1X,aBoxProgColor1Y,aBoxWH,aBoxWH);
    rect(aBoxProgColor2X,aBoxProgColor2Y,aBoxWH,aBoxWH);
    rect(aBoxProgColor3X,aBoxProgColor3Y,aBoxWH,aBoxWH);
    
    
    // Squares to put Colorsquares in
    rect(aBoxProgStroke1X,aBoxProgStroke1Y,aBoxWH,aBoxWH);
    rect(aBoxProgStroke2X,aBoxProgStroke2Y,aBoxWH,aBoxWH);
    rect(aBoxProgStroke3X,aBoxProgStroke3Y,aBoxWH,aBoxWH);
    
    // Square to put Shapes in
    rect(aBoxShapeProgX,aBoxShapeProgY,aBoxWH,aBoxWH);
    
    
    
    // moving ColorSquares
    fill(orange);  
    rect(aBoxProgRedX,aBoxProgRedY,aBoxWH,aBoxWH);
    fill(blue);  
    rect(aBoxProgBlueX,aBoxProgBlueY,aBoxWH,aBoxWH);
    fill(pink);  
    rect(aBoxProgGreenX,aBoxProgGreenY,aBoxWH,aBoxWH);
    
    //movement of ColorSquare
      if(aMode==true){
          if(mouseX> 520.5f+aBoxWH && mouseX < 820.5f - aBoxWH && mouseY > 20.5f + aBoxWH && mouseY < 820.5f - aBoxWH){
            if((mousePressed) && ( mouseX > aBoxProgRedX && mouseX <aBoxProgRedX+aBoxWH && mouseY>aBoxProgRedY && mouseY<aBoxProgRedY+aBoxWH) && aBoxProgMove == 0 || aBoxProgMove == 1) {
              aBoxProgRedX=mouseX-20; 
              aBoxProgRedY=mouseY-20;
              aBoxProgMove=1;
              }
                    
            else if ((mousePressed) && (mouseX > aBoxProgBlueX && mouseX <aBoxProgBlueX+aBoxWH && mouseY>aBoxProgBlueY && mouseY<aBoxProgBlueY+aBoxWH) && aBoxProgMove == 0 || aBoxProgMove == 2) {
              aBoxProgBlueX=mouseX-20; 
              aBoxProgBlueY=mouseY-20;
              aBoxProgMove=2;
              }
              
            else if ((mousePressed) && (mouseX > aBoxProgGreenX && mouseX <aBoxProgGreenX+aBoxWH && mouseY>aBoxProgGreenY && mouseY<aBoxProgGreenY+aBoxWH) && aBoxProgMove == 0 || aBoxProgMove == 3) {
              aBoxProgGreenX=mouseX-20; 
              aBoxProgGreenY=mouseY-20;
              aBoxProgMove=3;
              }
            }
          }
    
            
  //StrokeWeight lines
  strokeWeight(aStrokeWeight1);
  line(aStrokeSize1X,aStrokeSize1Y1,aStrokeSize1X,aStrokeSize1Y2);
  strokeWeight(aStrokeWeight5);
  line(aStrokeSize5X,aStrokeSize5Y1,aStrokeSize5X,aStrokeSize5Y2);
  strokeWeight(aStrokeWeight10);
  line(aStrokeSize10X,aStrokeSize10Y1,aStrokeSize10X,aStrokeSize10Y2);
  strokeWeight(aStrokeWeight15);
  line(aStrokeSize15X,aStrokeSize15Y1,aStrokeSize15X,aStrokeSize15Y2);
           
  //Movement of Stroke
  if(aMode==true){
    if(mouseX> 520.5f+aBoxWH && mouseX < 820.5f - aBoxWH && mouseY > 20.5f + aBoxWH && mouseY < 820.5f - aBoxWH){
        if((mousePressed) && ( mouseX > aStrokeSize1X-15 && mouseX <aStrokeSize1X+15 && mouseY>aStrokeSize1Y1 && mouseY<aStrokeSize1Y2) && aStrokeSizeMove == 0 || aStrokeSizeMove == 1) {
        aStrokeSize1X=mouseX; 
        aStrokeSize1Y1=mouseY-20;
        aStrokeSize1Y2=mouseY+20;
        aStrokeSizeMove=1;
        }
        if((mousePressed) && ( mouseX > aStrokeSize5X-15 && mouseX <aStrokeSize5X+15 && mouseY>aStrokeSize5Y1 && mouseY<aStrokeSize5Y2) && aStrokeSizeMove == 0 || aStrokeSizeMove == 2) {
        aStrokeSize5X=mouseX; 
        aStrokeSize5Y1=mouseY-20;
        aStrokeSize5Y2=mouseY+20;
        aStrokeSizeMove=2;
        }
        if((mousePressed) && ( mouseX > aStrokeSize10X-15 && mouseX <aStrokeSize10X+15 && mouseY>aStrokeSize10Y1 && mouseY<aStrokeSize10Y2) && aStrokeSizeMove == 0 || aStrokeSizeMove == 3) {
        aStrokeSize10X=mouseX; 
        aStrokeSize10Y1=mouseY-20;
        aStrokeSize10Y2=mouseY+20;
        aStrokeSizeMove=3;
        }
        if((mousePressed) && ( mouseX > aStrokeSize15X-15 && mouseX <aStrokeSize15X+15 && mouseY>aStrokeSize15Y1 && mouseY<aStrokeSize15Y2)  && aStrokeSizeMove == 0 || aStrokeSizeMove == 4) {
        aStrokeSize15X=mouseX; 
        aStrokeSize15Y1=mouseY-20;
        aStrokeSize15Y2=mouseY+20;
        aStrokeSizeMove=4;
        }
      }
    }
  
  //Moving shapes
  noFill();
  strokeWeight(5);
  ellipse(aShapeEllipseProgX,aShapeEllipseProgY,aShapeWH,aShapeWH);
  rect(aShapeRectProgX,aShapeRectProgY,aShapeWH,aShapeWH);
  
  
  //movement of Shapes
  if(aMode==true){
      if(mouseX> 520.5f+aBoxWH && mouseX < 820.5f - aBoxWH && mouseY > 20.5f + aBoxWH && mouseY < 820.5f - aBoxWH){
          if((mousePressed) && ( mouseX > aShapeRectProgX && mouseX <aShapeRectProgX+aShapeWH && mouseY>aShapeRectProgY && mouseY<aShapeRectProgY+aShapeWH) && aShapeMove == 0 || aShapeMove == 1) {
             aShapeRectProgX=mouseX-20; 
             aShapeRectProgY=mouseY-20;
             aShapeMove=1;
          }
          if((mousePressed) && sq(mouseX-aShapeEllipseProgX)+sq(mouseY-aShapeEllipseProgY)<sq(aShapeWH)/4&& aShapeMove == 0 || aShapeMove == 2){
             aShapeEllipseProgX=mouseX; 
             aShapeEllipseProgY=mouseY;
             aShapeMove=2;
            }
          }
       }
  
  //choosing color
    if(mousePressed) {
      
       if(mouseY >aBoxDrawColorY && mouseY < aBoxDrawColorY + aBoxWH){
          if(mouseX > aBoxDrawColor1X && mouseX < aBoxDrawColor1X+aBoxWH){
            stroke(aColor1);
            aColor=1;
            }
          if(mouseX>aBoxDrawColor2X && mouseX < aBoxDrawColor2X+aBoxWH){
            stroke(aColor2);
            aColor=2;
            }
          if(mouseX>aBoxDrawColor3X && mouseX<aBoxDrawColor3X+aBoxWH){
            stroke(aColor3);
            aColor=3;
            }
         }
    }
     
    //choosing strokeweight
    if(mousePressed) {
      
       if(mouseY >aStrokeDrawY1 && mouseY < aStrokeDrawY2){
          if(mouseX > aStrokeDraw1X-10 && mouseX < aStrokeDraw1X+10){
            strokeWeight(aStrokeDraw1);
            aStroke=1;
            }
          if(mouseX > aStrokeDraw2X-10 && mouseX < aStrokeDraw2X+10){
            strokeWeight(aStrokeDraw2);
            aStroke=2;
            }
          if(mouseX > aStrokeDraw3X-10 && mouseX < aStrokeDraw3X+10){
            strokeWeight(aStrokeDraw3);
            aStroke=3;
            }
         }
      }
  //Choosing Shape
    if(mouseX > aShapeLineDrawX-10 && mouseX < aShapeLineDrawX+10 && mouseY >aShapeLineDrawY1 && mouseY < aShapeLineDrawY2){
      aShapeSelector=1;
      }
    if(mouseX > aShapeRectDrawX && mouseX < aShapeRectDrawX + aShapeWH && mouseY >aShapeRectDrawY && mouseY < aShapeRectDrawY + aShapeWH && aShapeSelectorProg==3){
      aShapeSelector=3;
      }
    if (mouseX > aShapeRectDrawX && mouseX < aShapeRectDrawX + aShapeWH && mouseY >aShapeRectDrawY && mouseY < aShapeRectDrawY + aShapeWH && aShapeSelectorProg==2){
      aShapeSelector=2;
      }
         
  //numbers in squares
  textSize(50);
  fill(0,50);
  text("1",aBoxProgColor1X+8,aBoxProgColor1Y + aBoxWH-3);
  text("2",aBoxProgColor2X+8,aBoxProgColor2Y + aBoxWH-3);
  text("3",aBoxProgColor3X+8,aBoxProgColor3Y + aBoxWH-3);
  text("4",aBoxProgStroke1X+8,aBoxProgStroke1Y + aBoxWH-3);
  text("5",aBoxProgStroke2X+8,aBoxProgStroke2Y + aBoxWH-3);
  text("6",aBoxProgStroke3X+8,aBoxProgStroke3Y + aBoxWH-3);
  text("7",aBoxShapeProgX+8,aBoxShapeProgY + aBoxWH-3);
    
  // Drawing Correct Color 
  if (aColor==1){
    stroke(aColor1);
    }
  else if (aColor==2){
    stroke(aColor2);
    }
  else if (aColor==3){
    stroke(aColor3);
    }
  // Drawing Correct Stroke 
  if (aStroke==1){
    strokeWeight(aStrokeDraw1);
    }
  else if (aStroke==2){
    strokeWeight(aStrokeDraw2);  
    }
  else if (aStroke==3){
    strokeWeight(aStrokeDraw3);
    }
  
  // Drawing line
    if(aMode==false){
      if((mousePressed) && ( mouseX < 510.5f && mouseX >30.5f && mouseY>230.5f && mouseY<810.5f) && (aShapeSelector==1)){
        line(mouseX, mouseY, pmouseX, pmouseY);
        }
      }  
  //Choosing of programs
    stroke(0);
    strokeWeight(5);
    if (aMode==false){
        if(aProg==true){            //for void setup objects
          fill(0,150);
          rect(520.5f,20.5f,300,100);
          aProg=false;
          }
        fill(0,150);                 //for void draw objects
        rect(520.5f,120.5f,300,700);
        }
     if (aMode==true){
        if(aDraw==true){            //for void setup objects
        fill(0,150);
        rect(20.5f,20.5f,500,800); 
        aDraw=false;
        }
      fill(0,150);                 //for void draw objects
      noStroke();
      rect(170,160,340,58);
      fill(white);
      
      if(game1==true && game2==false){
        image(imgGame1Girl, 0, 0, width, height);
        button3=new Button("Click to continue",3,3);
        }
       }
    }

      
     
    if(game2Intro==true){
     image(imgGame2BG, 0, 0, width, height);
     image(imgGame2Girl,0,0);
     game2=false;
     button4=new Button("Click to start drawing",3,4);
     }
   if(game2==true && animation==false ){
       image(imgGame2Girl,0,0);
     button5=new Button("Click to continue",3,5);
    
     }
   if(game3Intro==true){
     image(imgGame3BG, 0, 0, width, height);
     image(imgGame3Girl,0,0);
     button6=new Button("Click to start the game",3,6);
    }
   if(game3==true && animation==false){
      image(imgGame3BG, 0, 0, width, height);
      fill(0xffCCD7FC);
      rect(cborder, cborder, cframewh, cframewh);
      // Gameborders
      textSize(24);
      fill(pink);
      text(cpoint,21,40);
      cpoint = cpoint + 1;
    
      if ( cpoint >= 1001){
      cpoint = cpoint -1;}
      //water 
    
      //goals
      image(cgoals,160,cimgpos);
    
      if ( cpoint >= 750){
      cimgpos += 5;} 
      if ( cimgpos > 500){
      cimgpos -=5;}
    
      
    
      // Drag the box with press
      
      if(mousePressed){
        cboxposx = mouseX-mX-40;
        cboxposy = mouseY-mY;
    
        }
      fill(pink);
      rect(cboxposx, mY+700, cboxsizex, cboxsizey);
      
      image(imgGame3Girl, 0, 0, width, height);
      
       //images falling down
       for ( int i = 0; i < obstacle.length; i++) {
        obstacle[i].fall();
        obstacle[i].show();
        
         }
        if ( cpoint == 0){
          cimgpos = -400;}
        if (cboxposx <= 23){
          cboxposx += 30;}
        if (cboxposx >= 820){
          cboxposx -=100 ;}
      
        
        if(cpoint==1000){
          cpoint=1000;
          game3=false;
          animation=true;
          }
       }
        if(animation==true && game3==false){
          background(white);

          fill(white); 
          image(dglad,boxpos1x,boxpos1y);
          boxpos1x--;
          
          if (boxpos1x == stopbox1){
            boxpos1x++;
          }
          
         
          
          if (boxpos1x==stopbox1){
            boxpos2x-=2;
          
          
          }
          // text starts about here
          
          textSize(40);
          fill(pink);
          text("Congratulations! We won!",dtextpos1,300);
          
          if (boxpos1x >= 310){  
            dtextpos1--;
          }
          String dtext2 = "Now please, take a look at the job opportunities";
          
          text(dtext2,dtextpos2,300,300,200);
          if (boxpos1x == 401){
            dtextpos2+=4;
            
          if (dtextpos2 >=100)
            dtextpos2 -=4;
            
          }
          
          text(djob2,flowstart1,dstart1);
          text(djob1,flowstart2,dstart2);
          text(djob3,flowstart3,dstart3);
          text(djob4,flowstart4,dstart1);
          text(djob5,flowstart5,dstart2);
          text(djob6,flowstart6,dstart3);
          text(djob7,flowstart7,dstart1);
          text(djob8,flowstart8,dstart2);
          text(djob9,flowstart9,dstart3);
          text(djob10,flowstart10,dstart1);
          text(djob11,flowstart11,dstart2);
          
          // all advertising
          if (dtextpos2 >=flowstartcrit){
            flowstart1+=4; }
          if (flowstart1 >0){
            flowstart2+=3; }
          if (flowstart2 > 0) {
            flowstart3+=3; }
          if (flowstart3 >0){
            flowstart4+=5; }
          if (flowstart4>0){
            flowstart5 +=4;}
          if (flowstart5 >0){
            flowstart7 +=4; }
          if (flowstart7 >0){
            flowstart6 +=3; }
          if (flowstart6 >0) {
            flowstart8 += 4; }
          if (flowstart8>0){
            flowstart9 +=6; }
          if (flowstart9>0){
            flowstart10 +=5; }
          if (flowstart10>0){
            flowstart11 +=5; }
          
          //more textmoving
           
          if (flowstart4 >0){
            dtextpos1 += 1000;
            dtextpos2 -= 1000;}
          
          if (flowstart11 >900){
            boxpos1x -= 1000; }
          image(dglass,boxpos3x,boxpos1y);  
          
          if (boxpos1x<0){
            boxpos3x-=3;}
            
          if (boxpos3x <=300){
            boxpos3x+=3;}
            
          textSize(32);
          fill(pink);
          text("Doesn't that sound amazing?",dtextpos8,300);
          
          if (boxpos3x <= 810){  
              dtextpos8-=3;
              }
          }        
  if(dtextpos8 <= 0){
  animation=false;
  endPage=true;
  image(imgEndPage,0,0);
  }
  
        
     
}
  
  

























public void mouseClicked(){
  //global
  if(startPage==true){
    button1.mouseClicked();
    }
  else if(game1Intro==true){
    button2.mouseClicked();
    }
   else if(game1==true && aMode==true){
    button3.mouseClicked();
    }
   else if(game2Intro==true && aMode==false){
    button4.mouseClicked();
    }
   else if(game2==true && aMode==false ){
    button5.mouseClicked();
    }
   else if(game3Intro==true ){
    button6.mouseClicked();
    }
 
  //game 1+2
  if(game1==true || game2==true){
    if(aMode==false){
      if(mouseX > aBoxDrawResetX && mouseX < aBoxDrawResetX+aBoxWH && mouseY > aBoxDrawResetY && mouseY < aBoxDrawResetX+aBoxWH){
        fill(255);
        strokeWeight(5);
        stroke(0);
        rect(aCanvasX,aCanvasY,aCanvasW,aCanvasH);
        }
      }
    }
  }

public void mousePressed(){
  //game1+2
  if(game1==true || game2==true){
   if(aMode==false){ 
    aDrawRectEllipseX=mouseX;
    aDrawRectEllipseY=mouseY;  
    }
  }
 }
public void mouseReleased (){
  //game 1+2
  if(game1==true || game2==true){
      //Red square
      if (aBoxProgRedX+20>aBoxProgColor1X && aBoxProgRedX+20<(aBoxProgColor1X+aBoxWH) && aBoxProgRedY+20 >aBoxProgColor1Y && aBoxProgRedY+20<(aBoxProgColor1Y+aBoxWH)) {
        aColor1=orange;
        aBoxProgRedX=aBoxProgColor1X;
        aBoxProgRedY=aBoxProgColor1Y;
      }
      if (aBoxProgRedX+20>aBoxProgColor2X && aBoxProgRedX+20<(aBoxProgColor2X+aBoxWH) && aBoxProgRedY+20 >aBoxProgColor2Y && aBoxProgRedY+20<(aBoxProgColor2Y+aBoxWH)) {
        aColor2=orange;
        aBoxProgRedX=aBoxProgColor2X;
        aBoxProgRedY=aBoxProgColor2Y;
      }
      if (aBoxProgRedX+20>aBoxProgColor3X && aBoxProgRedX+20<(aBoxProgColor3X+aBoxWH) && aBoxProgRedY+20 >aBoxProgColor3Y && aBoxProgRedY+20<(aBoxProgColor3Y+aBoxWH)) {
        aColor3=orange;
        aBoxProgRedX=aBoxProgColor3X;
        aBoxProgRedY=aBoxProgColor3Y;
      }
      //Blue square
       if (aBoxProgBlueX+20>aBoxProgColor1X && aBoxProgBlueX+20<(aBoxProgColor1X+aBoxWH) && aBoxProgBlueY+20 >aBoxProgColor1Y && aBoxProgBlueY+20<(aBoxProgColor1Y+aBoxWH)) {
        aColor1=blue;
        aBoxProgBlueX=aBoxProgColor1X;
        aBoxProgBlueY=aBoxProgColor1Y;
      }
      if (aBoxProgBlueX+20>aBoxProgColor2X && aBoxProgBlueX+20<(aBoxProgColor2X+aBoxWH) && aBoxProgBlueY+20 >aBoxProgColor2Y && aBoxProgBlueY+20<(aBoxProgColor2Y+aBoxWH)) {
        aColor2=blue;
        aBoxProgBlueX=aBoxProgColor2X;
        aBoxProgBlueY=aBoxProgColor2Y;
      }
      if (aBoxProgBlueX+20>aBoxProgColor3X && aBoxProgBlueX+20<(aBoxProgColor3X+aBoxWH) && aBoxProgBlueY+20 >aBoxProgColor3Y && aBoxProgBlueY+20<(aBoxProgColor3Y+aBoxWH)) {
        aColor3=blue;
        aBoxProgBlueX=aBoxProgColor3X;
        aBoxProgBlueY=aBoxProgColor3Y;
      }
      //Green square
      if (aBoxProgGreenX+20>aBoxProgColor1X && aBoxProgGreenX+20<(aBoxProgColor1X+aBoxWH) && aBoxProgGreenY+20 >aBoxProgColor1Y && aBoxProgGreenY+20<(aBoxProgColor1Y+aBoxWH)) {
        aColor1=pink;
        aBoxProgGreenX=aBoxProgColor1X;
        aBoxProgGreenY=aBoxProgColor1Y;
      }
      if (aBoxProgGreenX+20>aBoxProgColor2X && aBoxProgGreenX+20<(aBoxProgColor2X+aBoxWH) && aBoxProgGreenY+20 >aBoxProgColor2Y && aBoxProgGreenY+20<(aBoxProgColor2Y+aBoxWH)) {
        aColor2=pink;
        aBoxProgGreenX=aBoxProgColor2X;
        aBoxProgGreenY=aBoxProgColor2Y;
      }
      if (aBoxProgGreenX+20>aBoxProgColor3X && aBoxProgGreenX+20<(aBoxProgColor3X+aBoxWH) && aBoxProgGreenY+20 >aBoxProgColor3Y && aBoxProgGreenY+20<(aBoxProgColor3Y+aBoxWH)) {
        aColor3=pink;
        aBoxProgGreenX=aBoxProgColor3X;
        aBoxProgGreenY=aBoxProgColor3Y;
      }
      //Stroke 1
      if (aStrokeSize1X > aBoxProgStroke1X && aStrokeSize1X < aBoxProgStroke1X + aBoxWH && aStrokeSize1Y1 +20  > aBoxProgStroke1Y && aStrokeSize1Y2 - 20 < aBoxProgStroke1Y +aBoxWH){
      aStrokeDraw1=aStrokeWeight1;
      aStrokeSize1X=aBoxProgStroke1X+20;
      aStrokeSize1Y1=aBoxProgStroke1Y;
      aStrokeSize1Y2=aBoxProgStroke1Y+aBoxWH;
      }
      if (aStrokeSize1X > aBoxProgStroke2X && aStrokeSize1X < aBoxProgStroke2X + aBoxWH && aStrokeSize1Y1 +20  > aBoxProgStroke2Y && aStrokeSize1Y2 - 20 < aBoxProgStroke2Y +aBoxWH){
      aStrokeDraw2=aStrokeWeight1;
      aStrokeSize1X=aBoxProgStroke2X+20;
      aStrokeSize1Y1=aBoxProgStroke2Y;
      aStrokeSize1Y2=aBoxProgStroke2Y+aBoxWH;
      }
      if (aStrokeSize1X > aBoxProgStroke3X && aStrokeSize1X < aBoxProgStroke3X + aBoxWH && aStrokeSize1Y1 +20  > aBoxProgStroke3Y && aStrokeSize1Y2 - 20 < aBoxProgStroke3Y +aBoxWH){
      aStrokeDraw3=aStrokeWeight1;
      aStrokeSize1X=aBoxProgStroke3X+20;
      aStrokeSize1Y1=aBoxProgStroke3Y;
      aStrokeSize1Y2=aBoxProgStroke3Y+aBoxWH;
      }
      //Stroke 5
      if (aStrokeSize5X > aBoxProgStroke1X && aStrokeSize5X < aBoxProgStroke1X + aBoxWH && aStrokeSize5Y1 +20  > aBoxProgStroke1Y && aStrokeSize5Y2 - 20 < aBoxProgStroke1Y +aBoxWH){
      aStrokeDraw1=aStrokeWeight5;
      aStrokeSize5X=aBoxProgStroke1X+20;
      aStrokeSize5Y1=aBoxProgStroke1Y;
      aStrokeSize5Y2=aBoxProgStroke1Y+aBoxWH;
      }
      if (aStrokeSize5X > aBoxProgStroke2X && aStrokeSize5X < aBoxProgStroke2X + aBoxWH && aStrokeSize5Y1 +20  > aBoxProgStroke2Y && aStrokeSize5Y2 - 20 < aBoxProgStroke2Y +aBoxWH){
      aStrokeDraw2=aStrokeWeight5;
      aStrokeSize5X=aBoxProgStroke2X+20;
      aStrokeSize5Y1=aBoxProgStroke2Y;
      aStrokeSize5Y2=aBoxProgStroke2Y+aBoxWH;
      }
      if (aStrokeSize5X > aBoxProgStroke3X && aStrokeSize5X < aBoxProgStroke3X + aBoxWH && aStrokeSize5Y1 +20  > aBoxProgStroke3Y && aStrokeSize5Y2 - 20 < aBoxProgStroke3Y +aBoxWH){
      aStrokeDraw3=aStrokeWeight5;
      aStrokeSize5X=aBoxProgStroke3X+20;
      aStrokeSize5Y1=aBoxProgStroke3Y;
      aStrokeSize5Y2=aBoxProgStroke3Y+aBoxWH;
      }
      //Stroke 10
      if (aStrokeSize10X > aBoxProgStroke1X && aStrokeSize10X < aBoxProgStroke1X + aBoxWH && aStrokeSize10Y1 +20  > aBoxProgStroke1Y && aStrokeSize10Y2 - 20 < aBoxProgStroke1Y +aBoxWH){
      aStrokeDraw1=aStrokeWeight10;
      aStrokeSize10X=aBoxProgStroke1X+20;
      aStrokeSize10Y1=aBoxProgStroke1Y;
      aStrokeSize10Y2=aBoxProgStroke1Y+aBoxWH;
      }
      if (aStrokeSize10X > aBoxProgStroke2X && aStrokeSize10X < aBoxProgStroke2X + aBoxWH && aStrokeSize10Y1 +20  > aBoxProgStroke2Y && aStrokeSize10Y2 - 20 < aBoxProgStroke2Y +aBoxWH){
      aStrokeDraw2=aStrokeWeight10;
      aStrokeSize10X=aBoxProgStroke2X+20;
      aStrokeSize10Y1=aBoxProgStroke2Y;
      aStrokeSize10Y2=aBoxProgStroke2Y+aBoxWH;
      }
      if (aStrokeSize10X > aBoxProgStroke3X && aStrokeSize10X < aBoxProgStroke3X + aBoxWH && aStrokeSize10Y1 +20  > aBoxProgStroke3Y && aStrokeSize10Y2 - 20 < aBoxProgStroke3Y +aBoxWH){
      aStrokeDraw3=aStrokeWeight10;
      aStrokeSize10X=aBoxProgStroke3X+20;
      aStrokeSize10Y1=aBoxProgStroke3Y;
      aStrokeSize10Y2=aBoxProgStroke3Y+aBoxWH;
      }
      //Stroke 15
      if (aStrokeSize15X > aBoxProgStroke1X && aStrokeSize15X < aBoxProgStroke1X + aBoxWH && aStrokeSize15Y1 +20  > aBoxProgStroke1Y && aStrokeSize15Y2 - 20 < aBoxProgStroke1Y +aBoxWH){
      aStrokeDraw1=aStrokeWeight15;
      aStrokeSize15X=aBoxProgStroke1X+20;
      aStrokeSize15Y1=aBoxProgStroke1Y;
      aStrokeSize15Y2=aBoxProgStroke1Y+aBoxWH;
      }
      if (aStrokeSize15X > aBoxProgStroke2X && aStrokeSize15X < aBoxProgStroke2X + aBoxWH && aStrokeSize15Y1 +20  > aBoxProgStroke2Y && aStrokeSize15Y2 - 20 < aBoxProgStroke2Y +aBoxWH){
      aStrokeDraw2=aStrokeWeight15;
      aStrokeSize15X=aBoxProgStroke2X+20;
      aStrokeSize15Y1=aBoxProgStroke2Y;
      aStrokeSize15Y2=aBoxProgStroke2Y+aBoxWH;
      }
      if (aStrokeSize15X > aBoxProgStroke3X && aStrokeSize15X < aBoxProgStroke3X + aBoxWH && aStrokeSize15Y1 +20  > aBoxProgStroke3Y && aStrokeSize15Y2 - 20 < aBoxProgStroke3Y +aBoxWH){
      aStrokeDraw3=aStrokeWeight15;
      aStrokeSize15X=aBoxProgStroke3X+20;
      aStrokeSize15Y1=aBoxProgStroke3Y;
      aStrokeSize15Y2=aBoxProgStroke3Y+aBoxWH;
      }
      //Rect
      if (aShapeRectProgX > aBoxShapeProgX - 20 && aShapeRectProgX + aShapeWH  < aBoxShapeProgX + aBoxWH + 20 && aShapeRectProgY  > aBoxShapeProgY - 20 && aShapeRectProgY + aShapeWH < aBoxShapeProgY +aBoxWH + 20){
      aShapeSelectorProg=3;
      aShapeRectProgX=aBoxShapeProgX+5;
      aShapeRectProgY=aBoxShapeProgY+5;
      }
      //ellipse
      if (aShapeEllipseProgX > aBoxShapeProgX  && aShapeEllipseProgX < aBoxShapeProgX + aBoxWH && aShapeEllipseProgY  > aBoxShapeProgY && aShapeEllipseProgY< aBoxShapeProgY +aBoxWH ){
      aShapeSelectorProg=2;
      aShapeEllipseProgX=aBoxShapeProgX+20;
      aShapeEllipseProgY=aBoxShapeProgY+20;
      }
        // Drawing Correct Color 
        if (aColor==1){
          stroke(aColor1);
        }
        else if (aColor==2){
          stroke(aColor2);
        }
        else if (aColor==3){
          stroke(aColor3);
        }
        // Drawing Correct Stroke 
        if (aStroke==1){
          strokeWeight(aStrokeDraw1);
        }
        else if (aStroke==2){
          strokeWeight(aStrokeDraw2);  
        }
        else if (aStroke==3){
          strokeWeight(aStrokeDraw3);
        }
      //Draw Ellipse
      if(aShapeSelector==2 && ( mouseX < 510.5f && mouseX >30.5f && mouseY>230.5f && mouseY<810.5f)){
        aDrawEllipseW=mouseX-aDrawRectEllipseX;
        aDrawEllipseH=mouseY-aDrawRectEllipseY;
        noFill();
        ellipse(aDrawRectEllipseX, aDrawRectEllipseY, aDrawEllipseW*2, aDrawEllipseH*2);
        }
       //Draw Rect
      if(aShapeSelector==3 && ( mouseX < 510.5f && mouseX >30.5f && mouseY>230.5f && mouseY<810.5f)){
        aDrawRectW=mouseX-aDrawRectEllipseX;
        aDrawRectH=mouseY-aDrawRectEllipseY;
        noFill();
        rect(aDrawRectEllipseX, aDrawRectEllipseY, aDrawRectW, aDrawRectH);
        }
        //resetters
        aBoxProgMove=0; 
        aStrokeSizeMove=0;
        aShapeMove=0;
        }
    }
    
  
class Button{
  
String buttonText;
boolean visible=true;
int buttonId;
int buttonPosition;
float xx;
float yy;
float ww; 
float hh;
  /**
  Create button.
  Select position:
  1 -- center
  2 -- left up corner
  3 -- right up corner
  4 -- left down corner
  5 -- right down corner
  **/
  public Button(String text, int position, int id){
  buttonText = text;
  buttonPosition = position;
  buttonId = id;
  toggleVisibility();
  }

public void mouseClicked(){
  if ((mouseX >= xx) && (mouseY >= yy) && (mouseX < (xx + ww)) && (mouseY < (yy + hh))){
    println("Button clicked " + buttonText);
      if (buttonId == 1){
        startPage = false;
        game1Intro = true;
        }
      if (buttonId == 2){
        game1Intro = false;
        }
      if (buttonId == 3){
        game1=false;
        game2Intro = true;
        aMode=false;
        }
      if (buttonId == 4){
        game2Intro = false;
        }
      if (buttonId == 5){
        game2 = false;
        game3Intro = true;
        }
      if (buttonId == 6){
        game3Intro = false;
        game3 = true;
        }
      
   } 
 
}


public void handlePosition(int position){

  if (position == 1){
    setPosition(width/2, height/2, 50, 50);
  } else if(position == 2){
    setPosition(650, 800, 50, 50);
  }  else if(position == 3){
    setPosition(700, 1100, 50, 50);
  }  else if(position == 4){
  
  } else if(position == 5){
  
  } else {
  println("Position not found");
  
  }
 
}

public void setPosition(float x, float y, float w, float h){
  xx = x;
  yy = y;
  ww = w;
  hh = h;
}

public void toggleVisibility(){

  if (visible){
    visible = false;
  } else {
    visible = true;
  }
  handlePosition(buttonPosition);
  textFont(sansFont);
  textSize(32);
  textAlign(RIGHT);
  fill(pink);
  stroke(0);
  strokeWeight(5);
  

  text(buttonText, xx-5, yy+35);
  rect(xx, yy, ww, hh, 7);
  textAlign(LEFT);
}

  
}
float random = random(20,820);
PImage ObstaclePicture;

class Obstacle {                    //The obstacles
  float x = random(10,750);          //Random spawn X values
  float y = random(21,21);       //Random spawn Y values
  float yspeed = random(3,7);       //Randomized speed/fall values of the obstacles
  

  
  public void fall(){                      //Command for a "fall" of the obstacles
    y = y + yspeed;                 //Spawn postition + Speed
          
    if (y > 750) {               //If object leaves the screen, it comes back from the top
      y = random(21,21);
      }
  }
  public void show() {                     //Look of the obstacle
    //stroke(255);
    //line(x,y,x,y+10);
    fill(255);
    image(ObstaclePicture,x,y,100,100);//Look of the obstacle
  if ( y > 780){
    y = y + 400; }
  if ( y == 1){
  y = y + 35;}  
 
  if (  x>cboxposx - 40 && x<cboxposx + 40 && y >= cboxposy - 50 ){
    cpoint = 0; }
 
}}
//mode switcher
boolean aMode=true;
boolean aProg=true;
boolean aDraw=true;

int aColor1= color(255); //Color 1st
int aColor2= color(255);
int aColor3= color(255);
int   aColor; // to keep the stroke UI black

float aCanvasX=20.5f;
float aCanvasY=220.5f;
float aCanvasW=500;
float aCanvasH=600;
float aCanvasSafety=10;


int   aBoxWH=40; //square width Height
float aBoxDrawColor1X=25.5f; //Color 1st X
float aBoxDrawColor2X=75.5f;
float aBoxDrawColor3X=125.5f;
float aBoxDrawColorY=175.5f;

float aBoxProgColor1X=600; //Square Color 1st X
float aBoxProgColor1Y=220;
float aBoxProgColor2X=650;
float aBoxProgColor2Y=220;
float aBoxProgColor3X=700;
float aBoxProgColor3Y=220;

float aBoxProgRedX=600; //Square Red x
float aBoxProgRedY=270;
float aBoxProgBlueX=650;
float aBoxProgBlueY=270;
float aBoxProgGreenX=700;
float aBoxProgGreenY=270;
int aBoxProgMove=0; // to not loose other Square when moving

int aStrokeWeight1=1; //Stroke Weight 1
int aStrokeWeight5=5;
int aStrokeWeight10=10;
int aStrokeWeight15=15;

int aStrokeDraw1=0; //stroke 1st
int aStrokeDraw2=0;
int aStrokeDraw3=0;
int aStroke; // to keep strokewaight the same in UI

float aStrokeDraw1X = 190; //stroke 1st X
float aStrokeDraw2X = 210;
float aStrokeDraw3X = 230;
float aStrokeDrawY1 = 175;
float aStrokeDrawY2 = 175.5f + aBoxWH;

float aStrokeSize1X = 560.5f; //Stroke Size 1st X
float aStrokeSize5X = 635.5f;
float aStrokeSize10X = 710.5f;
float aStrokeSize15X = 785.5f;
float aStrokeSize1Y1 = 475;
float aStrokeSize1Y2 = 475 + aBoxWH;
float aStrokeSize5Y1 = 475;
float aStrokeSize5Y2 = 475 + aBoxWH;
float aStrokeSize10Y1 = 475;
float aStrokeSize10Y2 = 475 + aBoxWH;
float aStrokeSize15Y1 = 475;
float aStrokeSize15Y2 = 475 + aBoxWH;
int aStrokeSizeMove=0; // to not loose other Square when moving

float aBoxProgStroke1X=600; //Square Stroke 1st X
float aBoxProgStroke1Y=420;
float aBoxProgStroke2X=650;
float aBoxProgStroke2Y=420;
float aBoxProgStroke3X=700;
float aBoxProgStroke3Y=420;

int aDrawRectEllipseX;
int aDrawRectEllipseY;
int aDrawRectW;
int aDrawRectH;
int aDrawEllipseW;
int aDrawEllipseH;

int aShapeSelector=1;
int aShapeSelectorProg=1;

float aShapeLineDrawX=310;
float aShapeLineDrawY1=180;
float aShapeLineDrawY2=210;
float aShapeEllipseDrawX=350;
float aShapeEllipseDrawY=195;
float aShapeRectDrawX=335;
float aShapeRectDrawY=180;

float aShapeEllipseProgX=640;
float aShapeEllipseProgY=690;
float aShapeRectProgX=680;
float aShapeRectProgY=675;
int aShapeMove=0; // to not loose other Shapes when moving

float aBoxShapeProgX=650;
float aBoxShapeProgY=620;

int aShapeWH=30;

float aBoxDrawResetX=437;
float aBoxDrawResetY=175;
// Arrays
Obstacle[] obstacle = new Obstacle[14];


// Setup Images
PImage cbackground; 
PImage cgirl;
PImage cboats;
PImage cgoals;

// Box x, y position and width and length 
float cboxposx = 400;
float cboxposy = 770;
float cboxsizex =80;
float cboxsizey =50;
float cimgpos = -400;
// MouseDragged
int cbox = 0;
int mX, mY;

float cframewh = 800;
float cspeed = 40;

float cborder=20.5f;
float cborderleft =20.5f;
float cborderright =700;
// points

int cpoint = 0;
int testsize = 20;
int boxpos1x=1000;
int boxpos1y=300;
int dsort =0xff000000;

int boxpos2x=-20;
int boxpos2y=300;
int boxpos3x=1000;

int stopbox1=400;
int stopbox2=100;

int dstart1 = 50;
int dstart2= 125;
int dstart3= 200;
int flowstart1=-375;
int flowstart2=-410;
int flowstart3=-375;
int flowstart4=-375;
int flowstart5=-375;
int flowstart6=-375;
int flowstart7=-375;
int flowstart8=-375;
int flowstart9=-375;
int flowstart10=-375;
int flowstartcrit=68;
int flowstart11=-375;

String djob1 = "Software developement";
String djob2 = "Animator";
String djob3 = "Consultancy";
String djob4 = "Researcher";
String djob5 = "Web development";
String djob6 = "Interaction design";
String djob7 = "Gameprogramming";
String djob8 = "Game design";
String djob9 = "Management";
String djob10 = "Graphic design";
String djob11 = "And many more!!!";

int dtextpos1 = 1000;
int dtextpos2 = -300;
int dtextpos3 = -100;
int dtextpos4 = -100;
int dtextpos5 = -100;
int dtextpos6 = -100;
int dtextpos7 = -100;
int dtextpos8 =1000;
int dtextpos9 =-270;
  public void settings() {  size(841,1189); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#FFFFFF", "--stop-color=#cccccc", "poster" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
