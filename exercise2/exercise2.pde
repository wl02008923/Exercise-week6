PImage water;
void setup()
{
	size(500,500);
  water = loadImage("water.png");
}
int [] numbers = new int [25];
int y = 0;
void draw()
{
  background(255);
  for(int i = 0; i < numbers.length; i++){
    image(water,numbers[i],i*20);
  }
  for(int i = 24; i >= 0; i--){
    if(i == 0){
      numbers[i] = mouseX;
    }else{
      numbers[i] = numbers[i-1];
    }
  }
  
}
