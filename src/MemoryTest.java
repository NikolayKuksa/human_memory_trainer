
import users.*;
import testsForUsers.*;

public class MemoryTest {

    private User myUser;
    private Test myTest;

    void loggedIn(String userName, String userPassword) {
        //поск пользователя в БД
        if(userName.equals("admin"))
            myUser = new Admin();
        else myUser=new OrdinaryUser(userName,userPassword,myTest,1,1);
    }
    void unknowUser(){
        myUser=new OrdinaryUser(myTest,1,1);
    }

    void singIn(String userName, String userPassword) {
        //работа с БД
    }

}