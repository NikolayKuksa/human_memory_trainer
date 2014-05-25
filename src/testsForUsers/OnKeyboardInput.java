package testsForUsers;

import java.util.ArrayList;

class OnKeyboardInput extends Test {
    private ArrayList <Integer> numbers;
    private ArrayList <String> byComp;
    private ArrayList <String> byUser=new ArrayList<String>();

    OnKeyboardInput(){
        super();
    }

    OnKeyboardInput(int level,int sublevel,int t){
        super(level,sublevel,t);
    }

    private void cleanAnswer(){
        for(int i=0;i<=byUser.size()-1;i++)
            byUser.set(i, "");
    }

    public String newAttempt() {
        cleanAnswer();
        int borderOfAmountRecordInDataBase=100;
        numbers= randomSet(amount(), borderOfAmountRecordInDataBase);
        byComp=new ArrayList<String>();
        //Заполняем byComp словами из БД
        //которые находятся под номерами полученными случайным образом
        return null;
    }

    public boolean compare(){
        int i=-1;
        boolean is;
        while(i<=byUser.size()-1){
            is=false;
            i++;
            for(int j=0; j<=byComp.size()-1;j++)
                if(byUser.get(i).equals(byComp.get(j))){
                    is=true;
                    break;
                }
            if(is==false)
                return false;
        }
        return true;
    }


}