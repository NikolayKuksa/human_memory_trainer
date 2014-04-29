package human_memory_trainer.src;

class OrdinaryUser extends User {

  private int maxAvailableLevel=1;

  private int maxAvailableSubLevel=1;

  private int timeForTest=5;

  private Test usegTest;
 
  OrdinaryUser(String name, String sign, Test activeTest){
      login=name;
      password=sign;
      usegTest=activeTest;
      //получение с БД значение времени доступного и уровня 
      //для этого пользователя
  }
  
  OrdinaryUser(Test activeTest){
      usegTest=activeTest;
  }
  
  void checkOut() {
      try{
        if(usegTest.compare()){
             if(maxAvailableSubLevel==usegTest.getCurrentlySubLevel() && maxAvailableLevel==usegTest.getCurrentlyLevel() ){
                maxAvailableSubLevel++;
                if(maxAvailableSubLevel>5){
                 maxAvailableLevel++;
                maxAvailableSubLevel=1;
                }
            }
            System.out.println("Пишем «Ура вы справились»");
        }
        else System.out.println("Вы проиграли");
        if(maxAvailableLevel>3){
            System.out.println("Ура, вы прошли этот тест до конца");
            maxAvailableLevel=3;
        }       
    }catch (OverAnswer e){
          System.out.println("\nПерехвачено исключение! Вы не можете проверить результат :( \n  На "+usegTest.getCurrentlySubLevel()+" подуровне "+usegTest.getCurrentlyLevel()+" уровня  должно быть выбрано "+usegTest.amount()+" клеток!");
      }
  }
  
  void changeLevel(int number) {
      usegTest.setCurrentlyLevel(number);
  }

  void changeSubLevel(int number) {
      usegTest.setCurrentlySubLevel(number);
  }

  void answer(int index) {
      try{
        usegTest.setChoose(index);
      }
      catch (ArrayIndexOutOfBoundsException e) {
          System.out.println("\nПерехвачено исключение! Вы пытаетесь получить доступ к несуществующей клетке!!!" + e);
      }
      catch (OverAnswer e){
          System.out.println("\nПерехвачено исключение! На "+usegTest.getCurrentlySubLevel()+" подуровне "+usegTest.getCurrentlyLevel()+" уровня  должно быть выбрано "+usegTest.amount()+" клеток!");
      }
  }
 
  void answer(String myWorld){
        usegTest.setChoose(myWorld);
  }
  
  void exitThisTest() {
      //Сохраняем в БД достижения пользователя
  }


  void breakThisAttempt() {
      usegTest.newAttempt();
  }

}