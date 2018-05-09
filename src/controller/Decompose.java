package controller;


import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Decompose extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<html>" +
                "<body bgcolor=yellow>");
        String string = request.getParameter("english");
        if (string == null || string.length() == 0) {
            return;
        }
        String[] word = string.split("[^a-zA-Z]+");
        int n = 0;
        try {
            for (int i = 0; i < word.length; i++){
                if (word[i].length()>=1){
                    n++;
                    out.print("<br>"+word[i]);
                }
            }
        }
        catch (NumberFormatException e){
            out.print(""+e);
        }
        out.println("<h2>句子中的单词数目为："+n+"</h2>");
        out.println("</body></html>");
    }
}
