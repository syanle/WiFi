.class Lcom/umeng/socialize/controller/impl/ap;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c$a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    .line 2740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Lcom/umeng/socialize/bean/UMToken;
    .locals 6

    .prologue
    .line 2758
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2759
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2760
    const-string v2, "openid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2762
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "has get "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v5, v5, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",local token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2763
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",usid :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2762
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    new-instance v3, Lcom/umeng/socialize/bean/SNSPair;

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v4, v4, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    invoke-static {v3, v0, v2}, Lcom/umeng/socialize/bean/UMToken;->buildToken(Lcom/umeng/socialize/bean/SNSPair;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/bean/UMToken;

    move-result-object v0

    .line 2768
    return-object v0
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 2800
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2802
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    .line 2778
    if-eqz p1, :cond_1

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2779
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2780
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iput-object p1, v0, Lcom/umeng/socialize/controller/impl/c$a;->e:Landroid/os/Bundle;

    .line 2783
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/ap;->a(Landroid/os/Bundle;)Lcom/umeng/socialize/bean/UMToken;

    move-result-object v0

    .line 2785
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/c$a;->a(Lcom/umeng/socialize/controller/impl/c$a;)Lcom/umeng/socialize/controller/impl/c;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c$a;->d:Landroid/app/Activity;

    .line 2786
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    invoke-virtual {v3}, Lcom/umeng/socialize/controller/impl/c$a;->a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    move-result-object v3

    .line 2785
    invoke-virtual {v1, v2, v0, v3}, Lcom/umeng/socialize/controller/impl/c;->uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    .line 2795
    :cond_0
    :goto_0
    return-void

    .line 2788
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### authorize data is invalid."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2789
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2788
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2790
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 2791
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    .line 2792
    const-string v2, "no found access_token"

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 2791
    invoke-interface {v0, v1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ap;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2750
    :cond_0
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 2743
    return-void
.end method
