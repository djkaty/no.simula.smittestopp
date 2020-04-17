package d.r;

import android.app.Application;
import android.content.Context;

public class b extends Application {
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        a.b(this);
    }
}
