package d.b.d;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R$styleable;
import d.b.d.i.i;
import d.b.d.i.j;
import d.b.e.e0;
import d.b.e.x0;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class f extends MenuInflater {

    /* renamed from: e  reason: collision with root package name */
    public static final Class<?>[] f262e;

    /* renamed from: f  reason: collision with root package name */
    public static final Class<?>[] f263f;
    public final Object[] a;
    public final Object[] b;

    /* renamed from: c  reason: collision with root package name */
    public Context f264c;

    /* renamed from: d  reason: collision with root package name */
    public Object f265d;

    public static class a implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c  reason: collision with root package name */
        public static final Class<?>[] f266c = {MenuItem.class};
        public Object a;
        public Method b;

        public a(Object obj, String str) {
            this.a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.b = cls.getMethod(str, f266c);
            } catch (Exception e2) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.b.invoke(this.a, new Object[]{menuItem})).booleanValue();
                }
                this.b.invoke(this.a, new Object[]{menuItem});
                return true;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            r0 = 1
            java.lang.Class[] r0 = new java.lang.Class[r0]
            r1 = 0
            java.lang.Class<android.content.Context> r2 = android.content.Context.class
            r0[r1] = r2
            f262e = r0
            f263f = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.d.f.<clinit>():void");
    }

    public f(Context context) {
        super(context);
        this.f264c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public final void a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        char c2;
        char c3;
        AttributeSet attributeSet2 = attributeSet;
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                } else {
                    throw new RuntimeException(e.a.a.a.a.b("Expecting menu, got ", name));
                }
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
                XmlPullParser xmlPullParser2 = xmlPullParser;
            }
        }
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            if (eventType != 1) {
                if (eventType != 2) {
                    if (eventType == 3) {
                        String name2 = xmlPullParser.getName();
                        if (z2 && name2.equals(str)) {
                            XmlPullParser xmlPullParser3 = xmlPullParser;
                            str = null;
                            z2 = false;
                            eventType = xmlPullParser.next();
                        } else if (name2.equals("group")) {
                            bVar.b = 0;
                            bVar.f267c = 0;
                            bVar.f268d = 0;
                            bVar.f269e = 0;
                            bVar.f270f = true;
                            bVar.f271g = true;
                        } else if (name2.equals("item")) {
                            if (!bVar.f272h) {
                                d.i.i.b bVar2 = bVar.A;
                                if (bVar2 == null || !((j.a) bVar2).b.hasSubMenu()) {
                                    bVar.f272h = true;
                                    bVar.a(bVar.a.add(bVar.b, bVar.f273i, bVar.f274j, bVar.f275k));
                                } else {
                                    bVar.a();
                                }
                            }
                        } else if (name2.equals("menu")) {
                            XmlPullParser xmlPullParser4 = xmlPullParser;
                            z = true;
                            eventType = xmlPullParser.next();
                        }
                    }
                } else if (!z2) {
                    String name3 = xmlPullParser.getName();
                    if (name3.equals("group")) {
                        TypedArray obtainStyledAttributes = f.this.f264c.obtainStyledAttributes(attributeSet2, R$styleable.MenuGroup);
                        bVar.b = obtainStyledAttributes.getResourceId(R$styleable.MenuGroup_android_id, 0);
                        bVar.f267c = obtainStyledAttributes.getInt(R$styleable.MenuGroup_android_menuCategory, 0);
                        bVar.f268d = obtainStyledAttributes.getInt(R$styleable.MenuGroup_android_orderInCategory, 0);
                        bVar.f269e = obtainStyledAttributes.getInt(R$styleable.MenuGroup_android_checkableBehavior, 0);
                        bVar.f270f = obtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_visible, true);
                        bVar.f271g = obtainStyledAttributes.getBoolean(R$styleable.MenuGroup_android_enabled, true);
                        obtainStyledAttributes.recycle();
                    } else if (name3.equals("item")) {
                        x0 a2 = x0.a(f.this.f264c, attributeSet2, R$styleable.MenuItem);
                        bVar.f273i = a2.f(R$styleable.MenuItem_android_id, 0);
                        bVar.f274j = (a2.c(R$styleable.MenuItem_android_menuCategory, bVar.f267c) & -65536) | (a2.c(R$styleable.MenuItem_android_orderInCategory, bVar.f268d) & 65535);
                        bVar.f275k = a2.e(R$styleable.MenuItem_android_title);
                        bVar.f276l = a2.e(R$styleable.MenuItem_android_titleCondensed);
                        bVar.m = a2.f(R$styleable.MenuItem_android_icon, 0);
                        String d2 = a2.d(R$styleable.MenuItem_android_alphabeticShortcut);
                        if (d2 == null) {
                            c2 = 0;
                        } else {
                            c2 = d2.charAt(0);
                        }
                        bVar.n = c2;
                        bVar.o = a2.c(R$styleable.MenuItem_alphabeticModifiers, 4096);
                        String d3 = a2.d(R$styleable.MenuItem_android_numericShortcut);
                        if (d3 == null) {
                            c3 = 0;
                        } else {
                            c3 = d3.charAt(0);
                        }
                        bVar.p = c3;
                        bVar.q = a2.c(R$styleable.MenuItem_numericModifiers, 4096);
                        if (a2.f(R$styleable.MenuItem_android_checkable)) {
                            bVar.r = a2.a(R$styleable.MenuItem_android_checkable, false) ? 1 : 0;
                        } else {
                            bVar.r = bVar.f269e;
                        }
                        bVar.s = a2.a(R$styleable.MenuItem_android_checked, false);
                        bVar.t = a2.a(R$styleable.MenuItem_android_visible, bVar.f270f);
                        bVar.u = a2.a(R$styleable.MenuItem_android_enabled, bVar.f271g);
                        bVar.v = a2.c(R$styleable.MenuItem_showAsAction, -1);
                        bVar.z = a2.d(R$styleable.MenuItem_android_onClick);
                        bVar.w = a2.f(R$styleable.MenuItem_actionLayout, 0);
                        bVar.x = a2.d(R$styleable.MenuItem_actionViewClass);
                        String d4 = a2.d(R$styleable.MenuItem_actionProviderClass);
                        bVar.y = d4;
                        boolean z3 = d4 != null;
                        if (z3 && bVar.w == 0 && bVar.x == null) {
                            bVar.A = (d.i.i.b) bVar.a(bVar.y, f263f, f.this.b);
                        } else {
                            if (z3) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            bVar.A = null;
                        }
                        bVar.B = a2.e(R$styleable.MenuItem_contentDescription);
                        bVar.C = a2.e(R$styleable.MenuItem_tooltipText);
                        if (a2.f(R$styleable.MenuItem_iconTintMode)) {
                            bVar.E = e0.a(a2.c(R$styleable.MenuItem_iconTintMode, -1), bVar.E);
                        } else {
                            bVar.E = null;
                        }
                        if (a2.f(R$styleable.MenuItem_iconTint)) {
                            bVar.D = a2.a(R$styleable.MenuItem_iconTint);
                        } else {
                            bVar.D = null;
                        }
                        a2.b.recycle();
                        bVar.f272h = false;
                    } else {
                        if (name3.equals("menu")) {
                            a(xmlPullParser, attributeSet2, bVar.a());
                        } else {
                            XmlPullParser xmlPullParser5 = xmlPullParser;
                            z2 = true;
                            str = name3;
                        }
                        eventType = xmlPullParser.next();
                    }
                }
                XmlPullParser xmlPullParser6 = xmlPullParser;
                eventType = xmlPullParser.next();
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    public void inflate(int i2, Menu menu) {
        if (!(menu instanceof d.i.d.a.a)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            xmlResourceParser = this.f264c.getResources().getLayout(i2);
            a(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
            xmlResourceParser.close();
        } catch (XmlPullParserException e2) {
            throw new InflateException("Error inflating menu XML", e2);
        } catch (IOException e3) {
            throw new InflateException("Error inflating menu XML", e3);
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    public class b {
        public d.i.i.b A;
        public CharSequence B;
        public CharSequence C;
        public ColorStateList D = null;
        public PorterDuff.Mode E = null;
        public Menu a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f267c;

        /* renamed from: d  reason: collision with root package name */
        public int f268d;

        /* renamed from: e  reason: collision with root package name */
        public int f269e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f270f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f271g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f272h;

        /* renamed from: i  reason: collision with root package name */
        public int f273i;

        /* renamed from: j  reason: collision with root package name */
        public int f274j;

        /* renamed from: k  reason: collision with root package name */
        public CharSequence f275k;

        /* renamed from: l  reason: collision with root package name */
        public CharSequence f276l;
        public int m;
        public char n;
        public int o;
        public char p;
        public int q;
        public int r;
        public boolean s;
        public boolean t;
        public boolean u;
        public int v;
        public int w;
        public String x;
        public String y;
        public String z;

        public b(Menu menu) {
            this.a = menu;
            this.b = 0;
            this.f267c = 0;
            this.f268d = 0;
            this.f269e = 0;
            this.f270f = true;
            this.f271g = true;
        }

        public final void a(MenuItem menuItem) {
            boolean z2 = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.f276l).setIcon(this.m);
            int i2 = this.v;
            if (i2 >= 0) {
                menuItem.setShowAsAction(i2);
            }
            if (this.z != null) {
                if (!f.this.f264c.isRestricted()) {
                    f fVar = f.this;
                    if (fVar.f265d == null) {
                        fVar.f265d = fVar.a(fVar.f264c);
                    }
                    menuItem.setOnMenuItemClickListener(new a(fVar.f265d, this.z));
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            boolean z3 = menuItem instanceof i;
            if (z3) {
                i iVar = (i) menuItem;
            }
            if (this.r >= 2) {
                if (z3) {
                    ((i) menuItem).b(true);
                } else if (menuItem instanceof j) {
                    j jVar = (j) menuItem;
                    try {
                        if (jVar.f315e == null) {
                            jVar.f315e = jVar.f314d.getClass().getDeclaredMethod("setExclusiveCheckable", new Class[]{Boolean.TYPE});
                        }
                        jVar.f315e.invoke(jVar.f314d, new Object[]{true});
                    } catch (Exception e2) {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
                    }
                }
            }
            String str = this.x;
            if (str != null) {
                menuItem.setActionView((View) a(str, f.f262e, f.this.a));
                z2 = true;
            }
            int i3 = this.w;
            if (i3 > 0) {
                if (!z2) {
                    menuItem.setActionView(i3);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            d.i.i.b bVar = this.A;
            if (bVar != null) {
                if (menuItem instanceof d.i.d.a.b) {
                    ((d.i.d.a.b) menuItem).a(bVar);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            CharSequence charSequence = this.B;
            boolean z4 = menuItem instanceof d.i.d.a.b;
            if (z4) {
                ((d.i.d.a.b) menuItem).setContentDescription(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.C;
            if (z4) {
                ((d.i.d.a.b) menuItem).setTooltipText(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setTooltipText(charSequence2);
            }
            char c2 = this.n;
            int i4 = this.o;
            if (z4) {
                ((d.i.d.a.b) menuItem).setAlphabeticShortcut(c2, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setAlphabeticShortcut(c2, i4);
            }
            char c3 = this.p;
            int i5 = this.q;
            if (z4) {
                ((d.i.d.a.b) menuItem).setNumericShortcut(c3, i5);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setNumericShortcut(c3, i5);
            }
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                if (z4) {
                    ((d.i.d.a.b) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList == null) {
                return;
            }
            if (z4) {
                ((d.i.d.a.b) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                menuItem.setIconTintList(colorStateList);
            }
        }

        public SubMenu a() {
            this.f272h = true;
            SubMenu addSubMenu = this.a.addSubMenu(this.b, this.f273i, this.f274j, this.f275k);
            a(addSubMenu.getItem());
            return addSubMenu;
        }

        public final <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, f.this.f264c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e2) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
                return null;
            }
        }
    }

    public final Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }
}
