package main.tests;

import java.util.ArrayList;
import main.exceptions.OverAnswerException;

public class OnCheckbox extends Test {
    private ArrayList<Integer> numbers;
    private boolean byUser[]=new boolean[getSize()];
    private int countOfUserChoose=0;
    public OnCheckbox(){
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
    public void newAttempt() {
        cleanAnswer();
        numbers=random_set(amount(),getSize());
        System.out.println("Номера выбранные генератором:");
        for(int i=0; i<=numbers.size()-1;i++)
            System.out.print(numbers.get(i)+"  ");
    }

    public void setChoose(int i) throws OverAnswerException {
        countOfUserChoose++;
        if (countOfUserChoose> amount())
            throw new OverAnswerException();
        if(byUser[i]==false){
            byUser[i]=true;
        }
        else {
            countOfUserChoose--;
            byUser[i]=false;
        }
    }

    public boolean compare()throws OverAnswerException {
        if (countOfUserChoose!=amount())
            throw new OverAnswerException();
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

