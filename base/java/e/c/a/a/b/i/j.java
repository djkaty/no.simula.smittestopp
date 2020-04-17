package e.c.a.a.b.i;

import e.c.a.a.b.c;

public final class j extends UnsupportedOperationException {
    public final c x;

    public j(c cVar) {
        this.x = cVar;
    }

    public final String getMessage() {
        String valueOf = String.valueOf(this.x);
        StringBuilder sb = new StringBuilder(valueOf.length() + 8);
        sb.append("Missing ");
        sb.append(valueOf);
        return sb.toString();
    }
}
