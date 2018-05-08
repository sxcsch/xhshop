package cn.sxkd.tool;

import org.junit.Test;
import sun.misc.BASE64Encoder;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2018/5/7 0007.
 */
public class Pic {
    public static void main(String[] args){
        pics();
    }
    public static void pics(){
        InputStream in = null;
        byte[] data = null;
        //读取图片字节数组
        try
        {
            in = new FileInputStream("C:\\Users\\Administrator\\Desktop\\花\\0.jpg");
            data = new byte[in.available()];
            in.read(data);
            in.close();
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }
        //对字节数组Base64编码
        BASE64Encoder encoder = new BASE64Encoder();
        String string = encoder.encode(data);//返回Base64编码过的字节数组字符串
        System.out.print(string);
    }
}
