private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2; 
private double windyday;
public void setup() 
{   
	size(640,480);    
	//noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380); 
	/*
	windyday=Math.random()*20-10;
	double wildchange=Math.random()*.15-.055;  
	branchAngle+=wildchange;
	*/
	//drawBranches(??,??,??,??);  //will add later
	drawBranches(320,380,100,3*PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here   
	double angle1 = (angle+2.5*branchAngle);
	double angle2 = (angle-2.5*branchAngle);
	int endX1 = (int)(branchLength*Math.cos(angle1) + x + windyday);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x + windyday);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	if(branchLength>=smallestBranch)
	{
		line(x,y,endX1,endY1);
		line(x,y,endX2,endY2);
		drawBranches(endX1,endY1,branchLength*11/15,angle1);
		drawBranches(endX2,endY2,branchLength*11/15,angle2);
	}
} 
