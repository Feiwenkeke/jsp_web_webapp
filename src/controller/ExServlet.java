/**
 * Created with IntelliJ IDEA.
 *
 * @author: feiwe
 * @Date: 2018/6/6
 * @Time: 10:47
 * @Description:
 */

package controller;

import pojo.ExBean;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class ExServlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            System.out.println("jdbc class init error");
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String dataBase = request.getParameter("dataBase");
        String tableName = request.getParameter("tableName");
        String user = request.getParameter("user");
        String password = request.getParameter("password");

        boolean boo = (dataBase == null || dataBase.length() == 0);
        boo = boo || (tableName == null || tableName.length() == 0);
        boo = boo || (user == null || user.length() == 0);
        if (boo) {
            fail(request, response, "查询失败");
        }
        HttpSession session = request.getSession(true);
        Connection con = null;
        ExBean recordBean = null;
        try {
            recordBean = (ExBean) session.getAttribute("recordBean");
            if (recordBean == null) {
                recordBean = new ExBean();
                session.setAttribute("recordBean", recordBean);

            }
        } catch (Exception e) {
            System.out.println("recordBean getAttribute exception ");
            recordBean = new ExBean();
            session.setAttribute("recordBean", recordBean);
        }

        String url = "jdbc:mysql://localhost:3306/" + dataBase+"?&serverTimezone=UTC&characterEncoding=utf-8&useSSL=false";
        try {
            con = DriverManager.getConnection(url, user, password);
            Statement sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = sql.executeQuery("select * from " + tableName);
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            // 得到结果集的列数
            String[] columnName = new String[columnCount];
            for (int i = 0; i < columnName.length; i++) {
                columnName[i] = metaData.getColumnName(i + 1);
                // 得到列名
            }
            recordBean.setColumnName(columnName);
            // 更新Javabean数据模型
            rs.last();
            int rowNumber = rs.getRow();
            // 得到记录数
            String[][] tableRecord = recordBean.getTableRecord();
            tableRecord = new String[rowNumber][columnCount];
            rs.beforeFirst();
            int i = 0;
            while (rs.next()) {
                for (int k = 0; k < columnCount; k++) {
                    tableRecord[i][k] = rs.getString(k + 1);
                }
                i++;
            }
            recordBean.setTableRecord(tableRecord);
            // 更新Javabean数据模型
            con.close();
            response.sendRedirect("ch7.1_inputDatabase.jsp");
            // 重定向
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Override
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        doPost(request,response);
    }


    public void fail(HttpServletRequest request, HttpServletResponse response, String backNews) throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<h2>" + backNews + "</h2>");
            out.println("返回" + "<br>");
            out.println("<a href = ch7.1_inputDatabase.jsp>请输入正确的信息</a>");
        } catch (Exception e) {

        }
    }
}
