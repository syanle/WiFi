.class Lcom/umeng/socialize/view/aq;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ak;

.field private final synthetic b:Lcom/umeng/socialize/bean/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ak;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/aq;->a:Lcom/umeng/socialize/view/ak;

    iput-object p2, p0, Lcom/umeng/socialize/view/aq;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/aq;)Lcom/umeng/socialize/view/ak;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/umeng/socialize/view/aq;->a:Lcom/umeng/socialize/view/ak;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/umeng/socialize/view/aq;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/umeng/socialize/view/aq;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v1}, Lcom/umeng/socialize/view/ak;->c(Lcom/umeng/socialize/view/ak;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/umeng/socialize/view/aq;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v1, v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 208
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/aq;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v1}, Lcom/umeng/socialize/view/ak;->d(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/aq;->a:Lcom/umeng/socialize/view/ak;

    invoke-static {v2}, Lcom/umeng/socialize/view/ak;->c(Lcom/umeng/socialize/view/ak;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/umeng/socialize/view/ar;

    invoke-direct {v3, p0, v0}, Lcom/umeng/socialize/view/ar;-><init>(Lcom/umeng/socialize/view/aq;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/umeng/socialize/controller/UMSocialService;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method
