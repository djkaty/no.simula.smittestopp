package com.android.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.volley.toolbox.ImageLoader;

public class NetworkImageView extends ImageView {
    public int mDefaultImageId;
    public int mErrorImageId;
    public ImageLoader.ImageContainer mImageContainer;
    public ImageLoader mImageLoader;
    public String mUrl;

    public NetworkImageView(Context context) {
        this(context, (AttributeSet) null);
    }

    private void setDefaultImageOrNull() {
        int i2 = this.mDefaultImageId;
        if (i2 != 0) {
            setImageResource(i2);
        } else {
            setImageBitmap((Bitmap) null);
        }
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x004f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void loadImageIfNecessary(final boolean r9) {
        /*
            r8 = this;
            int r0 = r8.getWidth()
            int r1 = r8.getHeight()
            android.widget.ImageView$ScaleType r7 = r8.getScaleType()
            android.view.ViewGroup$LayoutParams r2 = r8.getLayoutParams()
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L_0x002a
            android.view.ViewGroup$LayoutParams r2 = r8.getLayoutParams()
            int r2 = r2.width
            r5 = -2
            if (r2 != r5) goto L_0x001f
            r2 = 1
            goto L_0x0020
        L_0x001f:
            r2 = 0
        L_0x0020:
            android.view.ViewGroup$LayoutParams r6 = r8.getLayoutParams()
            int r6 = r6.height
            if (r6 != r5) goto L_0x002b
            r5 = 1
            goto L_0x002c
        L_0x002a:
            r2 = 0
        L_0x002b:
            r5 = 0
        L_0x002c:
            if (r2 == 0) goto L_0x0031
            if (r5 == 0) goto L_0x0031
            goto L_0x0032
        L_0x0031:
            r3 = 0
        L_0x0032:
            if (r0 != 0) goto L_0x0039
            if (r1 != 0) goto L_0x0039
            if (r3 != 0) goto L_0x0039
            return
        L_0x0039:
            java.lang.String r3 = r8.mUrl
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 == 0) goto L_0x004f
            com.android.volley.toolbox.ImageLoader$ImageContainer r9 = r8.mImageContainer
            if (r9 == 0) goto L_0x004b
            r9.cancelRequest()
            r9 = 0
            r8.mImageContainer = r9
        L_0x004b:
            r8.setDefaultImageOrNull()
            return
        L_0x004f:
            com.android.volley.toolbox.ImageLoader$ImageContainer r3 = r8.mImageContainer
            if (r3 == 0) goto L_0x0070
            java.lang.String r3 = r3.getRequestUrl()
            if (r3 == 0) goto L_0x0070
            com.android.volley.toolbox.ImageLoader$ImageContainer r3 = r8.mImageContainer
            java.lang.String r3 = r3.getRequestUrl()
            java.lang.String r6 = r8.mUrl
            boolean r3 = r3.equals(r6)
            if (r3 == 0) goto L_0x0068
            return
        L_0x0068:
            com.android.volley.toolbox.ImageLoader$ImageContainer r3 = r8.mImageContainer
            r3.cancelRequest()
            r8.setDefaultImageOrNull()
        L_0x0070:
            if (r2 == 0) goto L_0x0073
            r0 = 0
        L_0x0073:
            if (r5 == 0) goto L_0x0077
            r6 = 0
            goto L_0x0078
        L_0x0077:
            r6 = r1
        L_0x0078:
            com.android.volley.toolbox.ImageLoader r2 = r8.mImageLoader
            java.lang.String r3 = r8.mUrl
            com.android.volley.toolbox.NetworkImageView$1 r4 = new com.android.volley.toolbox.NetworkImageView$1
            r4.<init>(r9)
            r5 = r0
            com.android.volley.toolbox.ImageLoader$ImageContainer r9 = r2.get(r3, r4, r5, r6, r7)
            r8.mImageContainer = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.NetworkImageView.loadImageIfNecessary(boolean):void");
    }

    public void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.mImageContainer;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap((Bitmap) null);
            this.mImageContainer = null;
        }
        super.onDetachedFromWindow();
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        loadImageIfNecessary(true);
    }

    public void setDefaultImageResId(int i2) {
        this.mDefaultImageId = i2;
    }

    public void setErrorImageResId(int i2) {
        this.mErrorImageId = i2;
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        Threads.throwIfNotOnMainThread();
        this.mUrl = str;
        this.mImageLoader = imageLoader;
        loadImageIfNecessary(false);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
