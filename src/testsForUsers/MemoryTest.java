package testsForUsers;

import users.*;

public class MemoryTest {

    private OrdinaryUser myUser=null;
    private Admin myAdmin=null;
    private Test myTest=null;

    public OrdinaryUser getMyUser() {
        return myUser;
    }

    public void setMyUser(OrdinaryUser myUser) {
        this.myUser = myUser;
    }

    public Admin getMyAdmin() {
        return myAdmin;
    }

    public void setMyAdmin(Admin myAdmin) {
        this.myAdmin = myAdmin;
    }

    public Test getMyTest() {
        return myTest;
    }

    public void setMyTest(Test myTest) {
        this.myTest = myTest;
    }

    void loggedIn(String userName, String userPassword) {
        //поск пользователя в БД
        if(userName.equals("admin"))
            myAdmin = new Admin();
        else myUser=new OrdinaryUser(userName,userPassword,myTest);
    }
    void unknowUser(){
        myUser=new OrdinaryUser(myTest);
    }

    void singIn(String userName, String userPassword) {
        //работа с БД
    }

}