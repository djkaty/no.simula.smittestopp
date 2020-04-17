package com.microsoft.azure.proton.transport.proxy.impl;

import com.microsoft.azure.proton.transport.proxy.ProxyChallengeProcessor;
import e.d.a.a.a.a.a.a;
import java.net.PasswordAuthentication;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicInteger;
import k.f.b;
import k.f.c;

public class DigestProxyChallengeProcessorImpl implements ProxyChallengeProcessor {
    public static final String DEFAULT_ALGORITHM = "MD5";
    public static final char[] HEX_CODE = "0123456789ABCDEF".toCharArray();
    public static final String PROXY_AUTH_DIGEST = "Proxy-Authenticate: Digest";
    public final String challenge;
    public final Map<String, String> headers;
    public final String host;
    public final b logger = c.a((Class<?>) DigestProxyChallengeProcessorImpl.class);
    public final AtomicInteger nonceCounter = new AtomicInteger(0);
    public final ProxyAuthenticator proxyAuthenticator;

    public DigestProxyChallengeProcessorImpl(String str, String str2, ProxyAuthenticator proxyAuthenticator2) {
        Objects.requireNonNull(proxyAuthenticator2);
        this.host = str;
        this.challenge = str2;
        this.headers = new HashMap();
        this.proxyAuthenticator = proxyAuthenticator2;
    }

    private void computeDigestAuthHeader(Map<String, String> map, String str, PasswordAuthentication passwordAuthentication) {
        String str2;
        Map<String, String> map2 = map;
        if (this.logger.a()) {
            this.logger.c("Computing password authentication...");
        }
        if (ProxyAuthenticator.isPasswordAuthenticationHasValues(passwordAuthentication)) {
            String userName = passwordAuthentication.getUserName();
            String str3 = new String(passwordAuthentication.getPassword());
            try {
                String str4 = map2.get("nonce");
                String str5 = map2.get("realm");
                String str6 = map2.get("qop");
                MessageDigest instance = MessageDigest.getInstance(DEFAULT_ALGORITHM);
                SecureRandom secureRandom = new SecureRandom();
                String printHexBinary = printHexBinary(instance.digest(String.format("%s:%s:%s", new Object[]{userName, str5, str3}).getBytes(StandardCharsets.UTF_8)));
                String printHexBinary2 = printHexBinary(instance.digest(String.format("%s:%s", new Object[]{Constants.CONNECT, str}).getBytes(StandardCharsets.UTF_8)));
                byte[] bArr = new byte[16];
                secureRandom.nextBytes(bArr);
                String printHexBinary3 = printHexBinary(bArr);
                if (StringUtils.isNullOrEmpty(str6)) {
                    str2 = String.format("Digest username=\"%s\",realm=\"%s\",nonce=\"%s\",uri=\"%s\",cnonce=\"%s\",response=\"%s\"", new Object[]{userName, str5, str4, str, printHexBinary3, printHexBinary(instance.digest(String.format("%s:%s:%s", new Object[]{printHexBinary, str4, printHexBinary2}).getBytes(StandardCharsets.UTF_8)))});
                } else {
                    int incrementAndGet = this.nonceCounter.incrementAndGet();
                    str2 = String.format("Digest username=\"%s\",realm=\"%s\",nonce=\"%s\",uri=\"%s\",cnonce=\"%s\",nc=%08X,response=\"%s\",qop=\"%s\"", new Object[]{userName, str5, str4, str, printHexBinary3, Integer.valueOf(incrementAndGet), printHexBinary(instance.digest(String.format("%s:%s:%08X:%s:%s:%s", new Object[]{printHexBinary, str4, Integer.valueOf(incrementAndGet), printHexBinary3, str6, printHexBinary2}).getBytes(StandardCharsets.UTF_8))), str6});
                }
                this.headers.put(Constants.PROXY_AUTHORIZATION, str2);
                if (this.logger.a()) {
                    this.logger.a("Adding authorization header. {} '{}'", Constants.PROXY_AUTHORIZATION, str2);
                }
            } catch (NoSuchAlgorithmException e2) {
                if (this.logger.f()) {
                    this.logger.e("Error encountered when computing header.", (Throwable) e2);
                }
                throw new RuntimeException(e2);
            }
        } else if (this.logger.f()) {
            this.logger.a("Password authentication does not have values. Not computing authorization header.");
        }
    }

    private void getChallengeQuestionHeaders(String str, Map<String, String> map) {
        String[] split = str.substring(26).split(",");
        if (this.logger.a()) {
            this.logger.c("Fetching challenge questions.");
        }
        for (String str2 : split) {
            if (str2.contains("=")) {
                map.put(str2.substring(0, str2.indexOf("=")).trim(), str2.substring(str2.indexOf("=") + 1).replaceAll("\"", "").trim());
            }
        }
        if (this.logger.a()) {
            this.logger.c("Challenge questions are: ");
            map.forEach(new a(this));
        }
    }

    public static String printHexBinary(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(HEX_CODE[(b >> 4) & 15]);
            sb.append(HEX_CODE[b & 15]);
        }
        return sb.toString().toLowerCase(Locale.ROOT);
    }

    public /* synthetic */ void a(String str, String str2) {
        this.logger.a("{}: {}", str, str2);
    }

    public /* synthetic */ void b(String str, String str2) {
        this.logger.a("{}: {}", str, str2);
    }

    public Map<String, String> getHeader() {
        Scanner scanner = new Scanner(this.challenge);
        HashMap hashMap = new HashMap();
        if (this.logger.a()) {
            this.logger.c("Fetching header from:");
        }
        while (true) {
            if (!scanner.hasNextLine()) {
                break;
            }
            String nextLine = scanner.nextLine();
            if (this.logger.a()) {
                this.logger.c(nextLine);
            }
            if (nextLine.contains(PROXY_AUTH_DIGEST)) {
                getChallengeQuestionHeaders(nextLine, hashMap);
                String str = this.host;
                computeDigestAuthHeader(hashMap, str, this.proxyAuthenticator.getPasswordAuthentication(Constants.DIGEST_LOWERCASE, str));
                this.logger.c("Finished getting auth header.");
                break;
            }
        }
        if (this.logger.a()) {
            this.logger.c("Headers added are:");
            this.headers.forEach(new e.d.a.a.a.a.a.b(this));
        }
        return this.headers;
    }
}
