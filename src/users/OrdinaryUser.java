package users;

import exceptions.OverAnswerException;
import testsForUsers.Test;

public class OrdinaryUser extends User {

    private int maxAvailableLevel=1;

    private int maxAvailableSubLevel=1;

    private int timeForTest=5;

    private Test usegTest;

    public OrdinaryUser(String name, String sign, Test activeTest, int level, int sublevel){
        login=name;
        password=sign;
        usegTest=activeTest;
        maxAvailableLevel=level;
        maxAvailableSubLevel=sublevel;
        //получение с БД значение времени доступного и уровня
        //для этого пользователя
    }

    public OrdinaryUser(Test activeTest, int level, int sublevel){
        usegTest=activeTest;
        maxAvailableLevel=level;
        maxAvailableSubLevel=sublevel;
    }

    public String checkOut() {
        String res;
        try{
            if(usegTest.compare()){
                if(maxAvailableSubLevel==usegTest.getCurrentlySubLevel() && maxAvailableLevel==usegTest.getCurrentlyLevel() ){
                    maxAvailableSubLevel++;
                    if(maxAvailableSubLevel>5){
                        maxAvailableLevel++;
                        maxAvailableSubLevel=1;
                    }
                }
                usegTest.setCurrentlySubLevel(usegTest.getCurrentlySubLevel()+1);
                if(usegTest.getCurrentlySubLevel()>5){
                    usegTest.setCurrentlyLevel(usegTest.getCurrentlyLevel()+1);
                    usegTest.setCurrentlySubLevel(1);
                }
                res= "Ура вы справились! Вы перешли на следующий уровень сложности";
            }
            else res ="Вы проиграли (";
            if(maxAvailableLevel>3){
                res+=  "Ура, вы прошли этот тест до конца";
                maxAvailableLevel=3;
            }
        }catch (OverAnswerException e){
            res= "\nПерехвачено исключение! Вы не можете проверить результат :( \n  На "+usegTest.getCurrentlySubLevel()+" подуровне "+usegTest.getCurrentlyLevel()+" уровня  должно быть выбрано "+usegTest.amount()+" клеток!";
        }
        return res;
    }

    public void changeLevel(int number) {
        usegTest.setCurrentlyLevel(number);
    }

    public void changeSubLevel(int number) {
        usegTest.setCurrentlySubLevel(number);
    }

    public void answer(int index) {
        try{
            usegTest.setChoose(index);
        }
        catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("\nПерехвачено исключение! Вы пытаетесь получить доступ к несуществующей клетке!!!" + e);
        }
        catch (OverAnswerException e){
            System.out.println("\nПерехвачено исключение! На "+usegTest.getCurrentlySubLevel()+" подуровне "+usegTest.getCurrentlyLevel()+" уровня  должно быть выбрано "+usegTest.amount()+" клеток!");
        }
    }

    public void answer(String myWorld){
        usegTest.setChoose(myWorld);
    }

    void exitThisTest() {
        //Сохраняем в БД достижения пользователя
    }


    void breakThisAttempt() {
        usegTest.newAttempt();
    }

}