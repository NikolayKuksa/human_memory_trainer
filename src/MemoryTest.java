package human_memory_trainer.src;

class MemoryTest {

    private User myUser;
    private Test myTest;

  void loggedIn(String userName, String userPassword) {
      //поск пользователя в БД
      if(userName.equals("admin"))
        myUser = new Admin(); 
      else myUser=new OrdinaryUser(userName,userPassword,myTest);
  }
  void unknowUser(){
      myUser=new OrdinaryUser(myTest);
  }

  void singIn(String userName, String userPassword) {
      //работа с БД
  }

}