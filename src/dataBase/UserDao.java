package dataBase;

import java.sql.*;
import users.OrdinaryUser;

public class UserDao {

    private Connection connection;

    public UserDao() {
        connection = Database.getConnection();
    }
    public boolean checkUser(OrdinaryUser user) {
        boolean res=false;
        try {
            PreparedStatement ps = connection.prepareStatement("select login from users where login = ?");
            ps.setString(1, user.getLogin());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) // found
            {
                //updateUser(user);
                res=true;
            } else {
                //addUser(user);
            }
        } catch (Exception ex) {
            System.out.println("Error in check() -->" + ex.getMessage());
        }
        return res;

    }
    public void addUser(OrdinaryUser user) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into users(login, password, timeCheckbox, timeKeyboardInput, levelCheckbox, sublevelCheckbox, "
                    +"levelKeyboardInput, sublevelKeyboardInput) values (?, ?, ?, ?, ?, ?, ?, ? )");
            // Parameters start with 1
            preparedStatement.setString(1, user.getLogin());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setInt(3, user.getTimeForCheckboxTest());
            preparedStatement.setInt(4, user.getTimeForKeyboardInputTest());
            preparedStatement.setInt(5, user.getMaxAvailableLevelForCheckboxTest());
            preparedStatement.setInt(6, user.getMaxAvailableSubLevelForCheckboxTest());
            preparedStatement.setInt(7, user.getMaxAvailableLevelForKeyboardInputTest());
            preparedStatement.setInt(8, user.getMaxAvailableSubLevelForKeyboardInputTest());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteUser(String userId) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from users where login=?");
            preparedStatement.setString(1, userId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUser(OrdinaryUser user) {
        if(checkUser(user)){
            deleteUser(user.getLogin());
            addUser(user);
        }
//        try {
//
//            PreparedStatement preparedStatement = connection.prepareStatement("update users set password=?, timeCheckbox=?, timeKeyboardInput=?, levelCheckbox=?, "
//                    +"sublevelCheckbox=?, levelKeyboardInput=?, sublevelKeyboardInput=?"
//                    + "where login=?");
//            // Parameters start with 1
//            preparedStatement.setString(1, user.getPassword());
//            preparedStatement.setInt(2, user.getTimeForCheckboxTest());
//            preparedStatement.setInt(3, user.getTimeForKeyboardInputTest());
//            preparedStatement.setInt(4, user.getMaxAvailableLevelForCheckboxTest());
//            preparedStatement.setInt(5, user.getMaxAvailableSubLevelForCheckboxTest());
//            preparedStatement.setInt(6, user.getMaxAvailableLevelForKeyboardInputTest());
//            preparedStatement.setInt(7, user.getMaxAvailableSubLevelForKeyboardInputTest());
//            preparedStatement.setString(8, user.getLogin());
//            preparedStatement.executeUpdate();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
    }

//    public List<User> getAllUsers() {
//        List<User> users = new ArrayList<User>();
//        try {
//            Statement statement = connection.createStatement();
//            ResultSet rs = statement.executeQuery("select * from users");
//            while (rs.next()) {
//                User user = new User();
//                user.setUname(rs.getString("uname"));
//                user.setPassword(rs.getString("password"));
//                user.setEmail(rs.getString("email"));
//                user.setRegisteredon(rs.getDate("registeredon"));
//                users.add(user);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return users;
//    }

    public OrdinaryUser getUserById(String userId) {
       OrdinaryUser user = new OrdinaryUser();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from users where login=?");
            preparedStatement.setString(1, userId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user.setLogin(rs.getString(1));
                user.setPassword(rs.getString("password"));
                user.setTimeForCheckboxTest(rs.getInt("timeCheckbox"));
                user.setTimeForKeyboardInputTest(rs.getInt("timeKeyboardInput"));
                user.setMaxAvailableLevelForCheckboxTest(rs.getInt("levelCheckbox"));
                user.setMaxAvailableSubLevelForCheckboxTest(rs.getInt("sublevelCheckbox"));
                user.setMaxAvailableLevelForKeyboardInputTest(rs.getInt("levelKeyboardInput"));
                user.setMaxAvailableSubLevelForKeyboardInputTest(rs.getInt("sublevelKeyboardInput"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}