Spaceship spaceship;
ArrayList <Asteroid> asterFam;
ArrayList <bullet> anAkahilladickis = new ArrayList <bullet>();
Star[] star = new Star[1800];

public void setup() 
{
  size(700,700);
  spaceship = new Spaceship();
  for(int i = 0; i < star.length; i++){
    star[i] = new Star();
  }
  asterFam = new ArrayList <Asteroid> ();
  for(int i=0;i<50;i++){
    asterFam.add(i,new Asteroid());
  }
}

public void draw() 
{
  background(50);
  for(int i = 0;i < star.length;i++){
    star[i].show();
  }
  for(int i=0;i<asterFam.size();i++){
    asterFam.get(i).show();
    asterFam.get(i).move();
  }
  for(int i=0;i<anAkahilladickis.size();i++){
    anAkahilladickis.get(i).show();
    anAkahilladickis.get(i).move();
  }
  for(int i=0;i<anAkahilladickis.size();i++){
    for(int h=0;h<asterFam.size();h++){
      if(dist((float)(anAkahilladickis.get(i).getX()), 
        (float)(anAkahilladickis.get(i).getY()), 
        (float)(asterFam.get(h).getX()), 
        (float)(asterFam.get(h).getY()))<30){
        asterFam.remove(h);
      }
    }
  }
    spaceship.show();
    spaceship.move();
}

public void keyPressed(){
  if(key == 'w'){
    spaceship.accelerate(0.5);
  }
  if(key == 'a'){
    spaceship.turn(-8);
  }
  if(key == 's'){
    spaceship.accelerate(-0.5);
  }
  if(key == 'd'){
    spaceship.turn(8);
  }
  if(key == 'z'){
    spaceship.setX(Math.random()*700);
    spaceship.setY(Math.random()*700);
    spaceship.setDirectionX(0);
    spaceship.setDirectionY(0);
    spaceship.setPointDirection(Math.random()*360);
  }
  if(key == 'x'){
    anAkahilladickis.add(new bullet(spaceship));
  }
}

