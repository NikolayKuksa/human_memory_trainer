package servlets;

import testsForUsers.OnCheckbox;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import users.*;

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

        int sizeTable=test.getCurrentlyDimension()*test.getCurrentlyDimension()-1;
        ArrayList<String> answerFromUser=new ArrayList();
        String param;
        for(int i=0; i<=sizeTable;i++){
            param="f"+i;
            answerFromUser.add(i, param);
        }

        boolean answer=false;
        for(int i=0;i<=sizeTable;i++) {
            param=request.getParameter(answerFromUser.get(i));
            if (param!=null) {
                user.answer(i);
                answer = true;
            }
        }
        if(answer)
            request.setAttribute("result",user.checkOut());

        request.setAttribute("random",test.newAttempt());

        getServletContext().getRequestDispatcher("/onCheckbox.jsp").forward(request, response);

    }
}
