package testsForUsers;

import java.util.ArrayList;
import java.util.Random;
import exceptions.OverAnswerException;

public abstract class Test {

    protected int currentlyLevel = 1;
    protected int currentlySubLevel = 1;
    protected int time = 5;
    protected final int dimension = 5;
    private Random rand = new Random();

    Test() {
    }

    Test(int level, int sublevel, int timeForTest) {
        currentlyLevel = level;
        currentlySubLevel = sublevel;
        time = timeForTest;
    }

    protected int getSize() {
        return getCurrentlyDimension() * getCurrentlyDimension();
    }

    public int getCurrentlyDimension() {
        if (currentlyLevel == 1) {
            return dimension;
        }
        if (currentlyLevel == 2) {
            return dimension + 1;
        }
        if (currentlyLevel == 3) {
            return dimension + 2;
        }
        return 0;
    }

    ArrayList randomSet(int amount, int border) {
        ArrayList<Integer> arrForNotRepeat = new ArrayList<Integer>();

        for (int i = 0; i <= getSize() - 1; i++) {
            arrForNotRepeat.add(i);
        }

        ArrayList<Integer> arrNumberResult = new ArrayList<Integer>();

        int position;
        int currentlyBorder = border;
        for (int i = 1; i <= amount; i++) {
            position = rand.nextInt(currentlyBorder);
            arrNumberResult.add(arrForNotRepeat.get(position));
            arrForNotRepeat.remove(position);
            currentlyBorder--;
        }

        return arrNumberResult;

    }

    public void setCurrentlyLevel(int newLevel) {
        currentlyLevel = newLevel;
    }

    public void setCurrentlySubLevel(int newSubLevel) {
        currentlySubLevel = newSubLevel;
    }

    public int getCurrentlyLevel() {
        return currentlyLevel;
    }

    public int getCurrentlySubLevel() {
        return currentlySubLevel;
    }

    public String newAttempt() {
        return "";
    }

    public void setChoose(int arg) throws OverAnswerException {
    }

    public void setChoose(String arg) {
    }

    public boolean compare() throws OverAnswerException {
        return false;
    }

    public int amount() {
        if (currentlyLevel == 1) {
            return currentlySubLevel + 3;
        }
        if (currentlyLevel == 2) {
            return 8 + (2 * (currentlySubLevel - 1));
        }
        if (currentlyLevel == 3) {
            return 16 + (2 * (currentlySubLevel - 1));
        }
        return 0;
    }

}