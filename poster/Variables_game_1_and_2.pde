//mode switcher
boolean aMode=true;
boolean aProg=true;
boolean aDraw=true;

color aColor1= color(255); //Color 1st
color aColor2= color(255);
color aColor3= color(255);
int   aColor; // to keep the stroke UI black

float aCanvasX=20.5;
float aCanvasY=220.5;
float aCanvasW=500;
float aCanvasH=600;
float aCanvasSafety=10;


int   aBoxWH=40; //square width Height
float aBoxDrawColor1X=25.5; //Color 1st X
float aBoxDrawColor2X=75.5;
float aBoxDrawColor3X=125.5;
float aBoxDrawColorY=175.5;

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
float aStrokeDrawY2 = 175.5 + aBoxWH;

float aStrokeSize1X = 560.5; //Stroke Size 1st X
float aStrokeSize5X = 635.5;
float aStrokeSize10X = 710.5;
float aStrokeSize15X = 785.5;
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
