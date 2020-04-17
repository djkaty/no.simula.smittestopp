package e.b.a.a;

import e.b.a.a.s.f;

public class h extends j {
    public transient i y;
    public f z;

    @Deprecated
    public h(String str, g gVar) {
        super(str, gVar);
    }

    public String getMessage() {
        return super.getMessage();
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(i iVar, String str) {
        super(str, iVar == null ? null : iVar.b());
        this.y = iVar;
    }
}
