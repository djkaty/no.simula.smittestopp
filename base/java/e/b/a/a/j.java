package e.b.a.a;

import java.io.IOException;

public class j extends IOException {
    public g x;

    public j(String str, g gVar) {
        super(str);
        this.x = gVar;
    }

    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "N/A";
        }
        g gVar = this.x;
        if (gVar == null) {
            return message;
        }
        StringBuilder sb = new StringBuilder(100);
        sb.append(message);
        if (gVar != null) {
            sb.append(10);
            sb.append(" at ");
            sb.append(gVar.toString());
        }
        return sb.toString();
    }

    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
