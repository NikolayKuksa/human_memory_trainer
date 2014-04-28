package human_memory_trainer.src;

import java.util.ArrayList;


public class OurProject {


    public static void main(String[] args) {
        OrdinaryUser user;
        Test test;
        test=new OnCheckbox();
        test.newAttempt();
        user= new OrdinaryUser(test);
        user.answer(28);
        user.answer(24);
        user.answer(30);
        user.answer(12);
        System.out.println("");
        user.checkOut();
    } 
}
