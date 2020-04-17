package d.b.a;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.app.AlertController;
import androidx.core.widget.NestedScrollView;
import d.b.e.i0;
import d.i.i.n;

public class g extends q implements DialogInterface {
    public final AlertController z = new AlertController(getContext(), this, getWindow());

    public static class a {
        public final AlertController.b a;
        public final int b;

        public a(Context context) {
            int a2 = g.a(context, 0);
            this.a = new AlertController.b(new ContextThemeWrapper(context, g.a(context, a2)));
            this.b = a2;
        }

        public g a() {
            int i2;
            g gVar = new g(this.a.a, this.b);
            AlertController.b bVar = this.a;
            AlertController alertController = gVar.z;
            View view = bVar.f14g;
            if (view != null) {
                alertController.G = view;
            } else {
                CharSequence charSequence = bVar.f13f;
                if (charSequence != null) {
                    alertController.f2e = charSequence;
                    TextView textView = alertController.E;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = bVar.f11d;
                if (drawable != null) {
                    alertController.C = drawable;
                    alertController.B = 0;
                    ImageView imageView = alertController.D;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.D.setImageDrawable(drawable);
                    }
                }
                int i3 = bVar.f10c;
                if (i3 != 0) {
                    alertController.a(i3);
                }
                int i4 = bVar.f12e;
                if (i4 != 0) {
                    if (alertController != null) {
                        TypedValue typedValue = new TypedValue();
                        alertController.a.getTheme().resolveAttribute(i4, typedValue, true);
                        alertController.a(typedValue.resourceId);
                    } else {
                        throw null;
                    }
                }
            }
            if (bVar.f19l != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) bVar.b.inflate(alertController.L, (ViewGroup) null);
                if (bVar.o) {
                    i2 = alertController.N;
                } else {
                    i2 = alertController.O;
                }
                ListAdapter listAdapter = bVar.f19l;
                if (listAdapter == null) {
                    listAdapter = new AlertController.d(bVar.a, i2, 16908308, (CharSequence[]) null);
                }
                alertController.H = listAdapter;
                alertController.I = bVar.p;
                if (bVar.m != null) {
                    recycleListView.setOnItemClickListener(new f(bVar, alertController));
                }
                if (bVar.o) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.f4g = recycleListView;
            }
            gVar.setCancelable(this.a.f15h);
            if (this.a.f15h) {
                gVar.setCanceledOnTouchOutside(true);
            }
            gVar.setOnCancelListener(this.a.f16i);
            gVar.setOnDismissListener(this.a.f17j);
            DialogInterface.OnKeyListener onKeyListener = this.a.f18k;
            if (onKeyListener != null) {
                gVar.setOnKeyListener(onKeyListener);
            }
            return gVar;
        }
    }

    public g(Context context, int i2) {
        super(context, a(context, i2));
    }

    public static int a(Context context, int i2) {
        if (((i2 >>> 24) & 255) >= 1) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public void onCreate(Bundle bundle) {
        boolean z2;
        ListAdapter listAdapter;
        View view;
        View findViewById;
        super.onCreate(bundle);
        AlertController alertController = this.z;
        int i2 = alertController.K;
        if (i2 == 0) {
            i2 = alertController.J;
        } else if (alertController.Q != 1) {
            i2 = alertController.J;
        }
        alertController.b.setContentView(i2);
        View findViewById2 = alertController.f0c.findViewById(R$id.parentPanel);
        View findViewById3 = findViewById2.findViewById(R$id.topPanel);
        View findViewById4 = findViewById2.findViewById(R$id.contentPanel);
        View findViewById5 = findViewById2.findViewById(R$id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R$id.customPanel);
        View view2 = alertController.f5h;
        View view3 = null;
        int i3 = 0;
        if (view2 == null) {
            view2 = alertController.f6i != 0 ? LayoutInflater.from(alertController.a).inflate(alertController.f6i, viewGroup, false) : null;
        }
        boolean z3 = view2 != null;
        if (!z3 || !AlertController.a(view2)) {
            alertController.f0c.setFlags(131072, 131072);
        }
        if (z3) {
            FrameLayout frameLayout = (FrameLayout) alertController.f0c.findViewById(R$id.custom);
            frameLayout.addView(view2, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.n) {
                frameLayout.setPadding(alertController.f7j, alertController.f8k, alertController.f9l, alertController.m);
            }
            if (alertController.f4g != null) {
                ((i0.a) viewGroup.getLayoutParams()).a = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(R$id.topPanel);
        View findViewById7 = viewGroup.findViewById(R$id.contentPanel);
        View findViewById8 = viewGroup.findViewById(R$id.buttonPanel);
        ViewGroup a2 = alertController.a(findViewById6, findViewById3);
        ViewGroup a3 = alertController.a(findViewById7, findViewById4);
        ViewGroup a4 = alertController.a(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) alertController.f0c.findViewById(R$id.scrollView);
        alertController.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) a3.findViewById(16908299);
        alertController.F = textView;
        if (textView != null) {
            CharSequence charSequence = alertController.f3f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                alertController.A.removeView(alertController.F);
                if (alertController.f4g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) alertController.A.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(alertController.A);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(alertController.f4g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    a3.setVisibility(8);
                }
            }
        }
        Button button = (Button) a4.findViewById(16908313);
        alertController.o = button;
        button.setOnClickListener(alertController.S);
        if (!TextUtils.isEmpty(alertController.p) || alertController.r != null) {
            alertController.o.setText(alertController.p);
            Drawable drawable = alertController.r;
            if (drawable != null) {
                int i4 = alertController.f1d;
                drawable.setBounds(0, 0, i4, i4);
                alertController.o.setCompoundDrawables(alertController.r, (Drawable) null, (Drawable) null, (Drawable) null);
            }
            alertController.o.setVisibility(0);
            z2 = true;
        } else {
            alertController.o.setVisibility(8);
            z2 = false;
        }
        Button button2 = (Button) a4.findViewById(16908314);
        alertController.s = button2;
        button2.setOnClickListener(alertController.S);
        if (!TextUtils.isEmpty(alertController.t) || alertController.v != null) {
            alertController.s.setText(alertController.t);
            Drawable drawable2 = alertController.v;
            if (drawable2 != null) {
                int i5 = alertController.f1d;
                drawable2.setBounds(0, 0, i5, i5);
                alertController.s.setCompoundDrawables(alertController.v, (Drawable) null, (Drawable) null, (Drawable) null);
            }
            alertController.s.setVisibility(0);
            z2 |= true;
        } else {
            alertController.s.setVisibility(8);
        }
        Button button3 = (Button) a4.findViewById(16908315);
        alertController.w = button3;
        button3.setOnClickListener(alertController.S);
        if (!TextUtils.isEmpty(alertController.x) || alertController.z != null) {
            alertController.w.setText(alertController.x);
            Drawable drawable3 = alertController.r;
            if (drawable3 != null) {
                int i6 = alertController.f1d;
                drawable3.setBounds(0, 0, i6, i6);
                alertController.o.setCompoundDrawables(alertController.r, (Drawable) null, (Drawable) null, (Drawable) null);
            }
            alertController.w.setVisibility(0);
            z2 |= true;
        } else {
            alertController.w.setVisibility(8);
        }
        Context context = alertController.a;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (z2) {
                alertController.a(alertController.o);
            } else if (z2) {
                alertController.a(alertController.s);
            } else if (z2) {
                alertController.a(alertController.w);
            }
        }
        if (!(z2)) {
            a4.setVisibility(8);
        }
        if (alertController.G != null) {
            a2.addView(alertController.G, 0, new ViewGroup.LayoutParams(-1, -2));
            alertController.f0c.findViewById(R$id.title_template).setVisibility(8);
        } else {
            alertController.D = (ImageView) alertController.f0c.findViewById(16908294);
            if (!(!TextUtils.isEmpty(alertController.f2e)) || !alertController.P) {
                alertController.f0c.findViewById(R$id.title_template).setVisibility(8);
                alertController.D.setVisibility(8);
                a2.setVisibility(8);
            } else {
                TextView textView2 = (TextView) alertController.f0c.findViewById(R$id.alertTitle);
                alertController.E = textView2;
                textView2.setText(alertController.f2e);
                int i7 = alertController.B;
                if (i7 != 0) {
                    alertController.D.setImageResource(i7);
                } else {
                    Drawable drawable4 = alertController.C;
                    if (drawable4 != null) {
                        alertController.D.setImageDrawable(drawable4);
                    } else {
                        alertController.E.setPadding(alertController.D.getPaddingLeft(), alertController.D.getPaddingTop(), alertController.D.getPaddingRight(), alertController.D.getPaddingBottom());
                        alertController.D.setVisibility(8);
                    }
                }
            }
        }
        boolean z4 = viewGroup.getVisibility() != 8;
        int i8 = (a2 == null || a2.getVisibility() == 8) ? 0 : 1;
        boolean z5 = a4.getVisibility() != 8;
        if (!z5 && (findViewById = a3.findViewById(R$id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i8 != 0) {
            NestedScrollView nestedScrollView2 = alertController.A;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            if (alertController.f3f == null && alertController.f4g == null) {
                view = null;
            } else {
                view = a2.findViewById(R$id.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            View findViewById9 = a3.findViewById(R$id.textSpacerNoTitle);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        }
        ListView listView = alertController.f4g;
        if (listView instanceof AlertController.RecycleListView) {
            AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) listView;
            if (recycleListView == null) {
                throw null;
            } else if (!z5 || i8 == 0) {
                recycleListView.setPadding(recycleListView.getPaddingLeft(), i8 != 0 ? recycleListView.getPaddingTop() : recycleListView.x, recycleListView.getPaddingRight(), z5 ? recycleListView.getPaddingBottom() : recycleListView.y);
            }
        }
        if (!z4) {
            View view4 = alertController.f4g;
            if (view4 == null) {
                view4 = alertController.A;
            }
            if (view4 != null) {
                if (z5) {
                    i3 = 2;
                }
                int i9 = i8 | i3;
                View findViewById10 = alertController.f0c.findViewById(R$id.scrollIndicatorUp);
                View findViewById11 = alertController.f0c.findViewById(R$id.scrollIndicatorDown);
                if (Build.VERSION.SDK_INT >= 23) {
                    n.a(view4, i9, 3);
                    if (findViewById10 != null) {
                        a3.removeView(findViewById10);
                    }
                    if (findViewById11 != null) {
                        a3.removeView(findViewById11);
                    }
                } else {
                    if (findViewById10 != null && (i9 & 1) == 0) {
                        a3.removeView(findViewById10);
                        findViewById10 = null;
                    }
                    if (findViewById11 == null || (i9 & 2) != 0) {
                        view3 = findViewById11;
                    } else {
                        a3.removeView(findViewById11);
                    }
                    if (!(findViewById10 == null && view3 == null)) {
                        if (alertController.f3f != null) {
                            alertController.A.setOnScrollChangeListener(new b(alertController, findViewById10, view3));
                            alertController.A.post(new c(alertController, findViewById10, view3));
                        } else {
                            ListView listView2 = alertController.f4g;
                            if (listView2 != null) {
                                listView2.setOnScrollListener(new d(alertController, findViewById10, view3));
                                alertController.f4g.post(new e(alertController, findViewById10, view3));
                            } else {
                                if (findViewById10 != null) {
                                    a3.removeView(findViewById10);
                                }
                                if (view3 != null) {
                                    a3.removeView(view3);
                                }
                            }
                        }
                    }
                }
            }
        }
        ListView listView3 = alertController.f4g;
        if (listView3 != null && (listAdapter = alertController.H) != null) {
            listView3.setAdapter(listAdapter);
            int i10 = alertController.I;
            if (i10 > -1) {
                listView3.setItemChecked(i10, true);
                listView3.setSelection(i10);
            }
        }
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.z.A;
        if (nestedScrollView != null && nestedScrollView.a(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.z.A;
        if (nestedScrollView != null && nestedScrollView.a(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.z;
        alertController.f2e = charSequence;
        TextView textView = alertController.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
