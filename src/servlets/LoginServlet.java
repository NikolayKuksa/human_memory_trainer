package servlets;

import users.OrdinaryUser;
import dataBase.UserDao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {
        super.init();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setAttribute("visibleLogin","hidden");
//        request.setAttribute("visibleName","visible");
//        request.setAttribute("userName","Anton");
//        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        process(request, response);
//        String mes= "Argument";
//        request.setAttribute("v",mes);
//        getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request, response);
    }

    private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String s1=request.getParameter("login");
    String s2=request.getParameter("password");
    OrdinaryUser newUser = new OrdinaryUser(s1, s2);
        //OrdinaryUser newUser = new OrdinaryUser("nick", "nickpass");
    UserDao dao=new UserDao();
    dao.addUser(newUser);



    }
}