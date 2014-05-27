package users;

import exceptions.OverAnswerException;
import testsForUsers.OnCheckbox;
import testsForUsers.Test;

public class OrdinaryUser extends User {

    private int maxAvailableLevelForCheckboxTest =1;
    private int maxAvailableSubLevelForCheckboxTest =1;
    private int maxAvailableLevelForKeyboardInputTest=1;
    private int maxAvailableSubLevelForKeyboardInputTest =1;
    private int timeForCheckboxTest=10;
    private int timeForKeyboardInputTest=10;

    private Test usegTest;

    public OrdinaryUser() {
    }

    public OrdinaryUser(String name){
        login=name;
        //получение с БД значение времени доступного и уровня
        //для этого пользователя
    }

    public OrdinaryUser(String name, String pass) {
        login=name;
        password=pass;
    }
    public OrdinaryUser(String name, String pass, Test test) {
        login=name;
        password=pass;
        usegTest=test;
    }
    public OrdinaryUser(Test activeTest){
        usegTest=activeTest;
    }

    public int getMaxAvailableLevelForCheckboxTest() {
        return maxAvailableLevelForCheckboxTest;
    }

    public int getMaxAvailableLevelForKeyboardInputTest() {
        return maxAvailableLevelForKeyboardInputTest;
    }

    public int getMaxAvailableSubLevelForCheckboxTest() {
        return maxAvailableSubLevelForCheckboxTest;
    }

    public int getMaxAvailableSubLevelForKeyboardInputTest() {
        return maxAvailableSubLevelForKeyboardInputTest;
    }

    public int getTimeForCheckboxTest() {
        return timeForCheckboxTest;
    }

    public int getTimeForKeyboardInputTest() {
        return timeForKeyboardInputTest;
    }

    public void setUsegTest(Test usegTest) {
        this.usegTest = usegTest;
    }

    public void setTimeForKeyboardInputTest(int timeForKeyboardInputTest) {
        this.timeForKeyboardInputTest = timeForKeyboardInputTest;
    }

    public void setTimeForCheckboxTest(int timeForCheckboxTest) {
        this.timeForCheckboxTest = timeForCheckboxTest;
    }

    public void setMaxAvailableLevelForCheckboxTest(int maxAvailableLevelForCheckboxTest) {
        this.maxAvailableLevelForCheckboxTest = maxAvailableLevelForCheckboxTest;
    }

    public void setMaxAvailableSubLevelForCheckboxTest(int maxAvailableSubLevelForCheckboxTest) {
        this.maxAvailableSubLevelForCheckboxTest = maxAvailableSubLevelForCheckboxTest;
    }

    public void setMaxAvailableLevelForKeyboardInputTest(int maxAvailableLevelForKeyboardInputTest) {
        this.maxAvailableLevelForKeyboardInputTest = maxAvailableLevelForKeyboardInputTest;
    }

    public void setMaxAvailableSubLevelForKeyboardInputTest(int maxAvailableSubLevelForKeyboardInputTest) {
        this.maxAvailableSubLevelForKeyboardInputTest = maxAvailableSubLevelForKeyboardInputTest;
    }

    public String checkOut() {
        String res;
        int maxAvailableLevel;
        int maxAvailableSubLevel;
        if(usegTest instanceof OnCheckbox){
            maxAvailableLevel= maxAvailableLevelForCheckboxTest;
            maxAvailableSubLevel= maxAvailableSubLevelForCheckboxTest;
        }
        else{
            maxAvailableLevel=maxAvailableLevelForKeyboardInputTest;
            maxAvailableSubLevel= maxAvailableSubLevelForKeyboardInputTest;
        }

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
        } finally {
            setMaxLevelAndSublevel(maxAvailableLevel,maxAvailableSubLevel);
        }
        return res;
    }

    private void setMaxLevelAndSublevel(int level,int sublevel){
        if(usegTest instanceof OnCheckbox){
            maxAvailableLevelForCheckboxTest =level;
            maxAvailableSubLevelForCheckboxTest =sublevel;
        }
        else{
            maxAvailableLevelForKeyboardInputTest=level;
            maxAvailableSubLevelForKeyboardInputTest =sublevel;
        }
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