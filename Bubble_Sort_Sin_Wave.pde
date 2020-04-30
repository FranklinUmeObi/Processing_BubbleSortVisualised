ArrayList<Integer> bars;

void setup() {
  size(1000, 500);
  frameRate(800);
  bars  = new ArrayList<Integer>(); 
  for (int i = 0; i < 200; i++) {
    float r = sin(i) ;
    r  = r*400 ;
    
    bars.add(int(floor(r))) ;
    colorMode(HSB, 100);
  }
}

void draw() {
  background(34) ;
  for (int i = 0; i < 200; i++) {
    fill(floor(abs(bars.get(i)/4.4)), 100, 100);
    rect(i*5, height/2, 5, bars.get(i)/2);
  }
  for (int j = 0; j < 199; j++) {
    if(bars.get(j) > bars.get(j+1))
    {
      int temp = bars.get(j);
      bars.set(j, bars.get(j+1));
      bars.set(j+1, temp);
      break ;
    }
  }
  
}
