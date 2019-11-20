Spaceship spaceship;
Star[] star = new Star[1800];
public void setup() 
{
  size(800,800);
  spaceship = new Spaceship();
  for(int i = 0; i < star.length; i++){
    star[i] = new Star();
  }
}
public void draw() 
{
  background(200);
  for(int i = 0; i < star.length; i++){
    star[i].show();
  }
  spaceship.show();
  spaceship.move();
}
public void keyPressed(){
  if(key == 'w'){spaceship.accelerate(0.5);}
  else if(key == 'a'){spaceship.turn(-8);}
  else if(key == 's'){spaceship.accelerate(-0.5);}
  else if(key == 'd'){spaceship.turn(8);}
  else if(key == 'z'){
    spaceship.setX((int)(Math.random()*800));
    spaceship.setY((int)(Math.random()*800));
    spaceship.setPointDirection((int)(Math.random()*360));
    spaceship.setDirectionX(0);
    spaceship.setDirectionY(0);
  }
}