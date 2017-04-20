import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/**
 * Created by mask on 2017/3/27.
 */
public class LCTF_easy {

    public static void main(String[] args) throws Exception{

        Deryption();
    }



    public static void Deryption() {
        byte[] content = new byte[]{21, -93, -68, -94, 86, 117, -19, -68, -92, 33, 50, 118, 16, 13,
                1, -15, -13, 3, 4, 103, -18, 81, 30, 68, 54, -93, 44, -23, 93, 98, 5, 59};
        String password = a("this_is_the_key.");
        System.out.println(password);
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(password.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.DECRYPT_MODE, secretKeySpec);
            byte[] result = cipher.doFinal(content);
            System.out.println(new String(result));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String a(String input) {
        String result;
        try {
            input.getBytes("utf-8");
            StringBuilder stringBuilder = new StringBuilder();
            int i;
            for(i = 0; i < input.length(); i += 2) {
                stringBuilder.append(input.charAt(i + 1));
                stringBuilder.append(input.charAt(i));
            }
            result = stringBuilder.toString();
        }
        catch(Exception e) {
            e.printStackTrace();
            result = null;
        }
        return result;
    }
}
