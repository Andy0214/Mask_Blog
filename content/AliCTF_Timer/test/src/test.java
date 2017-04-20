/**
 * Created by mask on 2017/3/21.
 */
public class test {
    public static int beg;
    public static int now;
    public static int t;


    public static void main(String[] args) {
        /*long t = System.currentTimeMillis();
        System.out.println(t);

        int beg = 200000;
        int now= (int) (t / 1000);//即当前秒数转换为整形
        System.out.println(now);
        int i;//
        int k=0;

        for (i=beg;i>0;i--){

            if( is2(beg-i)){

                k+=100;
            }else{
                k--;
            }
        }

        System.out.println(k);*/

        int beg =(int) System.currentTimeMillis();//(((int) (System.currentTimeMillis() / 1000)) + 200000);
        System.out.println(beg);
    }

    public static boolean is2(int n) {
        if (n <= 3) {
            if (n > 1) {
                return true;
            }
            return false;
        } else if (n % 2 == 0 || n % 3 == 0) {
            return false;
        } else {
            int i = 5;
            while (i * i <= n) {
                if (n % i == 0 || n % (i + 2) == 0) {
                    return false;
                }
                i += 6;
            }
            return true;
        }
    }

}
