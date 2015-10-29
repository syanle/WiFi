.class Lcom/umeng/socialize/view/controller/d;
.super Ljava/lang/Object;
.source "UMPlatformSelectService.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/d;->a:Lcom/umeng/socialize/view/controller/c;

    iput-object p2, p0, Lcom/umeng/socialize/view/controller/d;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2

    .prologue
    .line 109
    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/d;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;->onAuthenticated(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 111
    const-string v0, ""

    .line 112
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/d;->a:Lcom/umeng/socialize/view/controller/c;

    invoke-static {v1}, Lcom/umeng/socialize/view/controller/c;->a(Lcom/umeng/socialize/view/controller/c;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/d;->a:Lcom/umeng/socialize/view/controller/c;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/c;->a(Lcom/umeng/socialize/view/controller/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/d;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;

    invoke-interface {v1, v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;->onOauthComplete(Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 117
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
