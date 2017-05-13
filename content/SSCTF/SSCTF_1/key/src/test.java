import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class test {

    static byte[] k1;
    static String MD5_KEY = "a056d5ab1fa5c250c293a5b7588d0749";

    public static void main(String[] args) throws Exception {
        for(int i = 100000; i < 999999; i++) {

            verify(String.valueOf(i),MD5_KEY);

            if(check(String.valueOf(i), i)) {
                System.out.println("Find it : ctf1_decode_" + i + ".xlsx");
            }
        }
    }



    private static boolean verify(String key,String key2) {
        k1 = ToolsUtils.SHA(key).getBytes();
        byte[] k2 = ToolsUtils.SHA(key2).getBytes();

        for(int i = 0; i < k1.length; i++) {
            for(int j = 0; j < k1.length; j++) {
                k1[(i * j * 7 + 9) % k1.length] = ((byte)((k1[i] ^ j * 5) % 127));
                k2[(((i * j) * 7) + 9) % k2.length] = (byte) ((k2[i] ^ (j * 5)) % 127);

            }
        }
        boolean isBreak = false;
        int len = k1.length > k2.length ? k2.length : k1.length;
        for (int i = 0; i < len; i++) {
            if (((k1[i] ^ k2[i]) ^ k1[i]) != k1[i]) {
                isBreak = true;
                break;
            }
        }
        if (isBreak) {
            return false;
        }
        return true;

    }



    private static boolean check(String key, int index) {
        for(int i = 0; i < 100; i++) {
            for(int j = 0; j < 100; j++) {
                k1[(i + 17) * (j + 5) % k1.length] = ((byte)((k1[i * j % k1.length] ^ key.charAt(i * j % key.length()) * 7) % 127));
            }
        }
        if(test.decode(k1, index)) {
            return true;
        }
        return false;
    }

    private static boolean decode(byte[] key, int index) {
        try {

            File file = new File("D:\\ctf1_encode.xlsx");
            if (!file.exists()) {
                System.out.println("file does not exist");
                return false;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] temp = new byte[fileInputStream.available()];
            fileInputStream.read(temp);
            for(int i = 0; i < temp.length; i += 256) {
                temp[i] = ((byte)(temp[i] ^ key[i % key.length]));//再异或一次，即可解密
            }
            if ((temp[0x00] != 'P')//判断是否为一个符合格式的xls文件
                    || (temp[0x100] != 0x00)
                    || (temp[0x200] != 0x00)
                    || (temp[0x400] != 0x00)
                    || (temp[0x500] != 0x00)) {
                fileInputStream.close();
                return false;
            }
            File output = new File(index+"ctf1_decode_.xlsx" );
            FileOutputStream fileOutputStream = new FileOutputStream(output);
            fileOutputStream.write(temp);
            fileOutputStream.close();
            fileInputStream.close();
            System.out.println("key:"+index);//输入的key
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}