package e.b.a.a.s;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import java.util.concurrent.ConcurrentHashMap;

public final class e extends ConcurrentHashMap<String, String> {
    public static final e y = new e();
    public final Object x = new Object();

    public e() {
        super(DeviceClientConfig.DEFAULT_MESSAGE_LOCK_TIMEOUT_SECS, 0.8f, 4);
    }

    public String c(String str) {
        String str2 = (String) get(str);
        if (str2 != null) {
            return str2;
        }
        if (size() >= 180) {
            synchronized (this.x) {
                if (size() >= 180) {
                    clear();
                }
            }
        }
        String intern = str.intern();
        put(intern, intern);
        return intern;
    }
}
