/**
 * Created with IntelliJ IDEA.
 *
 * @author: feiwe
 * @Date: 2018/6/6
 * @Time: 10:32
 * @Description:
 */

package pojo;

import java.util.Arrays;

public class ExBean {
    String[] columnName;
    String[][] tableRecord = null;

    public String[] getColumnName() {
        return columnName;
    }

    public ExBean() {
    }

    public void setColumnName(String[] columnName) {
        this.columnName = columnName;
    }

    @Override
    public String toString() {
        return "ExBean{" +
                "columnName=" + Arrays.toString(columnName) +
                ", tableRecord=" + Arrays.toString(tableRecord) +
                '}';
    }

    public String[][] getTableRecord() {
        return tableRecord;
    }

    public void setTableRecord(String[][] tableRecord) {
        this.tableRecord = tableRecord;
    }

    public ExBean(String[] columnName, String[][] tableRecord) {

        this.columnName = columnName;
        this.tableRecord = tableRecord;
    }
}
