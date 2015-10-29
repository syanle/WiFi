.class public Lcom/umeng/socialize/view/controller/c;
.super Ljava/lang/Object;
.source "UMPlatformSelectService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/umeng/socialize/controller/UMSocialService;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/umeng/socialize/view/controller/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/controller/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    .line 38
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/controller/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/socialize/common/SocializeUtils;->readSIMCard(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    return v0

    .line 137
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v3, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->shareSms(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v0, v1

    .line 142
    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 143
    :catch_1
    move-exception v1

    .line 144
    sget-object v2, Lcom/umeng/socialize/view/controller/c;->a:Ljava/lang/String;

    const-string v3, "check sim error....."

    invoke-static {v2, v3, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
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
    .line 66
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    .line 81
    iget-object v2, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    const/16 v4, 0xe

    invoke-virtual {v1, v3, v2, v4}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 84
    invoke-static {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 85
    instance-of v3, p1, Lcom/umeng/socialize/bean/CustomPlatform;

    if-eqz v3, :cond_3

    .line 86
    check-cast p1, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 87
    sget-object v2, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v2}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->contains(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I

    move-result v2

    if-lez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v2}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->closeToast()V

    .line 91
    :cond_0
    iget-object v2, p1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.umeng.socialize.sms"

    iget-object v3, p1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/umeng/socialize/view/controller/c;->e()Z

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v2, p1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.umeng.socialize.mail"

    iget-object v3, p1, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v2, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->shareEmail(Landroid/content/Context;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p1, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;->onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 101
    :cond_3
    new-instance v1, Lcom/umeng/socialize/view/controller/d;

    invoke-direct {v1, p0, p2}, Lcom/umeng/socialize/view/controller/d;-><init>(Lcom/umeng/socialize/view/controller/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;)V

    .line 119
    if-eqz v2, :cond_4

    .line 120
    iget-object v3, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v4, p0, Lcom/umeng/socialize/view/controller/c;->c:Landroid/content/Context;

    invoke-interface {v3, v4, v2, v1}, Lcom/umeng/socialize/controller/UMSocialService;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 123
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/umeng/socialize/view/controller/c;->a()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 152
    instance-of v0, v0, Lcom/umeng/socialize/bean/CustomPlatform;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/umeng/socialize/view/controller/c;->a()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 162
    instance-of v0, v0, Lcom/umeng/socialize/bean/CustomPlatform;

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/c;->b:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method
