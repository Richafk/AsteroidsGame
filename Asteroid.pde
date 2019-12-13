class Asteroid extends Floater  
{ 
int rotSpeed=(int)(Math.random()*360);
    public Asteroid(){
    	corners=6;
    	xCorners=new int[corners];
    	yCorners=new int[corners];
    	xCorners[0]=-11;
	    yCorners[0]=-8;
	    xCorners[1]=7;
		yCorners[1]=-8;
		xCorners[2]=3;
		yCorners[2]=0;
		xCorners[3]=6;
		yCorners[3]=8;
		xCorners[4]=-11;
		yCorners[4]=8;
		xCorners[5]=-5;
		yCorners[5]=0;
	    myCenterY = (Math.random()*600);
	    myCenterX = (Math.random()*600);
	    myDirectionX = (Math.random()*8-3);
	    myDirectionY = (Math.random()*8-3);
    }
    public void move(){
    	turn(rotSpeed);
    	super.move();
    }
    public void setX(double x){myCenterX = x;}  
	public double getX(){return myCenterX;}   
	public void setY(double y){myCenterY = y;}   
	public double getY(){return myCenterY;}   
	public void setDirectionX(double x){myDirectionX = x;}  
	public double getDirectionX(){return myDirectionX;}   
	public void setDirectionY(double y){myDirectionY = y;}  
	public double getDirectionY(){return myDirectionY;}   
	public void setPointDirection(double degrees){myPointDirection = degrees;}  
	public double getPointDirection(){return myPointDirection;}
}

