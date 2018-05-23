/**
 * Created with IntelliJ IDEA.
 *
 * @author: feiwe
 * @Date: 2018/5/23
 * @Time: 10:35
 * @Description:
 */

package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PostMan extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
    }

    @Override
    public void doPost(HttpServletRequest  request,HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        System.out.println("doGet has been called.");
        RequestDispatcher dispatcher = request.getRequestDispatcher("ch5_showName.jsp");
        if (name != null) {
            dispatcher.forward(request,response);
        }
    }

    @Override
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        System.out.println("doGet has been called.");
        doPost(request,response);
    }
}
