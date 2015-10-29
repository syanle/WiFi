.class Lcom/umeng/socialize/controller/impl/c$a;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field c:Lcom/umeng/socialize/controller/UMSsoHandler;

.field d:Landroid/app/Activity;

.field e:Landroid/os/Bundle;

.field f:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field final synthetic g:Lcom/umeng/socialize/controller/impl/c;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/controller/impl/c;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/controller/UMSsoHandler;)V
    .locals 1

    .prologue
    .line 2721
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/c$a;->g:Lcom/umeng/socialize/controller/impl/c;

    .line 2719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2723
    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 2724
    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 2725
    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/c$a;->c:Lcom/umeng/socialize/controller/UMSsoHandler;

    .line 2726
    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/c$a;->d:Landroid/app/Activity;

    .line 2728
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/c$a;->b()Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->f:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 2729
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c$a;)Lcom/umeng/socialize/controller/impl/c;
    .locals 1

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->g:Lcom/umeng/socialize/controller/impl/c;

    return-object v0
.end method

.method private b()Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 1

    .prologue
    .line 2740
    new-instance v0, Lcom/umeng/socialize/controller/impl/ap;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/controller/impl/ap;-><init>(Lcom/umeng/socialize/controller/impl/c$a;)V

    .line 2804
    return-object v0
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;
    .locals 1

    .prologue
    .line 2812
    new-instance v0, Lcom/umeng/socialize/controller/impl/aq;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/controller/impl/aq;-><init>(Lcom/umeng/socialize/controller/impl/c$a;)V

    .line 2830
    return-object v0
.end method

.method public onComplete(ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2851
    if-eqz p2, :cond_4

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2853
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2854
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v2, v3, :cond_1

    .line 2855
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->c:Lcom/umeng/socialize/controller/UMSsoHandler;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/UMSsoHandler;->setToken(Ljava/lang/String;)V

    .line 2856
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->c:Lcom/umeng/socialize/controller/UMSsoHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$a;->f:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSsoHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 2876
    :cond_0
    :goto_0
    return-void

    .line 2857
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v2, v3, :cond_3

    .line 2858
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$a;->c:Lcom/umeng/socialize/controller/UMSsoHandler;

    invoke-virtual {v2, v1}, Lcom/umeng/socialize/controller/UMSsoHandler;->setKey(Ljava/lang/String;)V

    .line 2859
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->g:Lcom/umeng/socialize/controller/impl/c;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2860
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->c:Lcom/umeng/socialize/controller/UMSsoHandler;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$a;->g:Lcom/umeng/socialize/controller/impl/c;

    invoke-static {v2}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2861
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2860
    invoke-virtual {v1, v0}, Lcom/umeng/socialize/controller/UMSsoHandler;->setToken(Ljava/lang/String;)V

    .line 2863
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->c:Lcom/umeng/socialize/controller/UMSsoHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$a;->f:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSsoHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0

    .line 2864
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v1, v2, :cond_0

    .line 2866
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2867
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has get "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " qzone app id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2868
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2867
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->c:Lcom/umeng/socialize/controller/UMSsoHandler;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/controller/UMSsoHandler;->setToken(Ljava/lang/String;)V

    .line 2870
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->c:Lcom/umeng/socialize/controller/UMSsoHandler;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$a;->f:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSsoHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0

    .line 2872
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_0

    .line 2873
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v2, Lcom/umeng/socialize/exception/SocializeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no appkey on"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 2873
    invoke-interface {v1, v2, v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2839
    :cond_0
    return-void
.end method
