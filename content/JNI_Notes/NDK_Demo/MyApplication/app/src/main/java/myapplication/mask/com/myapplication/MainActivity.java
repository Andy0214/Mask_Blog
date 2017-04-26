package myapplication.mask.com.myapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Toast;



public class MainActivity extends AppCompatActivity {

    static{
        System.loadLibrary("demo");
    }

    public native static String FromNative();




    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Toast.makeText(this,FromNative(),Toast.LENGTH_SHORT).show();
    }
}
