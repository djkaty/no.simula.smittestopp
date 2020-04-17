package e.c.c.w.z;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import e.c.c.x.a;
import java.lang.reflect.Field;

public class c extends ReflectiveTypeAdapterFactory.a {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Field f1307d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f1308e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ TypeAdapter f1309f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Gson f1310g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ a f1311h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ boolean f1312i;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory, String str, boolean z, boolean z2, Field field, boolean z3, TypeAdapter typeAdapter, Gson gson, a aVar, boolean z4) {
        super(str, z, z2);
        this.f1307d = field;
        this.f1308e = z3;
        this.f1309f = typeAdapter;
        this.f1310g = gson;
        this.f1311h = aVar;
        this.f1312i = z4;
    }
}
