class Spaceship extends Floater  
{   
    public Spaceship(){
    	corners=4;
    	xCorners=new int[corners];
    	yCorners=new int[corners];
    	xCorners[0]=-12;
	    yCorners[0]=-8;
	    xCorners[1]=16;
		yCorners[1]=0;
		xCorners[2]=-12;
		yCorners[2]=8;
		xCorners[3]=-3;
		yCorners[3]=0;
		myColor = color(200,200,200);
	    myCenterY = myCenterX = 500;
	    myDirectionX = myDirectionY = 0;
	    myPointDirection = 0;
    }

	public void setX(int x){myCenterX = x;}  
	public int getX(){return (int)myCenterX;}   
	public void setY(int y){myCenterY = y;}   
	public int getY(){return (int)myCenterY;}   
	public void setDirectionX(double x){myDirectionX = x;}  
	public double getDirectionX(){return myDirectionX;}   
	public void setDirectionY(double y){myDirectionY = y;}  
	public double getDirectionY(){return myDirectionY;}   
	public void setPointDirection(int degrees){myPointDirection = degrees;}  
	public double getPointDirection(){return myPointDirection;}

}
