package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

public interface IChallengeHandler<GenericChallenge, GenericResponse> {
    GenericResponse processChallenge(GenericChallenge genericchallenge);
}
