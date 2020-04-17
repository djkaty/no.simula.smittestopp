package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.microsoft.identity.common.R;
import com.microsoft.identity.common.internal.logging.Logger;

public final class NtlmChallengeHandler implements IChallengeHandler<NtlmChallenge, Void> {
    public static final String TAG = "NtlmChallengeHandler";
    public Activity mActivity;
    public IAuthorizationCompletionCallback mChallengeCallback;

    public NtlmChallengeHandler(Activity activity, IAuthorizationCompletionCallback iAuthorizationCompletionCallback) {
        this.mActivity = activity;
        this.mChallengeCallback = iAuthorizationCompletionCallback;
    }

    /* access modifiers changed from: private */
    public void cancelRequest() {
        Logger.info(TAG, "Sending intent to cancel authentication activity");
        this.mChallengeCallback.onChallengeResponseReceived(2001, new Intent());
    }

    private void showHttpAuthDialog(final NtlmChallenge ntlmChallenge) {
        View inflate = LayoutInflater.from(this.mActivity).inflate(this.mActivity.getResources().getLayout(R.layout.http_auth_dialog), (ViewGroup) null);
        final EditText editText = (EditText) inflate.findViewById(R.id.editUserName);
        final EditText editText2 = (EditText) inflate.findViewById(R.id.editPassword);
        new AlertDialog.Builder(this.mActivity).setTitle(this.mActivity.getText(R.string.http_auth_dialog_title).toString()).setView(inflate).setPositiveButton(R.string.http_auth_dialog_login, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i2) {
                Logger.info(NtlmChallengeHandler.TAG, "Proceeding with user supplied username and password.");
                ntlmChallenge.getHandler().proceed(editText.getText().toString(), editText2.getText().toString());
            }
        }).setNegativeButton(R.string.http_auth_dialog_cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i2) {
                ntlmChallenge.getHandler().cancel();
                NtlmChallengeHandler.this.cancelRequest();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() {
            public void onCancel(DialogInterface dialogInterface) {
                ntlmChallenge.getHandler().cancel();
                NtlmChallengeHandler.this.cancelRequest();
            }
        }).create().show();
    }

    public Void processChallenge(NtlmChallenge ntlmChallenge) {
        showHttpAuthDialog(ntlmChallenge);
        return null;
    }
}
