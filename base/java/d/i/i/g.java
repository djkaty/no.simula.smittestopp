package d.i.i;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

public class g {
    public ViewParent a;
    public ViewParent b;

    /* renamed from: c  reason: collision with root package name */
    public final View f603c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f604d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f605e;

    public g(View view) {
        this.f603c = view;
    }

    public boolean a(float f2, float f3, boolean z) {
        ViewParent a2;
        if (!this.f604d || (a2 = a(0)) == null) {
            return false;
        }
        try {
            return a2.onNestedFling(this.f603c, f2, f3, z);
        } catch (AbstractMethodError e2) {
            Log.e("ViewParentCompat", "ViewParent " + a2 + " does not implement interface method onNestedFling", e2);
            return false;
        }
    }

    public boolean b(int i2) {
        return a(i2) != null;
    }

    public void c(int i2) {
        ViewParent a2 = a(i2);
        if (a2 != null) {
            View view = this.f603c;
            if (a2 instanceof h) {
                ((h) a2).a(view, i2);
            } else if (i2 == 0) {
                try {
                    a2.onStopNestedScroll(view);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + a2 + " does not implement interface method onStopNestedScroll", e2);
                }
            }
            if (i2 == 0) {
                this.a = null;
            } else if (i2 == 1) {
                this.b = null;
            }
        }
    }

    public boolean a(float f2, float f3) {
        ViewParent a2;
        if (!this.f604d || (a2 = a(0)) == null) {
            return false;
        }
        try {
            return a2.onNestedPreFling(this.f603c, f2, f3);
        } catch (AbstractMethodError e2) {
            Log.e("ViewParentCompat", "ViewParent " + a2 + " does not implement interface method onNestedPreFling", e2);
            return false;
        }
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        ViewParent a2;
        int i5;
        int i6;
        int[] iArr3;
        int i7 = i2;
        int i8 = i3;
        int[] iArr4 = iArr2;
        int i9 = i4;
        if (!this.f604d || (a2 = a(i9)) == null) {
            return false;
        }
        if (i7 != 0 || i8 != 0) {
            if (iArr4 != null) {
                this.f603c.getLocationInWindow(iArr4);
                i6 = iArr4[0];
                i5 = iArr4[1];
            } else {
                i6 = 0;
                i5 = 0;
            }
            if (iArr == null) {
                if (this.f605e == null) {
                    this.f605e = new int[2];
                }
                iArr3 = this.f605e;
            } else {
                iArr3 = iArr;
            }
            iArr3[0] = 0;
            iArr3[1] = 0;
            View view = this.f603c;
            if (a2 instanceof h) {
                ((h) a2).a(view, i2, i3, iArr3, i4);
            } else if (i9 == 0) {
                try {
                    a2.onNestedPreScroll(view, i2, i8, iArr3);
                } catch (AbstractMethodError e2) {
                    AbstractMethodError abstractMethodError = e2;
                    Log.e("ViewParentCompat", "ViewParent " + a2 + " does not implement interface method onNestedPreScroll", abstractMethodError);
                }
            }
            if (iArr4 != null) {
                this.f603c.getLocationInWindow(iArr4);
                iArr4[0] = iArr4[0] - i6;
                iArr4[1] = iArr4[1] - i5;
            }
            if (iArr3[0] == 0 && iArr3[1] == 0) {
                return false;
            }
            return true;
        } else if (iArr4 == null) {
            return false;
        } else {
            iArr4[0] = 0;
            iArr4[1] = 0;
            return false;
        }
    }

    public final boolean a(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        ViewParent a2;
        int i7;
        int i8;
        int[] iArr3;
        int[] iArr4 = iArr;
        int i9 = i6;
        if (!this.f604d || (a2 = a(i9)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) {
            if (iArr4 != null) {
                iArr4[0] = 0;
                iArr4[1] = 0;
            }
            return false;
        }
        if (iArr4 != null) {
            this.f603c.getLocationInWindow(iArr4);
            i8 = iArr4[0];
            i7 = iArr4[1];
        } else {
            i8 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            if (this.f605e == null) {
                this.f605e = new int[2];
            }
            int[] iArr5 = this.f605e;
            iArr5[0] = 0;
            iArr5[1] = 0;
            iArr3 = iArr5;
        } else {
            iArr3 = iArr2;
        }
        View view = this.f603c;
        if (a2 instanceof i) {
            ((i) a2).a(view, i2, i3, i4, i5, i6, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i4;
            iArr3[1] = iArr3[1] + i5;
            if (a2 instanceof h) {
                ((h) a2).a(view, i2, i3, i4, i5, i6);
            } else if (i9 == 0) {
                try {
                    a2.onNestedScroll(view, i2, i3, i4, i5);
                } catch (AbstractMethodError e2) {
                    AbstractMethodError abstractMethodError = e2;
                    Log.e("ViewParentCompat", "ViewParent " + a2 + " does not implement interface method onNestedScroll", abstractMethodError);
                }
            }
        }
        if (iArr4 != null) {
            this.f603c.getLocationInWindow(iArr4);
            iArr4[0] = iArr4[0] - i8;
            iArr4[1] = iArr4[1] - i7;
        }
        return true;
    }

    public boolean a(int i2, int i3) {
        boolean z;
        if (a(i3) != null) {
            return true;
        }
        if (this.f604d) {
            View view = this.f603c;
            for (ViewParent parent = this.f603c.getParent(); parent != null; parent = parent.getParent()) {
                View view2 = this.f603c;
                boolean z2 = parent instanceof h;
                if (z2) {
                    z = ((h) parent).b(view, view2, i2, i3);
                } else {
                    if (i3 == 0) {
                        try {
                            z = parent.onStartNestedScroll(view, view2, i2);
                        } catch (AbstractMethodError e2) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e2);
                        }
                    }
                    z = false;
                }
                if (z) {
                    if (i3 == 0) {
                        this.a = parent;
                    } else if (i3 == 1) {
                        this.b = parent;
                    }
                    View view3 = this.f603c;
                    if (z2) {
                        ((h) parent).a(view, view3, i2, i3);
                    } else if (i3 == 0) {
                        try {
                            parent.onNestedScrollAccepted(view, view3, i2);
                        } catch (AbstractMethodError e3) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e3);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public boolean a(int i2, int i3, int i4, int i5, int[] iArr) {
        return a(i2, i3, i4, i5, iArr, 0, (int[]) null);
    }

    public final ViewParent a(int i2) {
        if (i2 == 0) {
            return this.a;
        }
        if (i2 != 1) {
            return null;
        }
        return this.b;
    }
}
