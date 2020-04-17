package d.i.j;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.Method;

public class d implements ActionMode.Callback {
    public final ActionMode.Callback a;
    public final TextView b;

    /* renamed from: c  reason: collision with root package name */
    public Class<?> f629c;

    /* renamed from: d  reason: collision with root package name */
    public Method f630d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f631e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f632f = false;

    public d(ActionMode.Callback callback, TextView textView) {
        this.a = callback;
        this.b = textView;
    }

    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.a.onActionItemClicked(actionMode, menuItem);
    }

    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.a.onCreateActionMode(actionMode, menu);
    }

    public void onDestroyActionMode(ActionMode actionMode) {
        this.a.onDestroyActionMode(actionMode);
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x00d1  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x009f A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onPrepareActionMode(android.view.ActionMode r13, android.view.Menu r14) {
        /*
            r12 = this;
            android.widget.TextView r0 = r12.b
            android.content.Context r0 = r0.getContext()
            android.content.pm.PackageManager r1 = r0.getPackageManager()
            boolean r2 = r12.f632f
            java.lang.String r3 = "removeItemAt"
            r4 = 1
            r5 = 0
            if (r2 != 0) goto L_0x0032
            r12.f632f = r4
            java.lang.String r2 = "com.android.internal.view.menu.MenuBuilder"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch:{ ClassNotFoundException | NoSuchMethodException -> 0x002b }
            r12.f629c = r2     // Catch:{ ClassNotFoundException | NoSuchMethodException -> 0x002b }
            java.lang.Class[] r6 = new java.lang.Class[r4]     // Catch:{ ClassNotFoundException | NoSuchMethodException -> 0x002b }
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch:{ ClassNotFoundException | NoSuchMethodException -> 0x002b }
            r6[r5] = r7     // Catch:{ ClassNotFoundException | NoSuchMethodException -> 0x002b }
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r6)     // Catch:{ ClassNotFoundException | NoSuchMethodException -> 0x002b }
            r12.f630d = r2     // Catch:{ ClassNotFoundException | NoSuchMethodException -> 0x002b }
            r12.f631e = r4     // Catch:{ ClassNotFoundException | NoSuchMethodException -> 0x002b }
            goto L_0x0032
        L_0x002b:
            r2 = 0
            r12.f629c = r2
            r12.f630d = r2
            r12.f631e = r5
        L_0x0032:
            boolean r2 = r12.f631e     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            if (r2 == 0) goto L_0x0041
            java.lang.Class<?> r2 = r12.f629c     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            boolean r2 = r2.isInstance(r14)     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            if (r2 == 0) goto L_0x0041
            java.lang.reflect.Method r2 = r12.f630d     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            goto L_0x004f
        L_0x0041:
            java.lang.Class r2 = r14.getClass()     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            java.lang.Class[] r6 = new java.lang.Class[r4]     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            r6[r5] = r7     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r6)     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
        L_0x004f:
            int r3 = r14.size()     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            int r3 = r3 - r4
        L_0x0054:
            java.lang.String r6 = "android.intent.action.PROCESS_TEXT"
            if (r3 < 0) goto L_0x007e
            android.view.MenuItem r7 = r14.getItem(r3)     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            android.content.Intent r8 = r7.getIntent()     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            if (r8 == 0) goto L_0x007b
            android.content.Intent r7 = r7.getIntent()     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            java.lang.String r7 = r7.getAction()     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            boolean r6 = r6.equals(r7)     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            if (r6 == 0) goto L_0x007b
            java.lang.Object[] r6 = new java.lang.Object[r4]     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r3)     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            r6[r5] = r7     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
            r2.invoke(r14, r6)     // Catch:{ IllegalAccessException | NoSuchMethodException | InvocationTargetException -> 0x0129 }
        L_0x007b:
            int r3 = r3 + -1
            goto L_0x0054
        L_0x007e:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            boolean r3 = r0 instanceof android.app.Activity
            java.lang.String r7 = "text/plain"
            if (r3 != 0) goto L_0x008a
            goto L_0x00d5
        L_0x008a:
            android.content.Intent r3 = new android.content.Intent
            r3.<init>()
            android.content.Intent r3 = r3.setAction(r6)
            android.content.Intent r3 = r3.setType(r7)
            java.util.List r3 = r1.queryIntentActivities(r3, r5)
            java.util.Iterator r3 = r3.iterator()
        L_0x009f:
            boolean r8 = r3.hasNext()
            if (r8 == 0) goto L_0x00d5
            java.lang.Object r8 = r3.next()
            android.content.pm.ResolveInfo r8 = (android.content.pm.ResolveInfo) r8
            java.lang.String r9 = r0.getPackageName()
            android.content.pm.ActivityInfo r10 = r8.activityInfo
            java.lang.String r10 = r10.packageName
            boolean r9 = r9.equals(r10)
            if (r9 == 0) goto L_0x00ba
            goto L_0x00ce
        L_0x00ba:
            android.content.pm.ActivityInfo r9 = r8.activityInfo
            boolean r10 = r9.exported
            if (r10 != 0) goto L_0x00c1
            goto L_0x00cc
        L_0x00c1:
            java.lang.String r9 = r9.permission
            if (r9 == 0) goto L_0x00ce
            int r9 = r0.checkSelfPermission(r9)
            if (r9 != 0) goto L_0x00cc
            goto L_0x00ce
        L_0x00cc:
            r9 = 0
            goto L_0x00cf
        L_0x00ce:
            r9 = 1
        L_0x00cf:
            if (r9 == 0) goto L_0x009f
            r2.add(r8)
            goto L_0x009f
        L_0x00d5:
            r0 = 0
        L_0x00d6:
            int r3 = r2.size()
            if (r0 >= r3) goto L_0x0129
            java.lang.Object r3 = r2.get(r0)
            android.content.pm.ResolveInfo r3 = (android.content.pm.ResolveInfo) r3
            int r8 = r0 + 100
            java.lang.CharSequence r9 = r3.loadLabel(r1)
            android.view.MenuItem r8 = r14.add(r5, r5, r8, r9)
            android.widget.TextView r9 = r12.b
            android.content.Intent r10 = new android.content.Intent
            r10.<init>()
            android.content.Intent r10 = r10.setAction(r6)
            android.content.Intent r10 = r10.setType(r7)
            boolean r11 = r9 instanceof android.text.Editable
            if (r11 == 0) goto L_0x010d
            boolean r11 = r9.onCheckIsTextEditor()
            if (r11 == 0) goto L_0x010d
            boolean r9 = r9.isEnabled()
            if (r9 == 0) goto L_0x010d
            r9 = 1
            goto L_0x010e
        L_0x010d:
            r9 = 0
        L_0x010e:
            r9 = r9 ^ r4
            java.lang.String r11 = "android.intent.extra.PROCESS_TEXT_READONLY"
            android.content.Intent r9 = r10.putExtra(r11, r9)
            android.content.pm.ActivityInfo r3 = r3.activityInfo
            java.lang.String r10 = r3.packageName
            java.lang.String r3 = r3.name
            android.content.Intent r3 = r9.setClassName(r10, r3)
            android.view.MenuItem r3 = r8.setIntent(r3)
            r3.setShowAsAction(r4)
            int r0 = r0 + 1
            goto L_0x00d6
        L_0x0129:
            android.view.ActionMode$Callback r0 = r12.a
            boolean r13 = r0.onPrepareActionMode(r13, r14)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: d.i.j.d.onPrepareActionMode(android.view.ActionMode, android.view.Menu):boolean");
    }
}
