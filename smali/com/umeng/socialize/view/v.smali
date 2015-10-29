.class Lcom/umeng/socialize/view/v;
.super Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;
.source "CommentPostDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/u;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/u;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/v;->a:Lcom/umeng/socialize/view/u;

    .line 392
    invoke-direct {p0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFailed(I)V
    .locals 2

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginFailed(I)V

    .line 408
    iget-object v0, p0, Lcom/umeng/socialize/view/v;->a:Lcom/umeng/socialize/view/u;

    invoke-static {v0}, Lcom/umeng/socialize/view/u;->a(Lcom/umeng/socialize/view/u;)Lcom/umeng/socialize/view/q;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v0

    const-string v1, "\u7ed1\u5b9a\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    invoke-static {v0, p1, v1}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    .line 409
    return-void
.end method

.method public loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V
    .locals 2

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V

    .line 396
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/umeng/socialize/view/v;->a:Lcom/umeng/socialize/view/u;

    invoke-static {v0}, Lcom/umeng/socialize/view/u;->a(Lcom/umeng/socialize/view/u;)Lcom/umeng/socialize/view/q;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/v;->a:Lcom/umeng/socialize/view/u;

    invoke-static {v1}, Lcom/umeng/socialize/view/u;->a(Lcom/umeng/socialize/view/u;)Lcom/umeng/socialize/view/q;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/view/q;->g(Lcom/umeng/socialize/view/q;)Lcom/umeng/socialize/view/CommentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/view/q;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/view/v;->a:Lcom/umeng/socialize/view/u;

    invoke-static {v0}, Lcom/umeng/socialize/view/u;->a(Lcom/umeng/socialize/view/u;)Lcom/umeng/socialize/view/q;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/socialize/view/q;->a(Lcom/umeng/socialize/view/q;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/v;->a:Lcom/umeng/socialize/view/u;

    invoke-static {v0}, Lcom/umeng/socialize/view/u;->a(Lcom/umeng/socialize/view/u;)Lcom/umeng/socialize/view/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/q;->dismiss()V

    .line 402
    iget-object v0, p0, Lcom/umeng/socialize/view/v;->a:Lcom/umeng/socialize/view/u;

    invoke-static {v0}, Lcom/umeng/socialize/view/u;->a(Lcom/umeng/socialize/view/u;)Lcom/umeng/socialize/view/q;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/q;->j(Lcom/umeng/socialize/view/q;)V

    .line 403
    return-void
.end method
