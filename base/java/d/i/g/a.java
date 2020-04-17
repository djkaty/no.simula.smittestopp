package d.i.g;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.Objects;

public class a implements Spannable {
    public char charAt(int i2) {
        throw null;
    }

    public int getSpanEnd(Object obj) {
        throw null;
    }

    public int getSpanFlags(Object obj) {
        throw null;
    }

    public int getSpanStart(Object obj) {
        throw null;
    }

    @SuppressLint({"NewApi"})
    public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        throw null;
    }

    public int length() {
        throw null;
    }

    public int nextSpanTransition(int i2, int i3, Class cls) {
        throw null;
    }

    @SuppressLint({"NewApi"})
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        } else if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        } else {
            throw null;
        }
    }

    @SuppressLint({"NewApi"})
    public void setSpan(Object obj, int i2, int i3, int i4) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        } else if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        } else {
            throw null;
        }
    }

    public CharSequence subSequence(int i2, int i3) {
        throw null;
    }

    public String toString() {
        throw null;
    }

    /* renamed from: d.i.g.a$a  reason: collision with other inner class name */
    public static final class C0026a {
        public final TextPaint a;
        public final TextDirectionHeuristic b;

        /* renamed from: c  reason: collision with root package name */
        public final int f597c;

        /* renamed from: d  reason: collision with root package name */
        public final int f598d;

        @SuppressLint({"NewApi"})
        public C0026a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i2, int i3) {
            if (Build.VERSION.SDK_INT >= 29) {
                new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i2).setHyphenationFrequency(i3).setTextDirection(textDirectionHeuristic).build();
            }
            this.a = textPaint;
            this.b = textDirectionHeuristic;
            this.f597c = i2;
            this.f598d = i3;
        }

        public boolean a(C0026a aVar) {
            if ((Build.VERSION.SDK_INT >= 23 && (this.f597c != aVar.f597c || this.f598d != aVar.f598d)) || this.a.getTextSize() != aVar.a.getTextSize() || this.a.getTextScaleX() != aVar.a.getTextScaleX() || this.a.getTextSkewX() != aVar.a.getTextSkewX() || this.a.getLetterSpacing() != aVar.a.getLetterSpacing() || !TextUtils.equals(this.a.getFontFeatureSettings(), aVar.a.getFontFeatureSettings()) || this.a.getFlags() != aVar.a.getFlags()) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                if (!this.a.getTextLocales().equals(aVar.a.getTextLocales())) {
                    return false;
                }
            } else if (!this.a.getTextLocale().equals(aVar.a.getTextLocale())) {
                return false;
            }
            if (this.a.getTypeface() == null) {
                if (aVar.a.getTypeface() != null) {
                    return false;
                }
                return true;
            } else if (!this.a.getTypeface().equals(aVar.a.getTypeface())) {
                return false;
            } else {
                return true;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0026a)) {
                return false;
            }
            C0026a aVar = (C0026a) obj;
            return a(aVar) && this.b == aVar.b;
        }

        public int hashCode() {
            if (Build.VERSION.SDK_INT >= 24) {
                return Objects.hash(new Object[]{Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Float.valueOf(this.a.getLetterSpacing()), Integer.valueOf(this.a.getFlags()), this.a.getTextLocales(), this.a.getTypeface(), Boolean.valueOf(this.a.isElegantTextHeight()), this.b, Integer.valueOf(this.f597c), Integer.valueOf(this.f598d)});
            }
            return Objects.hash(new Object[]{Float.valueOf(this.a.getTextSize()), Float.valueOf(this.a.getTextScaleX()), Float.valueOf(this.a.getTextSkewX()), Float.valueOf(this.a.getLetterSpacing()), Integer.valueOf(this.a.getFlags()), this.a.getTextLocale(), this.a.getTypeface(), Boolean.valueOf(this.a.isElegantTextHeight()), this.b, Integer.valueOf(this.f597c), Integer.valueOf(this.f598d)});
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            StringBuilder a2 = e.a.a.a.a.a("textSize=");
            a2.append(this.a.getTextSize());
            sb.append(a2.toString());
            sb.append(", textScaleX=" + this.a.getTextScaleX());
            sb.append(", textSkewX=" + this.a.getTextSkewX());
            sb.append(", letterSpacing=" + this.a.getLetterSpacing());
            sb.append(", elegantTextHeight=" + this.a.isElegantTextHeight());
            if (Build.VERSION.SDK_INT >= 24) {
                StringBuilder a3 = e.a.a.a.a.a(", textLocale=");
                a3.append(this.a.getTextLocales());
                sb.append(a3.toString());
            } else {
                StringBuilder a4 = e.a.a.a.a.a(", textLocale=");
                a4.append(this.a.getTextLocale());
                sb.append(a4.toString());
            }
            StringBuilder a5 = e.a.a.a.a.a(", typeface=");
            a5.append(this.a.getTypeface());
            sb.append(a5.toString());
            if (Build.VERSION.SDK_INT >= 26) {
                StringBuilder a6 = e.a.a.a.a.a(", variationSettings=");
                a6.append(this.a.getFontVariationSettings());
                sb.append(a6.toString());
            }
            StringBuilder a7 = e.a.a.a.a.a(", textDir=");
            a7.append(this.b);
            sb.append(a7.toString());
            sb.append(", breakStrategy=" + this.f597c);
            sb.append(", hyphenationFrequency=" + this.f598d);
            sb.append("}");
            return sb.toString();
        }

        public C0026a(PrecomputedText.Params params) {
            this.a = params.getTextPaint();
            this.b = params.getTextDirection();
            this.f597c = params.getBreakStrategy();
            this.f598d = params.getHyphenationFrequency();
            int i2 = Build.VERSION.SDK_INT;
        }
    }
}
