package tools;

import java.io.File;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;

/**
 * 主要复习文件创建以及文件价
 *
 * @author heack
 */


public class showDirContent {
    File or;
    File[] files;
    List<String> pathName = new ArrayList<String>();

    public List<String> getPathName() {
        return pathName;
    }
// 用于遍历文件价


    public void iteratorPath(String dir) {
        or = new File(dir);
        files = or.listFiles();
        if (files != null) {
            for (File file : files) {
                if (file.isFile()) {
                    pathName.add(file.getName());
                } else if (file.isDirectory()) {
                    iteratorPath(file.getAbsolutePath());
                }
            }
        }
    }


    public static void main(String[] args) {
//        com.example.showDirContent and = new com.example.showDirContent();
//        and.iteratorPath("C:");
//        for (String list : and.pathName) {
//            System.out.println(list);
//        }
    }
}