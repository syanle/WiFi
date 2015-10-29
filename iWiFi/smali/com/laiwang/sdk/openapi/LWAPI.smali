.class public Lcom/laiwang/sdk/openapi/LWAPI;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Lcom/laiwang/sdk/openapi/ILWAPI;


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "LWAPI"

.field private static sApp:Landroid/app/Application;

.field private static sLWAPI:Lcom/laiwang/sdk/openapi/LWAPI;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVersion:I

.field private mIILWAPICallbackImpl:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

.field private mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

.field private mIsLaiwangInited:Z

.field private mIsLaiwangServiceBinding:Z

.field private mIsLaiwangSupport:Z

.field private mIsLossVersion:Z

.field private mIsNewsVersion:Z

.field private mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

.field private mLWVersion:I

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/sdk/openapi/LWAPI;->DEBUG:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "secretID"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-direct {v0}, Lcom/laiwang/sdk/openapi/LWAPIAccount;-><init>()V

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 48
    iput-boolean v1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangSupport:Z

    .line 50
    iput-boolean v1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangInited:Z

    .line 51
    iput-boolean v1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLossVersion:Z

    .line 52
    iput-boolean v1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsNewsVersion:Z

    .line 77
    new-instance v0, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    invoke-direct {v0}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;-><init>()V

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    .line 78
    new-instance v0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    invoke-direct {v0}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;-><init>()V

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mMainHandler:Landroid/os/Handler;

    .line 83
    invoke-direct/range {p0 .. p6}, Lcom/laiwang/sdk/openapi/LWAPI;->initLWAPI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    return-object v0
.end method

.method static synthetic access$1(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    return-object v0
.end method

.method static synthetic access$10(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V
    .locals 0

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/laiwang/sdk/openapi/LWAPI;->intentLaiwang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/laiwang/sdk/openapi/LWAPI;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppVersion:I

    return v0
.end method

.method static synthetic access$2(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    return-object v0
.end method

.method static synthetic access$3(Lcom/laiwang/sdk/openapi/LWAPI;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWVersion:I

    return-void
.end method

.method static synthetic access$4(Lcom/laiwang/sdk/openapi/LWAPI;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWVersion:I

    return v0
.end method

.method static synthetic access$5(Lcom/laiwang/sdk/openapi/LWAPI;Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLossVersion:Z

    return-void
.end method

.method static synthetic access$6(Lcom/laiwang/sdk/openapi/LWAPI;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsNewsVersion:Z

    return-void
.end method

.method static synthetic access$7(Lcom/laiwang/sdk/openapi/LWAPI;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangSupport:Z

    return-void
.end method

.method static synthetic access$8(Lcom/laiwang/sdk/openapi/LWAPI;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangSupport:Z

    return v0
.end method

.method static synthetic access$9(Lcom/laiwang/sdk/openapi/LWAPI;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLossVersion:Z

    return v0
.end method

.method private canTransact(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    .line 454
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiSecret()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppVersion:I

    iget-object v5, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/laiwang/sdk/openapi/LWAPI;->initLWAPI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 456
    move-object v7, p1

    .line 458
    .local v7, "apiContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/laiwang/sdk/openapi/LWAPI;->isLWAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppVersion:I

    invoke-static {p1, v0}, Lcom/laiwang/sdk/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V

    move v8, v9

    .line 476
    :cond_0
    :goto_0
    return v8

    .line 463
    :cond_1
    const/4 v8, 0x0

    .line 465
    .local v8, "nRequestDelay":I
    iget-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    invoke-virtual {v0}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 467
    :cond_2
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppVersion:I

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/laiwang/sdk/openapi/LWAPI;->connectLaiwangService(ILjava/lang/String;)Z

    .line 468
    const/16 v8, 0x7d0

    .line 471
    :cond_3
    iget-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    if-nez v0, :cond_0

    .line 472
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppVersion:I

    invoke-static {p1, v0}, Lcom/laiwang/sdk/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V

    move v8, v9

    .line 473
    goto :goto_0
.end method

.method public static downloadLaiwangAPK(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # I

    .prologue
    .line 195
    const v1, 0x20131120

    if-ne p1, v1, :cond_0

    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u4eb2,\u4f60\u8fd8\u6ca1\u5b89\u88c5\u6765\u5f80\u5ba2\u6237\u7aef\u54e6"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 198
    const-string v1, "\u901f\u901f\u4e0b\u8f7d\u5373\u90012\u5143,\u53c2\u52a0\u5206\u4eab\u8fd8\u53ef\u8d62\u514d\u5355!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 199
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/laiwang/sdk/openapi/LWAPI$2;

    invoke-direct {v2}, Lcom/laiwang/sdk/openapi/LWAPI$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    const-string v1, "\u4e0b\u8f7d"

    new-instance v2, Lcom/laiwang/sdk/openapi/LWAPI$3;

    invoke-direct {v2}, Lcom/laiwang/sdk/openapi/LWAPI$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 219
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v1, "\u8bf7\u4e0b\u8f7d\u6700\u65b0\u7248\u672c\u7684\u6765\u5f80"

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 217
    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "http://m.laiwang.com"

    invoke-static {v1, v2}, Lcom/laiwang/sdk/utils/LWAPIUtils;->invokeBrowser(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/laiwang/sdk/openapi/LWAPI;->sApp:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/openapi/LWAPI;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appToken"    # Ljava/lang/String;
    .param p2, "secretID"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/laiwang/sdk/openapi/LWAPI;->sLWAPI:Lcom/laiwang/sdk/openapi/LWAPI;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/laiwang/sdk/openapi/LWAPI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/laiwang/sdk/openapi/LWAPI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/laiwang/sdk/openapi/LWAPI;->sLWAPI:Lcom/laiwang/sdk/openapi/LWAPI;

    .line 74
    :cond_0
    sget-object v0, Lcom/laiwang/sdk/openapi/LWAPI;->sLWAPI:Lcom/laiwang/sdk/openapi/LWAPI;

    return-object v0
.end method

.method private initLWAPI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "secretID"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 483
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0, p2}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->setLwapiToken(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0, p3}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->setLwapiSecret(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->setLWAPIAccount(Lcom/laiwang/sdk/openapi/LWAPIAccount;)V

    .line 486
    iput-object p6, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppName:Ljava/lang/String;

    .line 487
    iput p4, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppVersion:I

    .line 488
    iput-object p5, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mPackageName:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/laiwang/sdk/openapi/LWAPI;->prepare(Landroid/app/Application;)Z

    .line 492
    iget-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangInited:Z

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return v2

    .line 496
    :cond_0
    iget-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    invoke-virtual {v0}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, p4, v0}, Lcom/laiwang/sdk/openapi/LWAPI;->connectLaiwangService(ILjava/lang/String;)Z

    .line 499
    :cond_2
    iput-boolean v2, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangInited:Z

    goto :goto_0
.end method

.method private intentLaiwang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shareType"    # Ljava/lang/String;
    .param p4, "iLWMessage"    # Lcom/laiwang/sdk/message/IILWMessage;
    .param p5, "isDirectIntent"    # Z

    .prologue
    .line 97
    const-string v0, "DYNAMIC2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v2, "com.alibaba.android.babylon"

    const-string v3, "com.alibaba.android.babylon.biz.im.activity.LaiwangShareActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/laiwang/sdk/openapi/LWAPI;->intentApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v2, "com.alibaba.android.babylon"

    const-string v3, "com.alibaba.android.babylon.biz.im.activity.RecentIMListActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/laiwang/sdk/openapi/LWAPI;->intentApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)Z

    goto :goto_0
.end method

.method public static prepare(Landroid/app/Application;)Z
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 61
    sput-object p0, Lcom/laiwang/sdk/openapi/LWAPI;->sApp:Landroid/app/Application;

    .line 63
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public answerLWResponced(Landroid/content/Context;Ljava/lang/String;Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestURI"    # Ljava/lang/String;
    .param p3, "iLaiwangApiCallback"    # Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    .prologue
    const/4 v5, 0x0

    .line 395
    const-string v4, "com.alibaba.android.babylon"

    invoke-static {p1, v4}, Lcom/laiwang/sdk/openapi/LwSecurity;->isLWAPPImpl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 448
    :goto_0
    return v4

    .line 399
    :cond_0
    if-nez p1, :cond_1

    move v4, v5

    .line 400
    goto :goto_0

    .line 403
    :cond_1
    invoke-direct {p0, p1}, Lcom/laiwang/sdk/openapi/LWAPI;->canTransact(Landroid/content/Context;)I

    move-result v3

    .line 405
    .local v3, "nRequestDelay":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v4, v5

    .line 406
    goto :goto_0

    .line 409
    :cond_2
    move-object v0, p1

    .local v0, "apiContext":Landroid/content/Context;
    move-object v4, v0

    .line 410
    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 412
    .local v1, "fromIntent":Landroid/content/Intent;
    const-string v4, "link"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "fromLink":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 415
    goto :goto_0

    .line 418
    :cond_3
    iget-object v4, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mMainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/laiwang/sdk/openapi/LWAPI$8;

    invoke-direct {v5, p0, v0, v2, p3}, Lcom/laiwang/sdk/openapi/LWAPI$8;-><init>(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;Ljava/lang/String;Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)V

    .line 446
    int-to-long v6, v3

    .line 418
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public connectLaiwangService(ILjava/lang/String;)Z
    .locals 2
    .param p1, "version"    # I
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    new-instance v1, Lcom/laiwang/sdk/openapi/LWAPI$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/laiwang/sdk/openapi/LWAPI$1;-><init>(Lcom/laiwang/sdk/openapi/LWAPI;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->bindLaiwangService(Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    .line 136
    iget-boolean v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangServiceBinding:Z

    return v0
.end method

.method public deleteCallback()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->setIIApiCallback(Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)V

    .line 514
    return-void
.end method

.method protected dialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 310
    const-string v1, "\u786e\u8ba4\u9000\u51fa\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 311
    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/laiwang/sdk/openapi/LWAPI$5;

    invoke-direct {v2, p0}, Lcom/laiwang/sdk/openapi/LWAPI$5;-><init>(Lcom/laiwang/sdk/openapi/LWAPI;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/laiwang/sdk/openapi/LWAPI$6;

    invoke-direct {v2, p0}, Lcom/laiwang/sdk/openapi/LWAPI$6;-><init>(Lcom/laiwang/sdk/openapi/LWAPI;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 326
    return-void
.end method

.method public getApp()Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/laiwang/sdk/openapi/LWAPI;->sApp:Landroid/app/Application;

    return-object v0
.end method

.method public intentApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "iLWMessage"    # Lcom/laiwang/sdk/message/IILWMessage;
    .param p5, "isDirectIntent"    # Z

    .prologue
    .line 148
    invoke-static {p1, p2}, Lcom/laiwang/sdk/utils/LWAPIUtils;->getAppPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 149
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_0

    .line 150
    const/4 v9, 0x0

    .line 185
    :goto_0
    return v9

    .line 153
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    .local v6, "resolveIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 158
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 160
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_1

    .line 161
    const/4 v9, 0x0

    goto :goto_0

    .line 164
    :cond_1
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 165
    .local v8, "tempPackageName":Ljava/lang/String;
    move-object v1, p3

    .line 166
    .local v1, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "com.laiwang.recent.im.share.sdk"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz p5, :cond_2

    .line 173
    iget-object v9, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v9}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p4, v9}, Lcom/laiwang/sdk/message/IILWMessage;->setAppkey(Ljava/lang/String;)V

    .line 174
    iget-object v9, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v9}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiSecret()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p4, v9}, Lcom/laiwang/sdk/message/IILWMessage;->setSecret(Ljava/lang/String;)V

    .line 176
    invoke-interface {p4}, Lcom/laiwang/sdk/message/IILWMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 182
    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    const/4 v9, 0x1

    goto :goto_0

    .line 178
    :cond_2
    const-string v9, "appToken"

    iget-object v10, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v10}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v9, "randomKey"

    iget-object v10, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    invoke-virtual {v10}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->getLwapiRandomKey()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public isLWAppInstalled()Z
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "com.alibaba.android.babylon"

    invoke-static {v1, v2}, Lcom/laiwang/sdk/utils/LWAPIUtils;->getAppPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 90
    .local v0, "isLWAppInstalled":Z
    :goto_0
    sget-boolean v1, Lcom/laiwang/sdk/openapi/LwSecurity;->sIsSecuritySahreSDK:Z

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Lcom/laiwang/sdk/openapi/LwSecurity;->getInstance()Lcom/laiwang/sdk/openapi/LwSecurity;

    move-result-object v1

    const-string v2, "com.alibaba.android.babylon"

    invoke-virtual {v1, v2}, Lcom/laiwang/sdk/openapi/LwSecurity;->checkCertificate(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 93
    :cond_0
    return v0

    .line 89
    .end local v0    # "isLWAppInstalled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLWSupported(I)Z
    .locals 2
    .param p1, "nType"    # I

    .prologue
    .line 518
    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 520
    :cond_0
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mLWVersion:I

    const v1, 0x20140101

    if-ge v0, v1, :cond_1

    .line 521
    const/4 v0, 0x0

    .line 524
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public openLWAPP()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/laiwang/sdk/openapi/LWAPI;->isLWAppInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    :goto_0
    return v1

    .line 334
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/laiwang/sdk/openapi/LWAPI;->getApp()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/laiwang/sdk/openapi/LWAPI;->getApp()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.alibaba.android.babylon"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    const/4 v1, 0x1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "localException":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public registCallback(Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)V
    .locals 1
    .param p1, "iApiCallback"    # Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    invoke-virtual {v0, p1}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->setIIApiCallback(Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)V

    .line 507
    return-void
.end method

.method public requestData(Landroid/content/Context;Lcom/laiwang/sdk/message/IILWMessage;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/laiwang/sdk/message/IILWMessage;
    .param p3, "version"    # I

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    sget-object p1, Lcom/laiwang/sdk/openapi/LWAPI;->sApp:Landroid/app/Application;

    .line 348
    :cond_0
    invoke-direct {p0, p1}, Lcom/laiwang/sdk/openapi/LWAPI;->canTransact(Landroid/content/Context;)I

    move-result v1

    .line 350
    .local v1, "nRequestDelay":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 351
    const/4 v2, 0x0

    .line 389
    :goto_0
    return v2

    .line 354
    :cond_1
    move-object v0, p1

    .line 356
    .local v0, "apiContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/laiwang/sdk/openapi/LWAPI$7;

    invoke-direct {v3, p0, v0, p3, p2}, Lcom/laiwang/sdk/openapi/LWAPI$7;-><init>(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;ILcom/laiwang/sdk/message/IILWMessage;)V

    .line 387
    int-to-long v4, v1

    .line 356
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public transactData(Landroid/content/Context;Lcom/laiwang/sdk/message/IILWMessage;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/laiwang/sdk/message/IILWMessage;
    .param p3, "version"    # I

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    sget-object p1, Lcom/laiwang/sdk/openapi/LWAPI;->sApp:Landroid/app/Application;

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/laiwang/sdk/openapi/LWAPI;->canTransact(Landroid/content/Context;)I

    move-result v1

    .line 230
    .local v1, "nRequestDelay":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 231
    const/4 v2, 0x0

    .line 304
    :goto_0
    return v2

    .line 234
    :cond_1
    move-object v0, p1

    .line 264
    .local v0, "apiContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/laiwang/sdk/openapi/LWAPI$4;

    invoke-direct {v3, p0, v0, p3, p2}, Lcom/laiwang/sdk/openapi/LWAPI$4;-><init>(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;ILcom/laiwang/sdk/message/IILWMessage;)V

    .line 302
    int-to-long v4, v1

    .line 264
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    const/4 v2, 0x1

    goto :goto_0
.end method
