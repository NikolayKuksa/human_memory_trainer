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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request, response);
    }

    private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    if(request.getSession().getAttribute("dao")==null) {
         UserDao dao = new UserDao();
          request.getSession().setAttribute("dao", dao);
    }
    UserDao dao =(UserDao)request.getSession().getAttribute("dao");

    String name=request.getParameter("login");
    String pass=request.getParameter("password");
    String pass2=request.getParameter("password2");

        if(name!=null && pass!=null && pass2!=null){
            if(pass.equals(pass2)){
                OrdinaryUser user=new OrdinaryUser(name,pass);
                if(!dao.checkUser(user)) {
                    dao.addUser(user);
                    request.setAttribute("visibleLogin", "visible");
                    request.setAttribute("visibleName", "hidden");
                    getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                    return;
                }
            }
        }
   String mes="Вы ввели невернеые даные для регистрации, или учетная запись с таким логином уже существует!";
    request.setAttribute("err",mes);
        getServletContext().getRequestDispatcher("/err.jsp").forward(request, response);



    }
}