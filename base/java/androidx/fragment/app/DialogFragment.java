package androidx.fragment.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import d.m.a.p;

public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public DialogInterface.OnDismissListener A = new c();
    public int B = 0;
    public int C = 0;
    public boolean D = true;
    public boolean E = true;
    public int F = -1;
    public Dialog G;
    public boolean H;
    public boolean I;
    public boolean J;
    public Handler x;
    public Runnable y = new a();
    public DialogInterface.OnCancelListener z = new b();

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            DialogFragment dialogFragment = DialogFragment.this;
            dialogFragment.A.onDismiss(dialogFragment.G);
        }
    }

    public class b implements DialogInterface.OnCancelListener {
        public b() {
        }

        public void onCancel(DialogInterface dialogInterface) {
            DialogFragment dialogFragment = DialogFragment.this;
            Dialog dialog = dialogFragment.G;
            if (dialog != null) {
                dialogFragment.onCancel(dialog);
            }
        }
    }

    public class c implements DialogInterface.OnDismissListener {
        public c() {
        }

        public void onDismiss(DialogInterface dialogInterface) {
            DialogFragment dialogFragment = DialogFragment.this;
            Dialog dialog = dialogFragment.G;
            if (dialog != null) {
                dialogFragment.onDismiss(dialog);
            }
        }
    }

    public void a(p pVar, String str) {
        this.I = false;
        this.J = true;
        if (pVar != null) {
            d.m.a.a aVar = new d.m.a.a(pVar);
            aVar.a(0, this, str, 1);
            aVar.a();
            return;
        }
        throw null;
    }

    public void onActivityCreated(Bundle bundle) {
        Bundle bundle2;
        super.onActivityCreated(bundle);
        if (this.E) {
            View view = getView();
            if (view != null) {
                if (view.getParent() == null) {
                    this.G.setContentView(view);
                } else {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
            }
            d.m.a.c activity = getActivity();
            if (activity != null) {
                this.G.setOwnerActivity(activity);
            }
            this.G.setCancelable(this.D);
            this.G.setOnCancelListener(this.z);
            this.G.setOnDismissListener(this.A);
            if (bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
                this.G.onRestoreInstanceState(bundle2);
            }
        }
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        if (!this.J) {
            this.I = false;
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.x = new Handler();
        this.E = this.mContainerId == 0;
        if (bundle != null) {
            this.B = bundle.getInt("android:style", 0);
            this.C = bundle.getInt("android:theme", 0);
            this.D = bundle.getBoolean("android:cancelable", true);
            this.E = bundle.getBoolean("android:showsDialog", this.E);
            this.F = bundle.getInt("android:backStackId", -1);
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.G;
        if (dialog != null) {
            this.H = true;
            dialog.setOnDismissListener((DialogInterface.OnDismissListener) null);
            this.G.dismiss();
            if (!this.I) {
                onDismiss(this.G);
            }
            this.G = null;
        }
    }

    public void onDetach() {
        super.onDetach();
        if (!this.J && !this.I) {
            this.I = true;
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.H) {
            a(true, true);
        }
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        if (!this.E) {
            return super.onGetLayoutInflater(bundle);
        }
        Dialog a2 = a(bundle);
        this.G = a2;
        if (a2 == null) {
            return (LayoutInflater) this.mHost.y.getSystemService("layout_inflater");
        }
        a(a2, this.B);
        return (LayoutInflater) this.G.getContext().getSystemService("layout_inflater");
    }

    public void onSaveInstanceState(Bundle bundle) {
        Bundle onSaveInstanceState;
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.G;
        if (!(dialog == null || (onSaveInstanceState = dialog.onSaveInstanceState()) == null)) {
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i2 = this.B;
        if (i2 != 0) {
            bundle.putInt("android:style", i2);
        }
        int i3 = this.C;
        if (i3 != 0) {
            bundle.putInt("android:theme", i3);
        }
        boolean z2 = this.D;
        if (!z2) {
            bundle.putBoolean("android:cancelable", z2);
        }
        boolean z3 = this.E;
        if (!z3) {
            bundle.putBoolean("android:showsDialog", z3);
        }
        int i4 = this.F;
        if (i4 != -1) {
            bundle.putInt("android:backStackId", i4);
        }
    }

    public void onStart() {
        super.onStart();
        Dialog dialog = this.G;
        if (dialog != null) {
            this.H = false;
            dialog.show();
        }
    }

    public void onStop() {
        super.onStop();
        Dialog dialog = this.G;
        if (dialog != null) {
            dialog.hide();
        }
    }

    public void a(boolean z2, boolean z3) {
        if (!this.I) {
            this.I = true;
            this.J = false;
            Dialog dialog = this.G;
            if (dialog != null) {
                dialog.setOnDismissListener((DialogInterface.OnDismissListener) null);
                this.G.dismiss();
                if (!z3) {
                    if (Looper.myLooper() == this.x.getLooper()) {
                        onDismiss(this.G);
                    } else {
                        this.x.post(this.y);
                    }
                }
            }
            this.H = true;
            if (this.F >= 0) {
                p parentFragmentManager = getParentFragmentManager();
                int i2 = this.F;
                if (parentFragmentManager == null) {
                    throw null;
                } else if (i2 >= 0) {
                    parentFragmentManager.a((p.e) new p.f((String) null, i2, 1), false);
                    this.F = -1;
                } else {
                    throw new IllegalArgumentException(e.a.a.a.a.a("Bad id: ", i2));
                }
            } else {
                p parentFragmentManager2 = getParentFragmentManager();
                if (parentFragmentManager2 != null) {
                    d.m.a.a aVar = new d.m.a.a(parentFragmentManager2);
                    aVar.a((Fragment) this);
                    if (z2) {
                        aVar.a(true);
                    } else {
                        aVar.a();
                    }
                } else {
                    throw null;
                }
            }
        }
    }

    public void a(Dialog dialog, int i2) {
        if (!(i2 == 1 || i2 == 2)) {
            if (i2 == 3) {
                dialog.getWindow().addFlags(24);
            } else {
                return;
            }
        }
        dialog.requestWindowFeature(1);
    }

    public Dialog a(Bundle bundle) {
        return new Dialog(requireContext(), this.C);
    }
}
