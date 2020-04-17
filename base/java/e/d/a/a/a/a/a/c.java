package e.d.a.a.a.a.a;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import java.util.function.BiConsumer;

/* compiled from: lambda */
public final /* synthetic */ class c implements BiConsumer {
    private final /* synthetic */ StringBuilder a;

    public /* synthetic */ c(StringBuilder sb) {
        this.a = sb;
    }

    public final void accept(Object obj, Object obj2) {
        ProxyHandlerImpl.a(this.a, (String) obj, (String) obj2);
    }
}
