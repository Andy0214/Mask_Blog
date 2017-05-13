import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/**
 * Created by mask on 2017/5/10.
 */
public class CTFWriteup {

    public static void main(String[] args) {
        dectf();

    }
    public static byte[]k1;
    private static final String DEFAULT_FILENAME_DECODE = "ctf1_decode.xlsx";
    private static final String DEFAULT_FILENAME_ENCODE = "ctf1_encode.xlsx";

    private static final String FILE_PATH = "D:\\test";
    private static int index;
    private static File fileR;
    private static String SIGN_MD5 = "a056d5ab1fa5c250c293a5b7588d0749";



    private static void dectf(){
        fileR = new File(FILE_PATH,DEFAULT_FILENAME_ENCODE);
        if (!fileR.exists()){
            System.out.println("file not exits");
            return;
        }

        for (int i=100000;i<999999;i++){
            check(String.valueOf(i));
        }
    }

    public static boolean check(String k){
        boolean re = false;
        if (!verify(SIGN_MD5,SIGN_MD5)){
            System.out.println("fail");
            return re;
        }
        for (int i = 0; i < 100; i++) {
            for (int j = 0; j < 100; j++) {
                k1[((i + 17) * (j + 5)) % k1.length] = (byte) ((k1[(i * j) % k1.length]
                        ^ (k.charAt((i * j) % k.length()) * 7)) % 127);
            }
        }

        if ((k1[0]^'p')==0x37
                &&k1[0x100%k1.length]==0x57
                &&k1[0x200%k1.length]==0x28
                &&k1[0x400%k1.length]==0x75
                &&k1[0x500%k1.length]==0x67
                ){
            System.out.println("k:"+k);
            index++;
            encode();
        }
        return true;


    }


    private static boolean  verify(String key1, String key2) {
        boolean re = false;

        k1 = ToolsUtils.SHA(key1).getBytes();
        byte[] k2 = ToolsUtils.SHA(key2).getBytes();
        for (int i = 0; i < k1.length; i++) {
            for (int j = 0; j < k2.length; j++) {
                k1[(((i * j) * 7) + 9) % k1.length] = (byte) ((k1[i] ^ (j * 5)) % 127);
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
        return isBreak ? re : true;
    }

    private static boolean encode(){
        try{
        File fileW = new File(FILE_PATH,String.valueOf(index)+"_"+DEFAULT_FILENAME_DECODE);
        FileOutputStream fos = new FileOutputStream(fileW);
        FileInputStream fis = new FileInputStream(fileR);
        byte[] b = new byte[fis.available()];
        fis.read(b);
        for (int i = 0; i < b.length; i += 0x100) {
                b[i] = (byte) (b[i] ^ k1[i % k1.length]);
            }

            fos.write(b);
            fos.close();
            fis.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

}


