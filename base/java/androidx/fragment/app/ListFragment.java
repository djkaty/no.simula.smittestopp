package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class ListFragment extends Fragment {
    public ListAdapter A;
    public ListView B;
    public View C;
    public TextView D;
    public View E;
    public View F;
    public boolean G;
    public final Handler x = new Handler();
    public final Runnable y = new a();
    public final AdapterView.OnItemClickListener z = new b();

    public class a implements Runnable {
        public a() {
        }

        public void run() {
            ListView listView = ListFragment.this.B;
            listView.focusableViewAvailable(listView);
        }
    }

    public class b implements AdapterView.OnItemClickListener {
        public b() {
        }

        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            ListView listView = (ListView) adapterView;
            if (ListFragment.this == null) {
                throw null;
            }
        }
    }

    public final void a(boolean z2, boolean z3) {
        a();
        View view = this.E;
        if (view == null) {
            throw new IllegalStateException("Can't be used with a custom content view");
        } else if (this.G != z2) {
            this.G = z2;
            if (z2) {
                if (z3) {
                    view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
                    this.F.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                } else {
                    view.clearAnimation();
                    this.F.clearAnimation();
                }
                this.E.setVisibility(8);
                this.F.setVisibility(0);
                return;
            }
            if (z3) {
                view.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
                this.F.startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
            } else {
                view.clearAnimation();
                this.F.clearAnimation();
            }
            this.E.setVisibility(0);
            this.F.setVisibility(8);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context requireContext = requireContext();
        FrameLayout frameLayout = new FrameLayout(requireContext);
        LinearLayout linearLayout = new LinearLayout(requireContext);
        linearLayout.setId(16711682);
        linearLayout.setOrientation(1);
        linearLayout.setVisibility(8);
        linearLayout.setGravity(17);
        linearLayout.addView(new ProgressBar(requireContext, (AttributeSet) null, 16842874), new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(requireContext);
        frameLayout2.setId(16711683);
        TextView textView = new TextView(requireContext);
        textView.setId(16711681);
        textView.setGravity(17);
        frameLayout2.addView(textView, new FrameLayout.LayoutParams(-1, -1));
        ListView listView = new ListView(requireContext);
        listView.setId(16908298);
        listView.setDrawSelectorOnTop(false);
        frameLayout2.addView(listView, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    public void onDestroyView() {
        this.x.removeCallbacks(this.y);
        this.B = null;
        this.G = false;
        this.F = null;
        this.E = null;
        this.C = null;
        this.D = null;
        super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        a();
    }

    public final void a() {
        if (this.B == null) {
            View view = getView();
            if (view != null) {
                if (view instanceof ListView) {
                    this.B = (ListView) view;
                } else {
                    TextView textView = (TextView) view.findViewById(16711681);
                    this.D = textView;
                    if (textView == null) {
                        this.C = view.findViewById(16908292);
                    } else {
                        textView.setVisibility(8);
                    }
                    this.E = view.findViewById(16711682);
                    this.F = view.findViewById(16711683);
                    View findViewById = view.findViewById(16908298);
                    if (findViewById instanceof ListView) {
                        ListView listView = (ListView) findViewById;
                        this.B = listView;
                        View view2 = this.C;
                        if (view2 != null) {
                            listView.setEmptyView(view2);
                        }
                    } else if (findViewById == null) {
                        throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                    } else {
                        throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                    }
                }
                this.G = true;
                this.B.setOnItemClickListener(this.z);
                ListAdapter listAdapter = this.A;
                boolean z2 = false;
                if (listAdapter != null) {
                    this.A = null;
                    boolean z3 = 0 != 0;
                    this.A = listAdapter;
                    ListView listView2 = this.B;
                    if (listView2 != null) {
                        listView2.setAdapter(listAdapter);
                        if (!this.G && !z3) {
                            if (requireView().getWindowToken() != null) {
                                z2 = true;
                            }
                            a(true, z2);
                        }
                    }
                } else if (this.E != null) {
                    a(false, false);
                }
                this.x.post(this.y);
                return;
            }
            throw new IllegalStateException("Content view not yet created");
        }
    }
}
