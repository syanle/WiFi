.class Lcom/umeng/socialize/view/bd;
.super Ljava/lang/Object;
.source "OauthDialog.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/av;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/av;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bd;->a:Lcom/umeng/socialize/view/av;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4

    .prologue
    .line 568
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/umeng/socialize/view/bd;->a:Lcom/umeng/socialize/view/av;

    iget-object v1, p0, Lcom/umeng/socialize/view/bd;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v1}, Lcom/umeng/socialize/view/av;->h(Lcom/umeng/socialize/view/av;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/view/av;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/umeng/socialize/view/bd;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v1}, Lcom/umeng/socialize/view/av;->i(Lcom/umeng/socialize/view/av;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 580
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bd;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->j(Lcom/umeng/socialize/view/av;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/umeng/socialize/view/bd;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->j(Lcom/umeng/socialize/view/av;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    .line 574
    const-string v2, "can`t initlized entity.."

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/view/bd;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v2}, Lcom/umeng/socialize/view/av;->h(Lcom/umeng/socialize/view/av;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 573
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/bd;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->i(Lcom/umeng/socialize/view/av;)Landroid/webkit/WebView;

    move-result-object v0

    .line 577
    const-string v1, "Error:502  Please make sure your network is available."

    .line 578
    const-string v2, "text/html"

    const-string v3, "UTF-8"

    .line 576
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 564
    return-void
.end method
