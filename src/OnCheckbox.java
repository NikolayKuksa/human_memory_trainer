package human_memory_trainer.src;

import java.util.ArrayList;


class OnCheckbox extends Test {
    private ArrayList<Integer> numbers;
    private ArrayList <Boolean> byUser=new ArrayList<Boolean>();
    
    OnCheckbox(){
        super();
    }
    
    OnCheckbox(int level,int sublevel,int t){
        super(level,sublevel,t);
    }
    
    private void cleanAnswer(){
        for(int i=0;i<=byUser.size()-1;i++)
            byUser.set(i, false);
    }
    void newAttempt() {
        cleanAnswer();
        int dim=getCurrentlyDimension()*getCurrentlyDimension();
        numbers=random_set(amount(),dim-1);
    }
    
    void setChoose(int i) {
        if(byUser.get(i).equals(false))
            byUser.set(i,true);
        else byUser.set(i,false);
    }
    
    boolean compare(){
      int i=-1;
      while(i<=numbers.size()-1){
          i++;
          if(byUser.get(numbers.get(i)).equals(true))
              continue;
          else return false;
      }
      return true;
    }
}