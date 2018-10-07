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

float cborder=20.5;
float cborderleft =20.5;
float cborderright =700;
// points

int cpoint = 0;
int cGoal = 1000; //point goal of the game
int cPointhit = 0; // when you get hit

int cGoalReset = -400; // the position of the goal when you get hit, to make it reset
