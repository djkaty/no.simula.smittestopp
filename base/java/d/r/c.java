package d.r;

import java.io.File;
import java.io.FileFilter;

public class c implements FileFilter {
    public final /* synthetic */ d a;

    public c(d dVar) {
        this.a = dVar;
    }

    public boolean accept(File file) {
        return !file.getName().equals("MultiDex.lock");
    }
}
