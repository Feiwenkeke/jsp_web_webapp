/**
 * Created with IntelliJ IDEA.
 *
 * @author: feiwe
 * @Date: 2018/5/23
 * @Time: 10:55
 * @Description:
 */

package pojo;

public class Equation {
    double a,b,c;
    String rootOne,rootTwo;
    boolean squareEquation;

    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
    }

    public double getC() {
        return c;
    }

    public void setC(double c) {
        this.c = c;
    }

    public String getRootOne() {
        return rootOne;
    }

    public void setRootOne(String rootOne) {
        this.rootOne = rootOne;
    }

    public String getRootTwo() {
        return rootTwo;
    }

    public void setRootTwo(String rootTwo) {
        this.rootTwo = rootTwo;
    }

    public boolean isSquareEquation() {
        return squareEquation;
    }

    public void setSquareEquation(boolean squareEquation) {
        this.squareEquation = squareEquation;
    }
}
