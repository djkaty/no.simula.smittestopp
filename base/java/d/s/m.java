package d.s;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.navigation.R$styleable;
import d.f.i;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

public final class m {

    /* renamed from: c  reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f738c = new ThreadLocal<>();
    public Context a;
    public q b;

    public m(Context context, q qVar) {
        this.a = context;
        this.b = qVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0049 A[Catch:{ Exception -> 0x0053, all -> 0x0051 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x001b A[Catch:{ Exception -> 0x0053, all -> 0x0051 }] */
    @android.annotation.SuppressLint({"ResourceType"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public d.s.j a(int r7) {
        /*
            r6 = this;
            android.content.Context r0 = r6.a
            android.content.res.Resources r0 = r0.getResources()
            android.content.res.XmlResourceParser r1 = r0.getXml(r7)
            android.util.AttributeSet r2 = android.util.Xml.asAttributeSet(r1)
        L_0x000e:
            int r3 = r1.next()     // Catch:{ Exception -> 0x0053 }
            r4 = 2
            if (r3 == r4) goto L_0x0019
            r5 = 1
            if (r3 == r5) goto L_0x0019
            goto L_0x000e
        L_0x0019:
            if (r3 != r4) goto L_0x0049
            java.lang.String r3 = r1.getName()     // Catch:{ Exception -> 0x0053 }
            d.s.i r2 = r6.a(r0, r1, r2, r7)     // Catch:{ Exception -> 0x0053 }
            boolean r4 = r2 instanceof d.s.j     // Catch:{ Exception -> 0x0053 }
            if (r4 == 0) goto L_0x002d
            d.s.j r2 = (d.s.j) r2     // Catch:{ Exception -> 0x0053 }
            r1.close()
            return r2
        L_0x002d:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch:{ Exception -> 0x0053 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0053 }
            r4.<init>()     // Catch:{ Exception -> 0x0053 }
            java.lang.String r5 = "Root element <"
            r4.append(r5)     // Catch:{ Exception -> 0x0053 }
            r4.append(r3)     // Catch:{ Exception -> 0x0053 }
            java.lang.String r3 = "> did not inflate into a NavGraph"
            r4.append(r3)     // Catch:{ Exception -> 0x0053 }
            java.lang.String r3 = r4.toString()     // Catch:{ Exception -> 0x0053 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0053 }
            throw r2     // Catch:{ Exception -> 0x0053 }
        L_0x0049:
            org.xmlpull.v1.XmlPullParserException r2 = new org.xmlpull.v1.XmlPullParserException     // Catch:{ Exception -> 0x0053 }
            java.lang.String r3 = "No start tag found"
            r2.<init>(r3)     // Catch:{ Exception -> 0x0053 }
            throw r2     // Catch:{ Exception -> 0x0053 }
        L_0x0051:
            r7 = move-exception
            goto L_0x007b
        L_0x0053:
            r2 = move-exception
            java.lang.RuntimeException r3 = new java.lang.RuntimeException     // Catch:{ all -> 0x0051 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0051 }
            r4.<init>()     // Catch:{ all -> 0x0051 }
            java.lang.String r5 = "Exception inflating "
            r4.append(r5)     // Catch:{ all -> 0x0051 }
            java.lang.String r7 = r0.getResourceName(r7)     // Catch:{ all -> 0x0051 }
            r4.append(r7)     // Catch:{ all -> 0x0051 }
            java.lang.String r7 = " line "
            r4.append(r7)     // Catch:{ all -> 0x0051 }
            int r7 = r1.getLineNumber()     // Catch:{ all -> 0x0051 }
            r4.append(r7)     // Catch:{ all -> 0x0051 }
            java.lang.String r7 = r4.toString()     // Catch:{ all -> 0x0051 }
            r3.<init>(r7, r2)     // Catch:{ all -> 0x0051 }
            throw r3     // Catch:{ all -> 0x0051 }
        L_0x007b:
            r1.close()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.m.a(int):d.s.j");
    }

    public final i a(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, int i2) {
        int depth;
        Resources resources2 = resources;
        AttributeSet attributeSet2 = attributeSet;
        int i3 = i2;
        i a2 = this.b.a(xmlResourceParser.getName()).a();
        a2.a(this.a, attributeSet2);
        int i4 = 1;
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == i4) {
                break;
            }
            int depth3 = xmlResourceParser.getDepth();
            int i5 = 3;
            if (depth3 < depth2 && next == 3) {
                break;
            } else if (next == 2 && depth3 <= depth2) {
                String name = xmlResourceParser.getName();
                if ("argument".equals(name)) {
                    TypedArray obtainAttributes = resources2.obtainAttributes(attributeSet2, R$styleable.NavArgument);
                    String string = obtainAttributes.getString(R$styleable.NavArgument_android_name);
                    if (string != null) {
                        d a3 = a(obtainAttributes, resources2, i3);
                        if (a2.E == null) {
                            a2.E = new HashMap<>();
                        }
                        a2.E.put(string, a3);
                        obtainAttributes.recycle();
                    } else {
                        throw new XmlPullParserException("Arguments must have a name");
                    }
                } else if ("deepLink".equals(name)) {
                    TypedArray obtainAttributes2 = resources2.obtainAttributes(attributeSet2, R$styleable.NavDeepLink);
                    String string2 = obtainAttributes2.getString(R$styleable.NavDeepLink_uri);
                    if (!TextUtils.isEmpty(string2)) {
                        String replace = string2.replace("${applicationId}", this.a.getPackageName());
                        if (a2.C == null) {
                            a2.C = new ArrayList<>();
                        }
                        a2.C.add(new h(replace));
                        obtainAttributes2.recycle();
                    } else {
                        throw new IllegalArgumentException("Every <deepLink> must include an app:uri");
                    }
                } else if ("action".equals(name)) {
                    TypedArray obtainAttributes3 = resources2.obtainAttributes(attributeSet2, R$styleable.NavAction);
                    int resourceId = obtainAttributes3.getResourceId(R$styleable.NavAction_android_id, 0);
                    c cVar = new c(obtainAttributes3.getResourceId(R$styleable.NavAction_destination, 0));
                    cVar.b = new n(obtainAttributes3.getBoolean(R$styleable.NavAction_launchSingleTop, false), obtainAttributes3.getResourceId(R$styleable.NavAction_popUpTo, -1), obtainAttributes3.getBoolean(R$styleable.NavAction_popUpToInclusive, false), obtainAttributes3.getResourceId(R$styleable.NavAction_enterAnim, -1), obtainAttributes3.getResourceId(R$styleable.NavAction_exitAnim, -1), obtainAttributes3.getResourceId(R$styleable.NavAction_popEnterAnim, -1), obtainAttributes3.getResourceId(R$styleable.NavAction_popExitAnim, -1));
                    Bundle bundle = new Bundle();
                    int depth4 = xmlResourceParser.getDepth() + i4;
                    while (true) {
                        int next2 = xmlResourceParser.next();
                        if (next2 != i4 && ((depth = xmlResourceParser.getDepth()) >= depth4 || next2 != i5)) {
                            if (next2 == 2 && depth <= depth4) {
                                if ("argument".equals(xmlResourceParser.getName())) {
                                    TypedArray obtainAttributes4 = resources2.obtainAttributes(attributeSet2, R$styleable.NavArgument);
                                    String string3 = obtainAttributes4.getString(R$styleable.NavArgument_android_name);
                                    if (string3 != null) {
                                        d a4 = a(obtainAttributes4, resources2, i3);
                                        boolean z = a4.f730c;
                                        if (z && z) {
                                            a4.a.a(bundle, string3, a4.f731d);
                                        }
                                        obtainAttributes4.recycle();
                                    } else {
                                        throw new XmlPullParserException("Arguments must have a name");
                                    }
                                }
                                i3 = i2;
                            }
                            i4 = 1;
                            i5 = 3;
                        }
                    }
                    if (!bundle.isEmpty()) {
                        cVar.f729c = bundle;
                    }
                    if (!a2.a()) {
                        throw new UnsupportedOperationException("Cannot add action " + resourceId + " to " + a2 + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
                    } else if (resourceId != 0) {
                        if (a2.D == null) {
                            a2.D = new i<>(10);
                        }
                        a2.D.c(resourceId, cVar);
                        obtainAttributes3.recycle();
                    } else {
                        throw new IllegalArgumentException("Cannot have an action with actionId 0");
                    }
                } else if ("include".equals(name) && (a2 instanceof j)) {
                    TypedArray obtainAttributes5 = resources2.obtainAttributes(attributeSet2, R$styleable.NavInclude);
                    ((j) a2).a((i) a(obtainAttributes5.getResourceId(R$styleable.NavInclude_graph, 0)));
                    obtainAttributes5.recycle();
                } else if (a2 instanceof j) {
                    ((j) a2).a(a(resources, xmlResourceParser, attributeSet, i2));
                }
                i3 = i2;
                i4 = 1;
            }
        }
        return a2;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:120|121|122|123|(2:124|125)) */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:120|121|122|123|124|125) */
    /* JADX WARNING: Code restructure failed: missing block: B:121:?, code lost:
        d.s.o.f746e.a(r11);
        r12 = d.s.o.f746e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:?, code lost:
        d.s.o.f748g.a(r11);
        r12 = d.s.o.f748g;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:125:?, code lost:
        d.s.o.f750i.a(r11);
        r12 = d.s.o.f750i;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:126:0x02ae, code lost:
        r12 = d.s.o.f752k;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:120:0x0296 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:122:0x029e */
    /* JADX WARNING: Missing exception handler attribute for start block: B:124:0x02a6 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final d.s.d a(android.content.res.TypedArray r11, android.content.res.Resources r12, int r13) {
        /*
            r10 = this;
            int r0 = androidx.navigation.R$styleable.NavArgument_nullable
            r1 = 0
            boolean r0 = r11.getBoolean(r0, r1)
            java.lang.ThreadLocal<android.util.TypedValue> r2 = f738c
            java.lang.Object r2 = r2.get()
            android.util.TypedValue r2 = (android.util.TypedValue) r2
            if (r2 != 0) goto L_0x001b
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            java.lang.ThreadLocal<android.util.TypedValue> r3 = f738c
            r3.set(r2)
        L_0x001b:
            int r3 = androidx.navigation.R$styleable.NavArgument_argType
            java.lang.String r3 = r11.getString(r3)
            r4 = 0
            if (r3 == 0) goto L_0x017a
            java.lang.String r13 = r12.getResourcePackageName(r13)
            d.s.o<java.lang.Integer> r5 = d.s.o.b
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x0038
            d.s.o<java.lang.Integer> r13 = d.s.o.b
            goto L_0x017b
        L_0x0038:
            d.s.o<int[]> r5 = d.s.o.f745d
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x0048
            d.s.o<int[]> r13 = d.s.o.f745d
            goto L_0x017b
        L_0x0048:
            d.s.o<java.lang.Long> r5 = d.s.o.f746e
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x0058
            d.s.o<java.lang.Long> r13 = d.s.o.f746e
            goto L_0x017b
        L_0x0058:
            d.s.o<long[]> r5 = d.s.o.f747f
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x0068
            d.s.o<long[]> r13 = d.s.o.f747f
            goto L_0x017b
        L_0x0068:
            d.s.o<java.lang.Boolean> r5 = d.s.o.f750i
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x0078
            d.s.o<java.lang.Boolean> r13 = d.s.o.f750i
            goto L_0x017b
        L_0x0078:
            d.s.o<boolean[]> r5 = d.s.o.f751j
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x0088
            d.s.o<boolean[]> r13 = d.s.o.f751j
            goto L_0x017b
        L_0x0088:
            d.s.o<java.lang.String> r5 = d.s.o.f752k
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x0098
            d.s.o<java.lang.String> r13 = d.s.o.f752k
            goto L_0x017b
        L_0x0098:
            d.s.o<java.lang.String[]> r5 = d.s.o.f753l
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x00a8
            d.s.o<java.lang.String[]> r13 = d.s.o.f753l
            goto L_0x017b
        L_0x00a8:
            d.s.o<java.lang.Float> r5 = d.s.o.f748g
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x00b8
            d.s.o<java.lang.Float> r13 = d.s.o.f748g
            goto L_0x017b
        L_0x00b8:
            d.s.o<float[]> r5 = d.s.o.f749h
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x00c8
            d.s.o<float[]> r13 = d.s.o.f749h
            goto L_0x017b
        L_0x00c8:
            d.s.o<java.lang.Integer> r5 = d.s.o.f744c
            java.lang.String r5 = r5.a()
            boolean r5 = r5.equals(r3)
            if (r5 == 0) goto L_0x00d8
            d.s.o<java.lang.Integer> r13 = d.s.o.f744c
            goto L_0x017b
        L_0x00d8:
            boolean r5 = r3.isEmpty()
            if (r5 != 0) goto L_0x0177
            java.lang.String r5 = "."
            boolean r5 = r3.startsWith(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            if (r5 == 0) goto L_0x00f8
            if (r13 == 0) goto L_0x00f8
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ ClassNotFoundException -> 0x0170 }
            r5.<init>()     // Catch:{ ClassNotFoundException -> 0x0170 }
            r5.append(r13)     // Catch:{ ClassNotFoundException -> 0x0170 }
            r5.append(r3)     // Catch:{ ClassNotFoundException -> 0x0170 }
            java.lang.String r13 = r5.toString()     // Catch:{ ClassNotFoundException -> 0x0170 }
            goto L_0x00f9
        L_0x00f8:
            r13 = r3
        L_0x00f9:
            java.lang.String r5 = "[]"
            boolean r5 = r3.endsWith(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            if (r5 == 0) goto L_0x012b
            int r5 = r13.length()     // Catch:{ ClassNotFoundException -> 0x0170 }
            int r5 = r5 + -2
            java.lang.String r13 = r13.substring(r1, r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            java.lang.Class r5 = java.lang.Class.forName(r13)     // Catch:{ ClassNotFoundException -> 0x0170 }
            java.lang.Class<android.os.Parcelable> r6 = android.os.Parcelable.class
            boolean r6 = r6.isAssignableFrom(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            if (r6 == 0) goto L_0x011d
            d.s.o$m r13 = new d.s.o$m     // Catch:{ ClassNotFoundException -> 0x0170 }
            r13.<init>(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            goto L_0x017b
        L_0x011d:
            java.lang.Class<java.io.Serializable> r6 = java.io.Serializable.class
            boolean r6 = r6.isAssignableFrom(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            if (r6 == 0) goto L_0x0159
            d.s.o$o r13 = new d.s.o$o     // Catch:{ ClassNotFoundException -> 0x0170 }
            r13.<init>(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            goto L_0x017b
        L_0x012b:
            java.lang.Class r5 = java.lang.Class.forName(r13)     // Catch:{ ClassNotFoundException -> 0x0170 }
            java.lang.Class<android.os.Parcelable> r6 = android.os.Parcelable.class
            boolean r6 = r6.isAssignableFrom(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            if (r6 == 0) goto L_0x013d
            d.s.o$n r13 = new d.s.o$n     // Catch:{ ClassNotFoundException -> 0x0170 }
            r13.<init>(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            goto L_0x017b
        L_0x013d:
            java.lang.Class<java.lang.Enum> r6 = java.lang.Enum.class
            boolean r6 = r6.isAssignableFrom(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            if (r6 == 0) goto L_0x014b
            d.s.o$l r13 = new d.s.o$l     // Catch:{ ClassNotFoundException -> 0x0170 }
            r13.<init>(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            goto L_0x017b
        L_0x014b:
            java.lang.Class<java.io.Serializable> r6 = java.io.Serializable.class
            boolean r6 = r6.isAssignableFrom(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            if (r6 == 0) goto L_0x0159
            d.s.o$p r13 = new d.s.o$p     // Catch:{ ClassNotFoundException -> 0x0170 }
            r13.<init>(r5)     // Catch:{ ClassNotFoundException -> 0x0170 }
            goto L_0x017b
        L_0x0159:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch:{ ClassNotFoundException -> 0x0170 }
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ ClassNotFoundException -> 0x0170 }
            r12.<init>()     // Catch:{ ClassNotFoundException -> 0x0170 }
            r12.append(r13)     // Catch:{ ClassNotFoundException -> 0x0170 }
            java.lang.String r13 = " is not Serializable or Parcelable."
            r12.append(r13)     // Catch:{ ClassNotFoundException -> 0x0170 }
            java.lang.String r12 = r12.toString()     // Catch:{ ClassNotFoundException -> 0x0170 }
            r11.<init>(r12)     // Catch:{ ClassNotFoundException -> 0x0170 }
            throw r11     // Catch:{ ClassNotFoundException -> 0x0170 }
        L_0x0170:
            r11 = move-exception
            java.lang.RuntimeException r12 = new java.lang.RuntimeException
            r12.<init>(r11)
            throw r12
        L_0x0177:
            d.s.o<java.lang.String> r13 = d.s.o.f752k
            goto L_0x017b
        L_0x017a:
            r13 = r4
        L_0x017b:
            int r5 = androidx.navigation.R$styleable.NavArgument_android_defaultValue
            boolean r5 = r11.getValue(r5, r2)
            if (r5 == 0) goto L_0x02b6
            d.s.o<java.lang.Integer> r5 = d.s.o.f744c
            java.lang.String r6 = "' for "
            java.lang.String r7 = "unsupported value '"
            r8 = 16
            if (r13 != r5) goto L_0x01c7
            int r11 = r2.resourceId
            if (r11 == 0) goto L_0x0197
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            goto L_0x02b7
        L_0x0197:
            int r11 = r2.type
            if (r11 != r8) goto L_0x01a5
            int r11 = r2.data
            if (r11 != 0) goto L_0x01a5
            java.lang.Integer r11 = java.lang.Integer.valueOf(r1)
            goto L_0x02b7
        L_0x01a5:
            org.xmlpull.v1.XmlPullParserException r11 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r12 = e.a.a.a.a.a(r7)
            java.lang.CharSequence r0 = r2.string
            r12.append(r0)
            r12.append(r6)
            java.lang.String r13 = r13.a()
            r12.append(r13)
            java.lang.String r13 = ". Must be a reference to a resource."
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        L_0x01c7:
            int r9 = r2.resourceId
            if (r9 == 0) goto L_0x0204
            if (r13 != 0) goto L_0x01d4
            java.lang.Integer r11 = java.lang.Integer.valueOf(r9)
            r13 = r5
            goto L_0x02b7
        L_0x01d4:
            org.xmlpull.v1.XmlPullParserException r11 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r12 = e.a.a.a.a.a(r7)
            java.lang.CharSequence r0 = r2.string
            r12.append(r0)
            r12.append(r6)
            java.lang.String r13 = r13.a()
            r12.append(r13)
            java.lang.String r13 = ". You must use a \""
            r12.append(r13)
            d.s.o<java.lang.Integer> r13 = d.s.o.f744c
            java.lang.String r13 = r13.a()
            r12.append(r13)
            java.lang.String r13 = "\" type to reference other resources."
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        L_0x0204:
            d.s.o<java.lang.String> r5 = d.s.o.f752k
            if (r13 != r5) goto L_0x0210
            int r12 = androidx.navigation.R$styleable.NavArgument_android_defaultValue
            java.lang.String r11 = r11.getString(r12)
            goto L_0x02b7
        L_0x0210:
            int r11 = r2.type
            r5 = 3
            if (r11 == r5) goto L_0x0285
            r5 = 4
            if (r11 == r5) goto L_0x0274
            r5 = 5
            if (r11 == r5) goto L_0x025e
            r12 = 18
            if (r11 == r12) goto L_0x024a
            if (r11 < r8) goto L_0x0235
            r12 = 31
            if (r11 > r12) goto L_0x0235
            d.s.o<java.lang.Integer> r11 = d.s.o.b
            java.lang.String r12 = "integer"
            d.s.o r13 = a(r2, r13, r11, r3, r12)
            int r11 = r2.data
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            goto L_0x02b7
        L_0x0235:
            org.xmlpull.v1.XmlPullParserException r11 = new org.xmlpull.v1.XmlPullParserException
            java.lang.String r12 = "unsupported argument type "
            java.lang.StringBuilder r12 = e.a.a.a.a.a(r12)
            int r13 = r2.type
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        L_0x024a:
            d.s.o<java.lang.Boolean> r11 = d.s.o.f750i
            java.lang.String r12 = "boolean"
            d.s.o r13 = a(r2, r13, r11, r3, r12)
            int r11 = r2.data
            if (r11 == 0) goto L_0x0258
            r11 = 1
            goto L_0x0259
        L_0x0258:
            r11 = 0
        L_0x0259:
            java.lang.Boolean r11 = java.lang.Boolean.valueOf(r11)
            goto L_0x02b7
        L_0x025e:
            d.s.o<java.lang.Integer> r11 = d.s.o.b
            java.lang.String r5 = "dimension"
            d.s.o r13 = a(r2, r13, r11, r3, r5)
            android.util.DisplayMetrics r11 = r12.getDisplayMetrics()
            float r11 = r2.getDimension(r11)
            int r11 = (int) r11
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            goto L_0x02b7
        L_0x0274:
            d.s.o<java.lang.Float> r11 = d.s.o.f748g
            java.lang.String r12 = "float"
            d.s.o r13 = a(r2, r13, r11, r3, r12)
            float r11 = r2.getFloat()
            java.lang.Float r11 = java.lang.Float.valueOf(r11)
            goto L_0x02b7
        L_0x0285:
            java.lang.CharSequence r11 = r2.string
            java.lang.String r11 = r11.toString()
            if (r13 != 0) goto L_0x02b1
            d.s.o<java.lang.Integer> r12 = d.s.o.b     // Catch:{ IllegalArgumentException -> 0x0296 }
            r12.a((java.lang.String) r11)     // Catch:{ IllegalArgumentException -> 0x0296 }
            d.s.o<java.lang.Integer> r12 = d.s.o.b     // Catch:{ IllegalArgumentException -> 0x0296 }
        L_0x0294:
            r13 = r12
            goto L_0x02b1
        L_0x0296:
            d.s.o<java.lang.Long> r12 = d.s.o.f746e     // Catch:{ IllegalArgumentException -> 0x029e }
            r12.a((java.lang.String) r11)     // Catch:{ IllegalArgumentException -> 0x029e }
            d.s.o<java.lang.Long> r12 = d.s.o.f746e     // Catch:{ IllegalArgumentException -> 0x029e }
            goto L_0x0294
        L_0x029e:
            d.s.o<java.lang.Float> r12 = d.s.o.f748g     // Catch:{ IllegalArgumentException -> 0x02a6 }
            r12.a((java.lang.String) r11)     // Catch:{ IllegalArgumentException -> 0x02a6 }
            d.s.o<java.lang.Float> r12 = d.s.o.f748g     // Catch:{ IllegalArgumentException -> 0x02a6 }
            goto L_0x0294
        L_0x02a6:
            d.s.o<java.lang.Boolean> r12 = d.s.o.f750i     // Catch:{ IllegalArgumentException -> 0x02ae }
            r12.a((java.lang.String) r11)     // Catch:{ IllegalArgumentException -> 0x02ae }
            d.s.o<java.lang.Boolean> r12 = d.s.o.f750i     // Catch:{ IllegalArgumentException -> 0x02ae }
            goto L_0x0294
        L_0x02ae:
            d.s.o<java.lang.String> r12 = d.s.o.f752k
            goto L_0x0294
        L_0x02b1:
            java.lang.Object r11 = r13.a((java.lang.String) r11)
            goto L_0x02b7
        L_0x02b6:
            r11 = r4
        L_0x02b7:
            if (r11 == 0) goto L_0x02bb
            r1 = 1
            goto L_0x02bc
        L_0x02bb:
            r11 = r4
        L_0x02bc:
            if (r13 == 0) goto L_0x02bf
            r4 = r13
        L_0x02bf:
            if (r4 != 0) goto L_0x02c5
            d.s.o r4 = d.s.o.a((java.lang.Object) r11)
        L_0x02c5:
            d.s.d r12 = new d.s.d
            r12.<init>(r4, r0, r11, r1)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.m.a(android.content.res.TypedArray, android.content.res.Resources, int):d.s.d");
    }

    public static o a(TypedValue typedValue, o oVar, o oVar2, String str, String str2) {
        if (oVar == null || oVar == oVar2) {
            return oVar != null ? oVar : oVar2;
        }
        throw new XmlPullParserException("Type is " + str + " but found " + str2 + ": " + typedValue.data);
    }
}
