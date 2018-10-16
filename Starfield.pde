Particle[] bob;
void setup()
{
  size(600,600);
  bob = new Particle[3000];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  bob[0] = new OddballParticle();
  bob[1] = new JumboParticle();
}
void draw()
{
  background(255);
  for(int i =0 ; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}
class NormalParticle implements Particle
{
  double myX,myY,mySpeed,myAngle;
  NormalParticle()
  {
    myX = 300;
    myY = 300;
    mySpeed = (Math.random()*10)+1;
    myAngle = Math.PI*2*Math.random();
  }
  void show()
  {
    fill(0);
    ellipse((float)myX,(float)myY,5,5);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  int myX, myY;
  void show()
  {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX,myY,50,50);
  }
  void move()
  {
    myX = 300;
    myY = 300;
    myX = myX + (int)(Math.random()*25);
    myY = myY + (int)(Math.random()*25);
  }
}
class JumboParticle extends NormalParticle
{
  void show()
  {
    fill(0);
    rect((float)myX,(float)myY,50,50);
  }
}
