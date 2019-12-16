class bullet extends Floater 
{
	
	public void setX(double x){
		myCenterX = x;
	}  

	public double getX(){
		return myCenterX;
	}   

	public void setY(double y){
		myCenterY = y;
	}   

	public double getY(){
		return myCenterY;
	}   

	public void setDirectionX(double x){
		myDirectionX = x;
	}  

	public double getDirectionX(){
		return myDirectionX;
	}   

	public void setDirectionY(double y){
		myDirectionY = y;
	}  

	public double getDirectionY(){
		return myDirectionY;
	}   

	public void setPointDirection(double degrees){
		myPointDirection = degrees;
	}  

	public double getPointDirection(){
		return myPointDirection;
	}

	public bullet(Spaceship spaceship){
		fill(225);
		myCenterX=spaceship.getX();
		myCenterY=spaceship.getY();
		myPointDirection=spaceship.getPointDirection();
		double dRadians=myPointDirection*(Math.PI/180);
		myDirectionX=7*Math.cos(dRadians)+spaceship.getDirectionX();
		myDirectionY=7*Math.sin(dRadians)+spaceship.getDirectionY();
	}

	public void show(){
		fill(0,200,255);
		ellipse((float)myCenterX, (float)myCenterY, (float)5, (float)5);
	}

	public void move(){
		myCenterX+=myDirectionX;
		myCenterY+=myDirectionY;
	}
}