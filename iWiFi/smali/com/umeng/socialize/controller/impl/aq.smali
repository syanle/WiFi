.class Lcom/umeng/socialize/controller/impl/aq;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c$a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/aq;->a:Lcom/umeng/socialize/controller/impl/c$a;

    .line 2812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/aq;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 2820
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 2821
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/aq;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/aq;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/c$a;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/aq;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2823
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/aq;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    .line 2824
    const-string v2, "upload platform appkey failed."

    invoke-direct {v1, p1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    .line 2825
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/aq;->a:Lcom/umeng/socialize/controller/impl/c$a;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 2823
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 2815
    return-void
.end method
