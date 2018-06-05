/**
 * Created with IntelliJ IDEA.
 *
 * @author: feiwe
 * @Date: 2018/6/6
 * @Time: 0:27
 * @Description:
 */

package controller;

import pojo.Area;


import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class HandleArea extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("doPost has been called");
        Area dataBean = new Area(); // 创建Java对象
        HttpSession session = request.getSession(true);
        session.setAttribute("data", dataBean); //将dataBean储存到request对象中
        try {
            double top = Double.parseDouble(request.getParameter("top"));
            double bottom = Double.parseDouble(request.getParameter("bottom"));
            double height = Double.parseDouble(request.getParameter("height"));
            // 将数据储存在dataBean中
            dataBean.setTop(top);
            dataBean.setBottom(bottom);
            dataBean.setHeight(height);
            double area;
            area = (top + bottom) * height / 2.0;
            // 将数据储存在dataBean中
            dataBean.setArea(area);
            dataBean.setMess("梯形");
        } catch (Exception e) {
            dataBean.setArea(-1);
            dataBean.setMess("" + e);
        }
        response.sendRedirect("ch6.2_inputData.jsp");
    }

}