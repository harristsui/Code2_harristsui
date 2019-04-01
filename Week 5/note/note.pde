//state
//text to display for each screen (state representation)
//options to choose for each screen (state transitions)

//string for each text 
//string for each option

int state = 0;

String descriptions[] = {
  "state 0",
  "state 1",
  "state 2",
};

String [][] options = {
  {"go to state 1", "go to state 2"},
  {"go to state 0"},
  {"go to state 1", "go to state 0"}
};

int [][] optionTargets = {
  {1, 2},
  {0},
  {1, 0},
};


void setup() {
  size(600, 600);
}



void draw() {
  background(255);
  textSize(40);
  fill(0);
  text(descriptions[state], 40, 40, 400, 400);
  
  
  textSize(24);
  int i = 0;
  for(String option: options[state]) {
    text(option, 40, 450 + i *50);
    i++;
  }
}

void keyPressed() {
 //state = (state + 1) % descriptions.length; 
 //println(state);
 
 //if(keyCode == 49) {
 //  state = optionTargets[state][0];
 //}
 
 //if(keyCode == 50) {
 //  state = optionTargets[state][1];
 //}
 
 // if(keyCode == 51) {
 //  state = optionTargets[state][2];
 //}
 
  for (int i = 0; i < optionTargets[state].length; i++) {
    if (keyCode - 49 == i) {
       state = optionTargets[state][i];
    }
  }
}
