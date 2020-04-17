package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.microsoft.azure.storage.blob.BlobConstants;
import e.c.a.a.b.a;
import e.c.a.a.b.d;
import e.c.a.a.b.i.k.c;

@KeepName
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {
    public int x = 0;

    public static PendingIntent a(Context context, PendingIntent pendingIntent, int i2) {
        Intent intent = new Intent(context, GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i2);
        intent.putExtra("notify_manager", true);
        return PendingIntent.getActivity(context, 0, intent, BlobConstants.DEFAULT_SINGLE_BLOB_PUT_THRESHOLD_IN_BYTES);
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.x = 0;
            setResult(i3, intent);
            if (booleanExtra) {
                c a = c.a((Context) this);
                if (i3 == -1) {
                    Handler handler = a.m;
                    handler.sendMessage(handler.obtainMessage(3));
                } else if (i3 == 0) {
                    a aVar = new a(13, (PendingIntent) null);
                    int intExtra = getIntent().getIntExtra("failing_client_id", -1);
                    if (!a.a(aVar, intExtra)) {
                        Handler handler2 = a.m;
                        handler2.sendMessage(handler2.obtainMessage(5, intExtra, 0, aVar));
                    }
                }
            }
        } else if (i2 == 2) {
            this.x = 0;
            setResult(i3, intent);
        }
        finish();
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.x = 0;
        setResult(0);
        finish();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.x = bundle.getInt("resolution");
        }
        if (this.x != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                Log.e("GoogleApiActivity", "Activity started without extras");
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                Log.e("GoogleApiActivity", "Activity started without resolution");
                finish();
            } else if (pendingIntent != null) {
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 1, (Intent) null, 0, 0, 0);
                    this.x = 1;
                } catch (IntentSender.SendIntentException e2) {
                    Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e2);
                    finish();
                }
            } else {
                d.f1123c.a(this, num.intValue(), 2, this);
                this.x = 1;
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.x);
        super.onSaveInstanceState(bundle);
    }
}
