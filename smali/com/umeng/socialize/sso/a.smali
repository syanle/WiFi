.class Lcom/umeng/socialize/sso/a;
.super Ljava/lang/Object;
.source "SinaSsoHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/sso/SinaSsoHandler;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sso/SinaSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sso/a;->a:Lcom/umeng/socialize/sso/SinaSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/sso/a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 86
    invoke-static {p2}, Lcom/sina/sso/RemoteSSO$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sina/sso/RemoteSSO;

    move-result-object v0

    .line 88
    :try_start_0
    invoke-interface {v0}, Lcom/sina/sso/RemoteSSO;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/sso/SinaSsoHandler;->access$1(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0}, Lcom/sina/sso/RemoteSSO;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/sso/SinaSsoHandler;->access$2(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/umeng/socialize/sso/a;->a:Lcom/umeng/socialize/sso/SinaSsoHandler;

    iget-object v1, p0, Lcom/umeng/socialize/sso/a;->a:Lcom/umeng/socialize/sso/SinaSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/SinaSsoHandler;->mAuthActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/umeng/socialize/sso/SinaSsoHandler;->access$3(Lcom/umeng/socialize/sso/SinaSsoHandler;)Landroid/app/Activity;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/umeng/socialize/sso/a;->a:Lcom/umeng/socialize/sso/SinaSsoHandler;

    invoke-virtual {v2}, Lcom/umeng/socialize/sso/SinaSsoHandler;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 92
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 93
    const/16 v4, 0x1624

    .line 90
    # invokes: Lcom/umeng/socialize/sso/SinaSsoHandler;->startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/sso/SinaSsoHandler;->access$4(Lcom/umeng/socialize/sso/SinaSsoHandler;Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/umeng/socialize/sso/a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/sso/a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    const-string v2, "can`t start singel sign on. "

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/sso/a;->a:Lcom/umeng/socialize/sso/SinaSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/SinaSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;
    invoke-static {v2}, Lcom/umeng/socialize/sso/SinaSsoHandler;->access$0(Lcom/umeng/socialize/sso/SinaSsoHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/sso/a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/sso/a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    const-string v2, "\u65e0\u6cd5\u8fde\u63a5\u65b0\u6d6a\u5ba2\u6237\u7aef"

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/sso/a;->a:Lcom/umeng/socialize/sso/SinaSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/SinaSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;
    invoke-static {v2}, Lcom/umeng/socialize/sso/SinaSsoHandler;->access$0(Lcom/umeng/socialize/sso/SinaSsoHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 82
    :cond_0
    return-void
.end method
