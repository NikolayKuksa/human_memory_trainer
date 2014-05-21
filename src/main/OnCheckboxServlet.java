package main;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import main.tests.OnCheckbox;
import main.users.OrdinaryUser;

public class OnCheckboxServlet extends HttpServlet {


    @Override
    public void init() throws ServletException {
        super.init();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        process(request, response);

    }

    private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OnCheckbox test = (OnCheckbox) getServletContext().getAttribute("test");
        OrdinaryUser user = (OrdinaryUser) getServletContext().getAttribute("user");
        if (test == null) {
            test =new OnCheckbox();
            getServletContext().setAttribute("test", test);
        }

        if (user == null) {
            user =new OrdinaryUser(test);
            getServletContext().setAttribute("user", user);
        }


        getServletContext().getRequestDispatcher("/onCheckbox.jsp").forward(request, response);

    }
}
