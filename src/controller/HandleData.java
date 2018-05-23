/**
 * Created with IntelliJ IDEA.
 *
 * @author: feiwe
 * @Date: 2018/5/23
 * @Time: 11:01
 * @Description:
 */

package controller;

import pojo.Equation;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HandleData extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Equation equ = new Equation();
        request.setAttribute("equation", equ);

        double a = Double.parseDouble(request.getParameter("a"));
        double b = Double.parseDouble(request.getParameter("b"));
        double c = Double.parseDouble(request.getParameter("c"));
        equ.setA(a);
        equ.setB(b);
        equ.setC(c);
        if (a != 0) {
            equ.setSquareEquation(true);
        } else {
            equ.setSquareEquation(false);
        }

        double disk = b * b - 4 * a * c;
        if (disk < 0) {
            equ.setRootOne("无实根");
            equ.setRootTwo("无实根");
        } else {
            if (a!=0){
                double root1 = (-b + Math.sqrt(disk)) / (2 * a), root2 = (-b - Math.sqrt(disk)) / (2 * a);
                equ.setRootOne(""+root1);
                equ.setRootTwo(""+root2);
            }else{
                equ.setRootOne("");
                equ.setRootTwo("");
            }

        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("ch6.1_show.jsp");
        dispatcher.forward(request,response);

    }

    @Override
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        doPost(request,response);
    }
}


