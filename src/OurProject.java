package human_memory_trainer.src;

import java.util.ArrayList;


public class OurProject {


    public static void main(String[] args) {
        OrdinaryUser user;
        Test test;
        test=new OnCheckbox();
        test.setCurrentlyLevel(2);
        test.setCurrentlySubLevel(3);
        test.newAttempt();
        user= new OrdinaryUser(test);
        user.answer(1);
        user.answer(2);
        user.answer(3);
        user.answer(4);
        user.answer(5);
        user.answer(6);
        user.answer(7);
        user.answer(8);
        user.answer(9);
        user.answer(10);
        user.answer(11);
        user.answer(12);
        //user.answer(26);
        //user.answer(36);
        System.out.println("");
        user.checkOut();
    } 
}
