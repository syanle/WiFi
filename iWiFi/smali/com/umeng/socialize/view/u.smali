.class Lcom/umeng/socialize/view/u;
.super Ljava/lang/Object;
.source "CommentPostDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/q;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/q;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/u;)Lcom/umeng/socialize/view/q;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v2}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, v3}, Lcom/umeng/socom/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v2}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socom/DeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    iget-object v1, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v1}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v2}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/view/CommentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 368
    iget-object v3, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v3}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v3

    .line 369
    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 370
    const-string v5, "umeng_socialize_network_break_alert"

    .line 368
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v2}, Lcom/umeng/socialize/view/q;->i(Lcom/umeng/socialize/view/q;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    iget-object v0, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    const-string v2, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a..."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v2}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/db/c;->f(Landroid/content/Context;)Z

    move-result v2

    .line 383
    iget-object v3, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v3}, Lcom/umeng/socialize/view/q;->d(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v3}, Lcom/umeng/socialize/view/q;->f(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v3

    invoke-interface {v3}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v3

    .line 384
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatforms()Ljava/util/List;

    move-result-object v3

    .line 385
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    .line 388
    :cond_3
    invoke-static {}, Lcom/umeng/socialize/view/q;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 389
    if-nez v2, :cond_4

    .line 390
    if-eqz v0, :cond_4

    .line 391
    if-eqz v0, :cond_4

    .line 392
    iget-object v0, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->f(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v1}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v1

    new-instance v2, Lcom/umeng/socialize/view/v;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/v;-><init>(Lcom/umeng/socialize/view/u;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    goto :goto_0

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/view/u;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->j(Lcom/umeng/socialize/view/q;)V

    goto :goto_0
.end method
