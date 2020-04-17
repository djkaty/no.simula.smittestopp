.class public Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration$SerializedNames;
    }
.end annotation


# instance fields
.field public mAcrValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "acr_values_supported"
    .end annotation
.end field

.field public mAuthorizationEndpoint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "authorization_endpoint"
    .end annotation
.end field

.field public mCheckSessionIFrame:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "check_session_iframe"
    .end annotation
.end field

.field public mClaimTypesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "claim_types_supported"
    .end annotation
.end field

.field public mClaimsLocalesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "claims_locales_supported"
    .end annotation
.end field

.field public mClaimsParameterSupported:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/c;
        value = "claims_parameter_supported"
    .end annotation
.end field

.field public mClaimsSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "claims_supported"
    .end annotation
.end field

.field public mCloudGraphHostName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "cloud_graph_host_name"
    .end annotation
.end field

.field public mCloudInstanceName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "cloud_instance_name"
    .end annotation
.end field

.field public mDisplayValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "display_values_supported"
    .end annotation
.end field

.field public mEndSessionEndpoint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "end_session_endpoint"
    .end annotation
.end field

.field public mFrontChannelLogoutSupported:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/c;
        value = "frontchannel_logout_supported"
    .end annotation
.end field

.field public mGrantTypesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "grant_types_supported"
    .end annotation
.end field

.field public mHttpLogoutSupported:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/c;
        value = "http_logout_supported"
    .end annotation
.end field

.field public mIdTokenEncryptionAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "id_token_encryption_alg_values_supported"
    .end annotation
.end field

.field public mIdTokenEncryptionEncValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "id_token_encryption_enc_values_supported"
    .end annotation
.end field

.field public mIdTokenSigningAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "id_token_signing_alg_values_supported"
    .end annotation
.end field

.field public mIssuer:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "issuer"
    .end annotation
.end field

.field public mJwksUri:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "jwks_uri"
    .end annotation
.end field

.field public mMsGraphHost:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "msgraph_host"
    .end annotation
.end field

.field public mOpPolicyUri:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "op_policy_uri"
    .end annotation
.end field

.field public mOpTosUri:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "op_tos_uri"
    .end annotation
.end field

.field public mRbacUrl:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "rbac_url"
    .end annotation
.end field

.field public mRegistrationEndpoint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "registration_endpoint"
    .end annotation
.end field

.field public mRequestObjectEncryptionAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "request_object_encryption_alg_values_supported"
    .end annotation
.end field

.field public mRequestObjectEncryptionEncValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "request_object_encryption_enc_values_supported"
    .end annotation
.end field

.field public mRequestObjectSigningAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "request_object_signing_alg_values_supported"
    .end annotation
.end field

.field public mRequestParameterSupported:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/c;
        value = "request_parameter_supported"
    .end annotation
.end field

.field public mRequestUriParameterSupported:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/c;
        value = "request_uri_parameter_supported"
    .end annotation
.end field

.field public mRequireRequestUriRegistration:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/c;
        value = "require_request_uri_registration"
    .end annotation
.end field

.field public mResponseModesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "response_modes_supported"
    .end annotation
.end field

.field public mResponseTypesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "response_types_supported"
    .end annotation
.end field

.field public mScopesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "scopes_supported"
    .end annotation
.end field

.field public mServiceDocumentation:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "service_documentation"
    .end annotation
.end field

.field public mSubjectTypesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "subject_types_supported"
    .end annotation
.end field

.field public mTenantRegionScope:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "tenant_region_scope"
    .end annotation
.end field

.field public mTokenEndpoint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "token_endpoint"
    .end annotation
.end field

.field public mTokenEndpointAuthMethodsSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "token_endpoint_auth_methods_supported"
    .end annotation
.end field

.field public mTokenEndpointAuthSigningAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "token_endpoint_auth_signing_alg_values_supported"
    .end annotation
.end field

.field public mUiLocalesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "ui_locales_supported"
    .end annotation
.end field

.field public mUserInfoEncryptionAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "userinfo_encryption_alg_values_supported"
    .end annotation
.end field

.field public mUserInfoEncryptionEncValueSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "userinfo_encryption_enc_values_supported"
    .end annotation
.end field

.field public mUserInfoEndpoint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "userinfo_endpoint"
    .end annotation
.end field

.field public mUserInfoSigningAlgValuesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "userinfo_signing_alg_values_supported"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcrValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mAcrValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getAuthorizationEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mAuthorizationEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSessionIFrame()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mCheckSessionIFrame:Ljava/lang/String;

    return-object v0
.end method

.method public getClaimTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mClaimTypesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getClaimsLocalesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mClaimsLocalesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getClaimsParameterSupported()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mClaimsParameterSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getClaimsSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mClaimsSupported:Ljava/util/List;

    return-object v0
.end method

.method public getCloudGraphHostName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mCloudGraphHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudInstanceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mCloudInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mDisplayValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getEndSessionEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mEndSessionEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontChannelLogoutSupported()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mFrontChannelLogoutSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGrantTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mGrantTypesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getHttpLogoutSupported()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mHttpLogoutSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIdTokenEncryptionAlgValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mIdTokenEncryptionAlgValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getIdTokenEncryptionEncValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mIdTokenEncryptionEncValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getIdTokenSigningAlgValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mIdTokenSigningAlgValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mIssuer:Ljava/lang/String;

    return-object v0
.end method

.method public getJwksUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mJwksUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMsGraphHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mMsGraphHost:Ljava/lang/String;

    return-object v0
.end method

.method public getOpPolicyUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mOpPolicyUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOpTosUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mOpTosUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRbacUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRbacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRegistrationEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestObjectEncryptionAlgValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestObjectEncryptionAlgValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getRequestObjectEncryptionEncValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestObjectEncryptionEncValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getRequestObjectSigningAlgValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestObjectSigningAlgValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getRequestParameterSupported()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestParameterSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequestUriParameterSupported()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestUriParameterSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequireRequestUriRegistration()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequireRequestUriRegistration:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getResponseModesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mResponseModesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getResponseTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mResponseTypesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getScopesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mScopesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getServiceDocumentation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mServiceDocumentation:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mSubjectTypesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getTenantRegionScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mTenantRegionScope:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mTokenEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenEndpointAuthMethodsSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mTokenEndpointAuthMethodsSupported:Ljava/util/List;

    return-object v0
.end method

.method public getTokenEndpointAuthSigningAlgValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mTokenEndpointAuthSigningAlgValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getUiLocalesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUiLocalesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfoEncryptionAlgValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUserInfoEncryptionAlgValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfoEncryptionEncValueSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUserInfoEncryptionEncValueSupported:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfoEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUserInfoEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfoSigningAlgValuesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUserInfoSigningAlgValuesSupported:Ljava/util/List;

    return-object v0
.end method

.method public setAcrValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mAcrValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setAuthorizationEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mAuthorizationEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setCheckSessionIFrame(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mCheckSessionIFrame:Ljava/lang/String;

    return-void
.end method

.method public setClaimTypesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mClaimTypesSupported:Ljava/util/List;

    return-void
.end method

.method public setClaimsLocalesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mClaimsLocalesSupported:Ljava/util/List;

    return-void
.end method

.method public setClaimsParameterSupported(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mClaimsParameterSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public setClaimsSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mClaimsSupported:Ljava/util/List;

    return-void
.end method

.method public setCloudGraphHostName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mCloudGraphHostName:Ljava/lang/String;

    return-void
.end method

.method public setCloudInstanceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mCloudInstanceName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mDisplayValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setEndSessionEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mEndSessionEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setFrontChannelLogoutSupported(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mFrontChannelLogoutSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public setGrantTypesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mGrantTypesSupported:Ljava/util/List;

    return-void
.end method

.method public setHttpLogoutSupported(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mHttpLogoutSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public setIdTokenEncryptionAlgValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mIdTokenEncryptionAlgValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setIdTokenEncryptionEncValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mIdTokenEncryptionEncValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setIdTokenSigningAlgValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mIdTokenSigningAlgValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mIssuer:Ljava/lang/String;

    return-void
.end method

.method public setJwksUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mJwksUri:Ljava/lang/String;

    return-void
.end method

.method public setMsGraphHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mMsGraphHost:Ljava/lang/String;

    return-void
.end method

.method public setOpPolicyUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mOpPolicyUri:Ljava/lang/String;

    return-void
.end method

.method public setOpTosUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mOpTosUri:Ljava/lang/String;

    return-void
.end method

.method public setRbacUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRbacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRegistrationEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setRequestObjectEncryptionAlgValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestObjectEncryptionAlgValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setRequestObjectEncryptionEncValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestObjectEncryptionEncValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setRequestObjectSigningAlgValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestObjectSigningAlgValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setRequestParameterSupported(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestParameterSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public setRequestUriParameterSupported(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequestUriParameterSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public setRequireRequestUriRegistration(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mRequireRequestUriRegistration:Ljava/lang/Boolean;

    return-void
.end method

.method public setResponseModesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mResponseModesSupported:Ljava/util/List;

    return-void
.end method

.method public setResponseTypesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mResponseTypesSupported:Ljava/util/List;

    return-void
.end method

.method public setScopesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mScopesSupported:Ljava/util/List;

    return-void
.end method

.method public setServiceDocumentation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mServiceDocumentation:Ljava/lang/String;

    return-void
.end method

.method public setSubjectTypesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mSubjectTypesSupported:Ljava/util/List;

    return-void
.end method

.method public setTenantRegionScope(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mTenantRegionScope:Ljava/lang/String;

    return-void
.end method

.method public setTokenEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mTokenEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setTokenEndpointAuthMethodsSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mTokenEndpointAuthMethodsSupported:Ljava/util/List;

    return-void
.end method

.method public setTokenEndpointAuthSigningAlgValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mTokenEndpointAuthSigningAlgValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setUiLocalesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUiLocalesSupported:Ljava/util/List;

    return-void
.end method

.method public setUserInfoEncryptionAlgValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUserInfoEncryptionAlgValuesSupported:Ljava/util/List;

    return-void
.end method

.method public setUserInfoEncryptionEncValueSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUserInfoEncryptionEncValueSupported:Ljava/util/List;

    return-void
.end method

.method public setUserInfoEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUserInfoEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setUserInfoSigningAlgValuesSupported(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->mUserInfoSigningAlgValuesSupported:Ljava/util/List;

    return-void
.end method
