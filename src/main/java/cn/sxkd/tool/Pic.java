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
    public static String pics(byte[] data){
        //对字节数组Base64编码
        BASE64Encoder encoder = new BASE64Encoder();
        String string = encoder.encode(data);//返回Base64编码过的字节数组字符串
        return string;
    }
}
