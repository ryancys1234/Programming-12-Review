# Programming 12 Review
This repository contains files and projects made at the start of the Programming 12 course, namely the review unit. Files include notes on variables, functions, and mode frameworks. A general summary of relevant notes is

//global variables (variables at the top, accessible anywhere)
//variable names / types:
  //int (integer)
  //float(number with decimal / rational)
  //color(store integer that represent color)
  //boolean(stores true or false)
  //string(stores text)
  //char(a single character)
  
//declaring a variable, creates a new variable, gives
//it a name, and locks in the type of value it stores


//rules for naming variables:
  //1. only use letters, numbers, dollar sign (but no other symbols,
  //including spaces)
  //2. if more than one word, first word is lowercase,
  //but every subsequent word is capitalized
  
//example:
  
int xpos = 400;

//int only appears once: that is, at the beginning
//"=" is for declaring values. It is NOT an equation

//this document demonstrates how to create a new function

void setup() {
  size (1000,1000);
}

void draw() {
  function(100,200,70);
  function(200,400,140);
  function(400,800,280);
}

void function(int x, int y, int size){
  textSize(size);
  text("welcome", x, y);
}

//reminder: use two consecutive '=' for equal here.
                       //single '=' is used to assign values, double '=' is used
                       //to compare values.
                       //If there is bracket, = ; two brackets, ==
