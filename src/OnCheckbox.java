package human_memory_trainer.src;

import java.util.ArrayList;


class OnCheckbox extends Test {
    private ArrayList<Integer> numbers;
    private boolean byUser[]=new boolean[getSize()];
    private int countOfUserChoose=0;
    OnCheckbox(){
        super();
    }
    
    OnCheckbox(int level,int sublevel,int t){
        super(level,sublevel,t);
    }
    
    
    private void cleanAnswer(){
        countOfUserChoose=0;
        byUser=new boolean[getSize()];
        for(int i=0;i<=getSize()-1;i++)
            byUser[i]=false;
    }
    void newAttempt() {
        cleanAnswer();
        numbers=random_set(amount(),getSize());
        System.out.println("Номера выбранные генератором:");
        for(int i=0; i<=numbers.size()-1;i++)
            System.out.print(numbers.get(i)+"  ");
    }
    
    void setChoose(int i) throws OverAnswer {
        countOfUserChoose++;
        if (countOfUserChoose> amount())
            throw new OverAnswer();
        if(byUser[i]==false){
            byUser[i]=true; 
        }  
        else {
            countOfUserChoose--;
            byUser[i]=false;
        }
    }
    
    boolean compare()throws OverAnswer {
      if (countOfUserChoose!=amount())
            throw new OverAnswer(); 
      int i=-1;
      while(i<=numbers.size()-1){
          i++;
          if(byUser[numbers.get(i)]==true)
              continue;
          else return false;
      }
      return true;
    }
}