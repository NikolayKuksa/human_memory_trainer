package human_memory_trainer.src;

import java.util.ArrayList;
import java.util.Random;

abstract class Test  {

  protected int currentlyLevel=1;
  protected int currentlySubLevel=1;
  protected int time=5;
  protected final int dimension=5;
  private Random rand=new Random();
  
  Test(){
  }
  
  Test(int level, int sublevel, int timeForTest){
      currentlyLevel=level;
      currentlySubLevel=sublevel;
      time=timeForTest;
  }
  
  protected int getSize(){
        return getCurrentlyDimension()*getCurrentlyDimension();
    }

  int getCurrentlyDimension(){
        if(currentlyLevel==1)
            return dimension;
        if(currentlyLevel==2)
            return dimension+1;
        if(currentlyLevel==3)
            return dimension+2;
        return 0;
   }
  
  ArrayList random_set(int amount, int border) {
      ArrayList<Integer> arrForNotRepeat=new ArrayList<Integer>();
      
      for(int i=0; i<=getSize()-1;i++)
            arrForNotRepeat.add(i);
      
      ArrayList<Integer> arrNumberResult=new ArrayList<Integer>();
      
      int position;
      int currentlyBorder=border;
      for(int i=1; i<=amount; i++){
          position=rand.nextInt(currentlyBorder);
          arrNumberResult.add(arrForNotRepeat.get(position));
          arrForNotRepeat.remove(position);
          currentlyBorder--;
      }
      
      return arrNumberResult;
      
  }

  void setCurrentlyLevel(int newLevel) {
      currentlyLevel=newLevel;
  }

  void setCurrentlySubLevel(int newSubLevel) {
      currentlySubLevel=newSubLevel;
  }
  
  int getCurrentlyLevel(){
      return currentlyLevel;
  }

  int getCurrentlySubLevel(){
      return currentlySubLevel;
  }
  void newAttempt() {
  }

  void setChoose(int  arg) throws OverAnswer  {
  }
  
  void setChoose(String arg) {
  }

  boolean compare() throws OverAnswer {
      return false;
  }
  
  int amount(){
           if(currentlyLevel==1)
            return currentlySubLevel+3;
        if(currentlyLevel==2)
            return 8+(2*(currentlySubLevel-1));
        if(currentlyLevel==3)
            return 16+(2*(currentlySubLevel-1));
        return 0;
    }

}