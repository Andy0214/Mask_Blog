import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by mask on 2017/3/25.
 */
public class test_three{

    static String preKey = "0123-ABCD-3456-CDEF-";
    static byte[] preKeyBytes = preKey.getBytes(Charset.forName("US-ASCII"));
    static String secretKey = "KeygenChallengeNumber3";
    static byte[] secretBytes = secretKey.getBytes(Charset.forName("US-ASCII"));

    public static String bytesToHex(byte[] bytes) {
        char[] hexArray = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] hexChars = new char[(bytes.length * 2)];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 255;
            hexChars[j * 2] = hexArray[v >>> 4];
            hexChars[(j * 2) + 1] = hexArray[v & 15];
        }
        return new String(hexChars);
    }


    public static void key() throws IOException, NoSuchAlgorithmException {
        byte[] mdkey;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(49);
        for (int i = 0; i < secretBytes.length; i += 2) {
            byteArrayOutputStream.write(secretBytes[i]);
            byteArrayOutputStream.write(i+1);
        }
        for (int i = 1; i < secretBytes.length; i += 2) {
            byteArrayOutputStream.write(secretBytes[i]);
            byteArrayOutputStream.write(i+1);
        }
        byteArrayOutputStream.write(48);
        byteArrayOutputStream.write(48);
        byteArrayOutputStream.write(preKeyBytes);
        byteArrayOutputStream.write(secretBytes);

        MessageDigest md5 = MessageDigest.getInstance("MD5");
        md5.update(byteArrayOutputStream.toByteArray());
        mdkey = md5.digest();
        String preFinalKey = bytesToHex(mdkey);
        preFinalKey.toUpperCase();

        byte keyByte[] = new byte[16];
        int j = 0;
        for (int i = 0 ; i < preFinalKey.length(); i += 2) {
            keyByte[j] = (byte) preFinalKey.charAt(i);
            j ++;
        }
        System.out.println(preFinalKey);
        String key = new String(keyByte);
        String finalKey = preKey;
        for (int i = 0; i <= key.length() - 4; i += 4) {
            finalKey += key.substring(i, i+4);
            if (i != key.length() - 4) {
                finalKey += '-';
            }
        }
        System.out.println(finalKey);

    }

    public static void main(String[] args) {
        try {
            key();
        } catch (NoSuchAlgorithmException | IOException e) {
            e.printStackTrace();
        }
    }

}
