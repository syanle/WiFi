.class public Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
.super Ljava/lang/Object;
.source "DoAuthenticationLogoffOperation.java"


# static fields
.field private static final MSG_AUTHENTICATION_FAIL:I = 0x1

.field private static final MSG_AUTHENTICATION_SUCCESS:I = 0x0

.field private static final MSG_LOGOFF_FAIL:I = 0x3

.field private static final MSG_LOGOFF_SUCCESS:I = 0x2


# instance fields
.field private authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

.field private mCallback:Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;

.field private mContext:Landroid/content/Context;

.field mhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mCallback"    # Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    .line 55
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;

    invoke-direct {v0, p0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;-><init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)V

    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mCallback:Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;

    .line 39
    sget-boolean v0, Lcom/iwifi/sdk/tools/HttpConf;->b_iWiFiSDK_ThirdPartyJar:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-static {v1, v1, v1}, Lcom/iwifi/sdk/tools/Logger;->setLogStatus(ZII)V

    .line 43
    :cond_0
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    invoke-direct {v0}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;-><init>()V

    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mCallback:Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    return-object v0
.end method


# virtual methods
.method public Authen_Set3rdPortalUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "custom_url"    # Ljava/lang/String;

    .prologue
    .line 52
    sput-object p1, Lcom/iwifi/sdk/tools/HttpConf;->iWiFi_3RD_AUTHEN_SUCC_PORTAL_URL:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public Global_AuthenticationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "appversion"    # Ljava/lang/String;
    .param p3, "app_id"    # Ljava/lang/String;
    .param p4, "appkey"    # Ljava/lang/String;
    .param p5, "secret"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;-><init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->start()V

    .line 332
    return-void
.end method

.method public Global_LogoffUrlRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "phonenum"    # Ljava/lang/String;
    .param p2, "appAuth_type"    # Ljava/lang/String;
    .param p3, "logoffUrl"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "thirdToken"    # Ljava/lang/String;
    .param p6, "ac_name"    # Ljava/lang/String;
    .param p7, "platform_code"    # Ljava/lang/String;
    .param p8, "portalUrl"    # Ljava/lang/String;
    .param p9, "appkey"    # Ljava/lang/String;
    .param p10, "secret"    # Ljava/lang/String;

    .prologue
    .line 349
    if-nez p2, :cond_0

    .line 494
    :goto_0
    return-void

    .line 352
    :cond_0
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p3

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;-><init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->start()V

    goto :goto_0
.end method
