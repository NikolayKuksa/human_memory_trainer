package servlets;

import users.OrdinaryUser;
import dataBase.UserDao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AdminServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {
        super.init();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("dao")==null) {
            UserDao dao = new UserDao();
            request.getSession().setAttribute("dao", dao);
        }
        UserDao dao =(UserDao)request.getSession().getAttribute("dao");


        String name=request.getParameter("login");
        String time1=request.getParameter("test1Time");
        String time2=request.getParameter("test2Time");
        String del =request.getParameter("delete");
        if(name!=null){
            OrdinaryUser user=new OrdinaryUser(name,"pass");
            if(dao.checkUser(user)){
                if(del!=null){
                    dao.deleteUser(name);
                }
                user=dao.getUserById(name);
                if(time1!=null && !time1.equals("")){
                    user.setTimeForCheckboxTest(Integer.parseInt(time1));
                    dao.updateUser(user);
                }
                if(time1!=null && !time2.equals("")){
                    user.setTimeForKeyboardInputTest(Integer.parseInt(time2));
                    dao.updateUser(user);
                }
                request.setAttribute("visibleLogin", "visible");
                request.setAttribute("visibleName", "hidden");
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                return;



            }
        }
        String mes="Админ, пользователя с логином  "+name+  "нет в базе!";
        request.setAttribute("err", mes);
        getServletContext().getRequestDispatcher("/err.jsp").forward(request, response);
    }
}
