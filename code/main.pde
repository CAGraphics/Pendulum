/**
  * Based on the following aspect 
  * of the pendulum, there's an intriguing
  * line of animations such as: <Moving Snake>,
  * <Carousel>, <Harmonic Wave>
  */

ArrayList<Pendulum> pendulums;

void setup()
{
  surface.setTitle("Pendulum");
  surface.setResizable(true);
  //surface.setLocation(displayWidth / 3, floor(0.1 * displayHeight));

  createPendulums();
  fullScreen();

  //size(810, 600);
}

void createPendulums()
{
  pendulums = new ArrayList<Pendulum>();

  for (int p = 0; p < 30; p++)
  {
    var origin = new PVector(width / 2, 0);
    var ropeLength = 0.1 * height + map(p, 0, 24, 0, 0.7 * height);
    
    var blue = map(cos(p), -1, 1, 0, 255);
    var ropeColor = color(120, 120, blue);
    var startAngle = QUARTER_PI + radians(p);

    pendulums.add(new Pendulum(origin, ropeLength, ropeColor, startAngle));
  }
}

void draw()
{
  background(0);

  for (var pendulum : pendulums)
  {
    pendulum.swing();
    //pendulum.drag();
    pendulum.show();
  }
}

//void mousePressed()
//{
//  pendulum.checkDrag(new PVector(mouseX, mouseY));
//}

//void mouseReleased()
//{
//  pendulum.stopDrag();
//}
