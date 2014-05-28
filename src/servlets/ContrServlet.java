package servlets;

import users.OrdinaryUser;
import dataBase.UserDao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import testsForUsers.MemoryTest;
import users.User;

public class ContrServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("dao")==null) {
            UserDao dao = new UserDao();
            request.getSession().setAttribute("dao", dao);
        }
        if(request.getSession().getAttribute("app")==null) {
            MemoryTest memtest=new MemoryTest() ;
            request.getSession().setAttribute("app", memtest);
        }
        MemoryTest app=(MemoryTest)request.getSession().getAttribute("app");

        String command=request.getParameter("command");
        if(command !=null&& command.equals("logout")) {
            request.setAttribute("visibleLogin", "visible");
            request.setAttribute("visibleName", "hidden");
            app.setMyUser(null);
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }
        if(app.getMyUser()==null) {
            request.setAttribute("visibleLogin", "visible");
            request.setAttribute("visibleName", "hidden");
        }
        else{
            request.setAttribute("visibleLogin", "hidden");
            request.setAttribute("visibleName", "visible");
            request.setAttribute("userName",app.getMyUser().getLogin());
        }
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if(request.getSession().getAttribute("dao")==null) {
            UserDao dao = new UserDao();
            request.getSession().setAttribute("dao", dao);
        }
        if(request.getSession().getAttribute("app")==null) {
            MemoryTest memtest=new MemoryTest() ;
            request.getSession().setAttribute("app", memtest);
        }
        MemoryTest app=(MemoryTest)request.getSession().getAttribute("app");
        UserDao dao=(UserDao)request.getSession().getAttribute("dao");

        String name=request.getParameter("id");
        String pass=request.getParameter("pass");
        OrdinaryUser user=null;

        if(!name.equals("admin")) {
            user = new OrdinaryUser(name, pass);
            if (dao.checkUser(user)&& pass.equals(dao.getUserById(name).getPassword())) {
                app.setMyUser(new OrdinaryUser(name));
                request.setAttribute("visibleLogin","hidden");
                request.setAttribute("visibleName","visible");
                request.setAttribute("userName",name);
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                return;
            }
            else {
                String mes="Неверная пара логин-пароль! Учетная запись не найдена(";
                request.setAttribute("err",mes);
                getServletContext().getRequestDispatcher("/err.jsp").forward(request, response);
                return;
            }
        }

       if(pass.equals("admin")){
           getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
           return;
       }

        String mes="Неверный пароль админа!";
        request.setAttribute("err",mes);
        getServletContext().getRequestDispatcher("/err.jsp").forward(request, response);
    }






    }
