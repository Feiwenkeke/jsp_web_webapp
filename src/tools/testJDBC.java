/**
 * Created with IntelliJ IDEA.
 *
 * @author: feiwe
 * @Date: 2018/6/6
 * @Time: 11:38
 * @Description:
 */

package tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class testJDBC {
    public static void main(String[] args) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection c = DriverManager
                    .getConnection(
                            "jdbc:mysql://127.0.0.1:3306/jsp?&serverTimezone=UTC&characterEncoding=utf-8&useSSL=false",
                            "root", "");

            // 注意：使用的是 java.sql.Statement
            // 不要不小心使用到： com.mysql.jdbc.Statement;
            Statement s = c.createStatement();

            System.out.println("获取 Statement对象： " + s);

        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
