import java.security.MessageDigest;

/**
 * Created by mask on 2017/5/10.
 */
public class ToolsUtils {






    public static String SHA(String decript) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA");
            digest.update(decript.getBytes("utf-8"));
            byte[] messageDigest = digest.digest();
            StringBuffer hexString = new StringBuffer();
            for (byte b : messageDigest) {
                String shaHex = Integer.toHexString(b & 255);
                if (shaHex.length() < 2) {
                    hexString.append(0);
                }
                hexString.append(shaHex);
            }
            return hexString.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String SHA1(String decript) throws Exception {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-1");
            digest.update(decript.getBytes());
            byte[] messageDigest = digest.digest();
            StringBuffer hexString = new StringBuffer();
            for (byte b : messageDigest) {
                String shaHex = Integer.toHexString(b & 255);
                if (shaHex.length() < 2) {
                    hexString.append(0);
                }
                hexString.append(shaHex);
            }
            return hexString.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }


}
