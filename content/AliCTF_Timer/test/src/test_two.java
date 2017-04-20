/**
 * Created by mask on 2017/3/25.
 */
public class test_two {
    public static void main(String[] args){
        boolean v5 = false;
        String name = "Mask";


        name = name.toUpperCase();
        long v1 = 0;
        int v4;
        for (v4 = 0;v4<name.length();++v4){
            v1 = (v1 + (((long)name.charAt(v4)))) * 3 - 64;
        }

        String v3 = Long.toString(v1);
        int v0 = 0;
        //System.out.println(v3);


        /*for(v4 = 0; v4 < v3.length(); ++v4) {
            v0 += v3.charAt(v4) - 48;


        }
        */

        System.out.println(v3);
        System.out.println((char)(v3.charAt(0)+16));
        System.out.println((char)(v3.charAt(1)+16));
        System.out.println((char)(v3.charAt(2)+16));
        System.out.println((char)(v3.charAt(3)+16));


    }
}
