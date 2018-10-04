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
color orange = color(255,181,96);
color pink = color(255,159,173);
color blue = color(117,96,255);
color aBlack = color(0);
color white = color(255);
  
  //Buttons
  Button button1;
  Button button2;
  Button button3;
  Button button4;
  Button button5;
  Button button6;
 


void setup(){
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
  size(841,1189);
  }

void draw(){
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
    rect(20.5,20.5,800,800);
    rect(520.5,20.5,300,800);
    rect(520.5,20.5,300,200);
    rect(20.5,20.5,500,100);
    rect(20.5,120.5,500,100);
  
    //UI text
    textFont(sansFont);
    textSize(58);
    fill(pink);
    text("DRAWING PROGRAM",23,90.5);
    text("CODE",610.5,90.5);
    textSize(25);
    text("COLOR",52,150.5);
    text("SIZE",186,150.5);
    text("SHAPE",300,150.5);
    text("RESET",422,150.5);
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
    rect(170,160,340,57.5); //reseting settings
    
    
    //UI
    stroke(0);
    strokeWeight(5);
    rect(520.5,120.5,300,700);
    
    //UItext
    fill(aBlack);
    textSize(20);
    text("if (box(X) = color(Y));                   then(colorSelector(Z)=color(Y));",530.5,150.5,290,790);
    text("if (box(X) = stroke(Y);                   then(strokeSelector(Z)=stroke(Y);" ,530.5,350.5,290,790);  
    text("if (box(X) = shape(Y);                    then(shapeSelector(Z)=shape(Y);" ,530.5,550.5,290,790);  
    
    
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
          if(mouseX> 520.5+aBoxWH && mouseX < 820.5 - aBoxWH && mouseY > 20.5 + aBoxWH && mouseY < 820.5 - aBoxWH){
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
    if(mouseX> 520.5+aBoxWH && mouseX < 820.5 - aBoxWH && mouseY > 20.5 + aBoxWH && mouseY < 820.5 - aBoxWH){
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
      if(mouseX> 520.5+aBoxWH && mouseX < 820.5 - aBoxWH && mouseY > 20.5 + aBoxWH && mouseY < 820.5 - aBoxWH){
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
      if((mousePressed) && ( mouseX < 510.5 && mouseX >30.5 && mouseY>230.5 && mouseY<810.5) && (aShapeSelector==1)){
        line(mouseX, mouseY, pmouseX, pmouseY);
        }
      }  
  //Choosing of programs
    stroke(0);
    strokeWeight(5);
    if (aMode==false){
        if(aProg==true){            //for void setup objects
          fill(0,150);
          rect(520.5,20.5,300,100);
          aProg=false;
          }
        fill(0,150);                 //for void draw objects
        rect(520.5,120.5,300,700);
        }
     if (aMode==true){
        if(aDraw==true){            //for void setup objects
        fill(0,150);
        rect(20.5,20.5,500,800); 
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
      fill(#CCD7FC);
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
  
  

























void mouseClicked(){
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

void mousePressed(){
  //game1+2
  if(game1==true || game2==true){
   if(aMode==false){ 
    aDrawRectEllipseX=mouseX;
    aDrawRectEllipseY=mouseY;  
    }
  }
 }
void mouseReleased (){
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
      if(aShapeSelector==2 && ( mouseX < 510.5 && mouseX >30.5 && mouseY>230.5 && mouseY<810.5)){
        aDrawEllipseW=mouseX-aDrawRectEllipseX;
        aDrawEllipseH=mouseY-aDrawRectEllipseY;
        noFill();
        ellipse(aDrawRectEllipseX, aDrawRectEllipseY, aDrawEllipseW*2, aDrawEllipseH*2);
        }
       //Draw Rect
      if(aShapeSelector==3 && ( mouseX < 510.5 && mouseX >30.5 && mouseY>230.5 && mouseY<810.5)){
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
    
  
