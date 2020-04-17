package d.i.i;

import android.os.Build;
import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.R$id;
import d.i.i.x.d;
import d.i.i.x.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final View.AccessibilityDelegate f600c = new View.AccessibilityDelegate();
    public final View.AccessibilityDelegate a = f600c;
    public final View.AccessibilityDelegate b = new C0027a(this);

    /* renamed from: d.i.i.a$a  reason: collision with other inner class name */
    public static final class C0027a extends View.AccessibilityDelegate {
        public final a a;

        public C0027a(a aVar) {
            this.a = aVar;
        }

        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.a.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            AccessibilityNodeProvider accessibilityNodeProvider = this.a.a.getAccessibilityNodeProvider(view);
            e eVar = accessibilityNodeProvider != null ? new e(accessibilityNodeProvider) : null;
            if (eVar != null) {
                return (AccessibilityNodeProvider) eVar.a;
            }
            return null;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.a.a(view, accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            boolean z;
            int i2;
            View view2 = view;
            d dVar = new d(accessibilityNodeInfo);
            boolean w = n.w(view);
            if (Build.VERSION.SDK_INT >= 28) {
                dVar.a.setScreenReaderFocusable(w);
            } else {
                dVar.a(1, w);
            }
            Boolean bool = (Boolean) new q(R$id.tag_accessibility_heading, Boolean.class, 28).b(view2);
            if (bool == null) {
                z = false;
            } else {
                z = bool.booleanValue();
            }
            if (Build.VERSION.SDK_INT >= 28) {
                dVar.a.setHeading(z);
            } else {
                dVar.a(2, z);
            }
            CharSequence charSequence = (CharSequence) new p(R$id.tag_accessibility_pane_title, CharSequence.class, 8, 28).b(view2);
            if (Build.VERSION.SDK_INT >= 28) {
                dVar.a.setPaneTitle(charSequence);
            } else {
                dVar.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
            }
            this.a.a(view2, dVar);
            CharSequence text = accessibilityNodeInfo.getText();
            if (Build.VERSION.SDK_INT < 26) {
                dVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                dVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                dVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                dVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                SparseArray sparseArray = (SparseArray) view2.getTag(R$id.tag_accessibility_clickable_spans);
                if (sparseArray != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                        if (((WeakReference) sparseArray.valueAt(i3)).get() == null) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        sparseArray.remove(((Integer) arrayList.get(i4)).intValue());
                    }
                }
                ClickableSpan[] a2 = d.a(text);
                if (a2 != null && a2.length > 0) {
                    dVar.a().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", R$id.accessibility_action_clickable_span);
                    SparseArray sparseArray2 = (SparseArray) view2.getTag(R$id.tag_accessibility_clickable_spans);
                    if (sparseArray2 == null) {
                        sparseArray2 = new SparseArray();
                        view2.setTag(R$id.tag_accessibility_clickable_spans, sparseArray2);
                    }
                    for (int i5 = 0; i5 < a2.length; i5++) {
                        ClickableSpan clickableSpan = a2[i5];
                        int i6 = 0;
                        while (true) {
                            if (i6 >= sparseArray2.size()) {
                                i2 = d.f613d;
                                d.f613d = i2 + 1;
                                break;
                            } else if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i6)).get())) {
                                i2 = sparseArray2.keyAt(i6);
                                break;
                            } else {
                                i6++;
                            }
                        }
                        sparseArray2.put(i2, new WeakReference(a2[i5]));
                        ClickableSpan clickableSpan2 = a2[i5];
                        Spanned spanned = (Spanned) text;
                        dVar.a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                        dVar.a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                        dVar.a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                        dVar.a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i2));
                    }
                }
            }
            List list = (List) view2.getTag(R$id.tag_accessibility_actions);
            if (list == null) {
                list = Collections.emptyList();
            }
            for (int i7 = 0; i7 < list.size(); i7++) {
                dVar.a((d.a) list.get(i7));
            }
        }

        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.a.a.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.a.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            return this.a.a(view, i2, bundle);
        }

        public void sendAccessibilityEvent(View view, int i2) {
            this.a.a.sendAccessibilityEvent(view, i2);
        }

        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.a.a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }

    public void a(View view, AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void a(View view, d dVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0076  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c6  */
    /* JADX WARNING: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.view.View r9, int r10, android.os.Bundle r11) {
        /*
            r8 = this;
            int r0 = androidx.core.R$id.tag_accessibility_actions
            java.lang.Object r0 = r9.getTag(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 != 0) goto L_0x000e
            java.util.List r0 = java.util.Collections.emptyList()
        L_0x000e:
            r1 = 0
            r2 = 0
        L_0x0010:
            int r3 = r0.size()
            if (r2 >= r3) goto L_0x0073
            java.lang.Object r3 = r0.get(r2)
            d.i.i.x.d$a r3 = (d.i.i.x.d.a) r3
            java.lang.Object r4 = r3.a
            android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction r4 = (android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction) r4
            int r4 = r4.getId()
            if (r4 != r10) goto L_0x0070
            d.i.i.x.f r0 = r3.f619c
            if (r0 == 0) goto L_0x0073
            java.lang.Class<? extends d.i.i.x.f$a> r0 = r3.b
            r2 = 0
            if (r0 == 0) goto L_0x0069
            java.lang.Class[] r4 = new java.lang.Class[r1]     // Catch:{ Exception -> 0x0043 }
            java.lang.reflect.Constructor r0 = r0.getDeclaredConstructor(r4)     // Catch:{ Exception -> 0x0043 }
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch:{ Exception -> 0x0043 }
            java.lang.Object r0 = r0.newInstance(r4)     // Catch:{ Exception -> 0x0043 }
            d.i.i.x.f$a r0 = (d.i.i.x.f.a) r0     // Catch:{ Exception -> 0x0043 }
            if (r0 == 0) goto L_0x0040
            goto L_0x0068
        L_0x0040:
            throw r2     // Catch:{ Exception -> 0x0041 }
        L_0x0041:
            r2 = move-exception
            goto L_0x0047
        L_0x0043:
            r0 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
        L_0x0047:
            java.lang.Class<? extends d.i.i.x.f$a> r4 = r3.b
            if (r4 != 0) goto L_0x004e
            java.lang.String r4 = "null"
            goto L_0x0052
        L_0x004e:
            java.lang.String r4 = r4.getName()
        L_0x0052:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Failed to execute command with argument class ViewCommandArgument: "
            r5.append(r6)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            java.lang.String r5 = "A11yActionCompat"
            android.util.Log.e(r5, r4, r2)
        L_0x0068:
            r2 = r0
        L_0x0069:
            d.i.i.x.f r0 = r3.f619c
            boolean r0 = r0.a(r9, r2)
            goto L_0x0074
        L_0x0070:
            int r2 = r2 + 1
            goto L_0x0010
        L_0x0073:
            r0 = 0
        L_0x0074:
            if (r0 != 0) goto L_0x007c
            android.view.View$AccessibilityDelegate r0 = r8.a
            boolean r0 = r0.performAccessibilityAction(r9, r10, r11)
        L_0x007c:
            if (r0 != 0) goto L_0x00cb
            int r2 = androidx.core.R$id.accessibility_action_clickable_span
            if (r10 != r2) goto L_0x00cb
            r10 = -1
            java.lang.String r0 = "ACCESSIBILITY_CLICKABLE_SPAN_ID"
            int r10 = r11.getInt(r0, r10)
            int r11 = androidx.core.R$id.tag_accessibility_clickable_spans
            java.lang.Object r11 = r9.getTag(r11)
            android.util.SparseArray r11 = (android.util.SparseArray) r11
            r0 = 1
            if (r11 == 0) goto L_0x00ca
            java.lang.Object r10 = r11.get(r10)
            java.lang.ref.WeakReference r10 = (java.lang.ref.WeakReference) r10
            if (r10 == 0) goto L_0x00ca
            java.lang.Object r10 = r10.get()
            android.text.style.ClickableSpan r10 = (android.text.style.ClickableSpan) r10
            if (r10 == 0) goto L_0x00c3
            android.view.accessibility.AccessibilityNodeInfo r11 = r9.createAccessibilityNodeInfo()
            java.lang.CharSequence r11 = r11.getText()
            android.text.style.ClickableSpan[] r11 = d.i.i.x.d.a((java.lang.CharSequence) r11)
            r2 = 0
        L_0x00b1:
            if (r11 == 0) goto L_0x00c3
            int r3 = r11.length
            if (r2 >= r3) goto L_0x00c3
            r3 = r11[r2]
            boolean r3 = r10.equals(r3)
            if (r3 == 0) goto L_0x00c0
            r11 = 1
            goto L_0x00c4
        L_0x00c0:
            int r2 = r2 + 1
            goto L_0x00b1
        L_0x00c3:
            r11 = 0
        L_0x00c4:
            if (r11 == 0) goto L_0x00ca
            r10.onClick(r9)
            r1 = 1
        L_0x00ca:
            r0 = r1
        L_0x00cb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.i.i.a.a(android.view.View, int, android.os.Bundle):boolean");
    }
}
