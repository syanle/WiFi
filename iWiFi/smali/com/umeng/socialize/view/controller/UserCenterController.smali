.class public Lcom/umeng/socialize/view/controller/UserCenterController;
.super Ljava/lang/Object;
.source "UserCenterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;,
        Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;,
        Lcom/umeng/socialize/view/controller/UserCenterController$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/umeng/socialize/controller/UMSocialService;

.field private e:Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/umeng/socialize/bean/SnsAccount;

.field private h:Lcom/umeng/socialize/view/controller/UserCenterController$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/umeng/socialize/view/controller/UserCenterController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/controller/UserCenterController;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->c:Landroid/content/Context;

    .line 100
    sget-object v0, Lcom/umeng/socialize/view/controller/UserCenterController$a;->b:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->h:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    .line 101
    new-instance v0, Lcom/umeng/socialize/view/controller/e;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/controller/e;-><init>(Lcom/umeng/socialize/view/controller/UserCenterController;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->e:Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;

    .line 111
    sget-object v0, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-static {p2, v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->d:Lcom/umeng/socialize/controller/UMSocialService;

    .line 112
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->d:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/sso/SinaSsoHandler;

    invoke-direct {v1}, Lcom/umeng/socialize/sso/SinaSsoHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V

    .line 113
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->d:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    new-instance v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->d:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/socialize/common/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->b:Ljava/util/List;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/controller/UserCenterController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->f:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/SocializeUser;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 338
    iget-object v0, p1, Lcom/umeng/socialize/bean/SocializeUser;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    return-void

    .line 338
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsAccount;

    .line 339
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getPlatform()Ljava/lang/String;

    move-result-object v3

    .line 340
    if-eqz v3, :cond_0

    .line 341
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 342
    iget-object v5, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 343
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 344
    iget-object v5, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 345
    iput-object v0, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mAccount:Lcom/umeng/socialize/bean/SnsAccount;

    .line 346
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getUsid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mUsid:Ljava/lang/String;

    .line 347
    iget-object v5, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mUsid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 348
    iput-boolean v7, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    .line 351
    :cond_3
    :try_start_0
    iget-object v5, p1, Lcom/umeng/socialize/bean/SocializeUser;->mDefaultPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/bean/SnsAccount;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->g:Lcom/umeng/socialize/bean/SnsAccount;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/bean/SocializeUser;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/bean/SocializeUser;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/controller/UserCenterController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/controller/UserCenterController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->b:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V
    .locals 4

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->d:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->c:Landroid/content/Context;

    .line 193
    iget-object v2, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 194
    new-instance v3, Lcom/umeng/socialize/view/controller/g;

    invoke-direct {v3, p0, p2, p1}, Lcom/umeng/socialize/view/controller/g;-><init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 192
    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->deleteOauth(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/umeng/socialize/view/controller/f;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/view/controller/f;-><init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    .line 188
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->d:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v2, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->c:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/umeng/socialize/controller/UMSocialService;->getUserInfo(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;)V

    .line 189
    return-void
.end method

.method public a(Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->f:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/umeng/socialize/view/controller/UserCenterController;->a:Ljava/lang/String;

    const-string v1, "this OBListener has register.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->h:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    if-eq v0, p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->h:Lcom/umeng/socialize/view/controller/UserCenterController$a;

    .line 133
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->e:Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;->a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/umeng/socialize/bean/SnsAccount;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->g:Lcom/umeng/socialize/bean/SnsAccount;

    return-object v0
.end method

.method public declared-synchronized b(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V
    .locals 4

    .prologue
    .line 219
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 220
    :try_start_0
    invoke-interface {p2}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->d:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->c:Landroid/content/Context;

    .line 223
    iget-object v2, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 224
    new-instance v3, Lcom/umeng/socialize/view/controller/h;

    invoke-direct {v3, p0, p2, p1}, Lcom/umeng/socialize/view/controller/h;-><init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 222
    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V
    .locals 3

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    invoke-interface {p1}, Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;->a()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->d:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->c:Landroid/content/Context;

    new-instance v2, Lcom/umeng/socialize/view/controller/k;

    invoke-direct {v2, p0, p1}, Lcom/umeng/socialize/view/controller/k;-><init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    .line 334
    return-void
.end method

.method public b(Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->f:Ljava/util/List;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/UserCenterController;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Lcom/umeng/socialize/view/controller/i;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/view/controller/i;-><init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;Lcom/umeng/socialize/bean/SnsPlatform;)V

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    .line 308
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v0, Lcom/umeng/socialize/view/controller/j;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/view/controller/j;-><init>(Lcom/umeng/socialize/view/controller/UserCenterController;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;Lcom/umeng/socialize/bean/SnsPlatform;)V

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->b(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    goto :goto_0
.end method
