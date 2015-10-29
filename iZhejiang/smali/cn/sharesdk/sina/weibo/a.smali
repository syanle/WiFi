.class public Lcn/sharesdk/sina/weibo/a;
.super Lcom/mob/tools/FakeActivity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:[Ljava/lang/String;

.field private f:Lcn/sharesdk/framework/PlatformActionListener;

.field private g:Lcn/sharesdk/framework/Platform;

.field private h:Lcn/sharesdk/framework/Platform$ShareParams;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/tools/FakeActivity;-><init>()V

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->g:Lcn/sharesdk/framework/Platform;

    iput-object p3, p0, Lcn/sharesdk/sina/weibo/a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->f:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    move-object v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->e:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "com.sina.weibo.sdk.auth.sso.SsoHandler.authorize"

    iget v3, p0, Lcn/sharesdk/sina/weibo/a;->c:I

    invoke-static {v0, v3}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    const-class v4, Lcn/sharesdk/sina/weibo/SinaActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "action"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "appkey"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isUserClient"

    iget-boolean v3, p0, Lcn/sharesdk/sina/weibo/a;->d:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "redirectUrl"

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permissions"

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcn/sharesdk/sina/weibo/b;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/b;-><init>(Lcn/sharesdk/sina/weibo/a;)V

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v0, "com.sina.weibo.sdk.auth.sso.SsoHandler.authorizeWeb"

    iget v3, p0, Lcn/sharesdk/sina/weibo/a;->c:I

    invoke-static {v0, v3}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic b(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->g:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method private b()V
    .locals 3

    const-string v0, "com.sina.weibo.sdk.api.share.IWeiboShareAPI.sendRequest"

    iget v1, p0, Lcn/sharesdk/sina/weibo/a;->c:I

    invoke-static {v0, v1}, Lcn/sharesdk/framework/ShareSDK;->logApiEvent(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    const-class v2, Lcn/sharesdk/sina/weibo/SinaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "token"

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->g:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v2

    invoke-virtual {v2}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appkey"

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "redirectUrl"

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isUserClient"

    iget-boolean v2, p0, Lcn/sharesdk/sina/weibo/a;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Lcn/sharesdk/sina/weibo/c;

    invoke-direct {v1, p0}, Lcn/sharesdk/sina/weibo/c;-><init>(Lcn/sharesdk/sina/weibo/a;)V

    iget-object v2, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-static {v2}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V

    invoke-static {v1}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V

    iget-object v1, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcn/sharesdk/sina/weibo/a;)Lcn/sharesdk/framework/Platform$ShareParams;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/Platform$ShareParams;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Z

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/a;->h:Lcn/sharesdk/framework/Platform$ShareParams;

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->f:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method

.method public a(Lcn/sharesdk/framework/PlatformActionListener;[Ljava/lang/String;Z)V
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/sharesdk/sina/weibo/a;->d:Z

    iput-object p2, p0, Lcn/sharesdk/sina/weibo/a;->e:[Ljava/lang/String;

    iput-object p1, p0, Lcn/sharesdk/sina/weibo/a;->f:Lcn/sharesdk/framework/PlatformActionListener;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/mob/tools/FakeActivity;->onCreate()V

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/a;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "platformID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/sharesdk/sina/weibo/a;->c:I

    const/4 v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/a;->b()V

    goto :goto_0
.end method
