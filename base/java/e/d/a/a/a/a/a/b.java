package e.d.a.a.a.a.a;

import com.microsoft.azure.proton.transport.proxy.impl.DigestProxyChallengeProcessorImpl;
import java.util.function.BiConsumer;

/* compiled from: lambda */
public final /* synthetic */ class b implements BiConsumer {
    private final /* synthetic */ DigestProxyChallengeProcessorImpl a;

    public /* synthetic */ b(DigestProxyChallengeProcessorImpl digestProxyChallengeProcessorImpl) {
        this.a = digestProxyChallengeProcessorImpl;
    }

    public final void accept(Object obj, Object obj2) {
        this.a.b((String) obj, (String) obj2);
    }
}
