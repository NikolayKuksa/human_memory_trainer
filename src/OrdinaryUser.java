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
      else ; System.out.println("Вы проиграли");
      if(maxAvailableLevel>3){
          System.out.println("Ура, вы прошли этот тест до конца");
          maxAvailableLevel=3;
      }       
  }

  void changeLevel(int number) {
      usegTest.setCurrentlyLevel(number);
  }

  void changeSubLevel(int number) {
      usegTest.setCurrentlySubLevel(number);
  }

  void answer(int index) {
      usegTest.setChoose(index);
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