/**
 * Created by mask on 2017/3/25.
 */
public class test_one {
    public static void main(String[] args){
        int v0 = 0;
        String arg6 = "Mask";
        int v3;
        for (v3 = 0;v3<arg6.length();++v3){
            int v1 = arg6.charAt(v3);
            v0 = v0+v1*v1^v1;
        }
        System.out.println(v0);

    }

    }

