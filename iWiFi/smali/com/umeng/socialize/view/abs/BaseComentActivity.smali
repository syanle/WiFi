.class public abstract Lcom/umeng/socialize/view/abs/BaseComentActivity;
.super Lcom/umeng/socialize/view/abs/s;
.source "BaseComentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;
    }
.end annotation


# static fields
.field protected static final e:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;

.field protected f:Lcom/umeng/socialize/bean/SocializeEntity;

.field protected g:Lcom/umeng/socialize/controller/UMSocialService;

.field protected h:Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/umeng/socialize/view/abs/BaseComentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/s;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->a:Z

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/BaseComentActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/BaseComentActivity;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->a:Z

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/abs/BaseComentActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->a:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized fetchFormNet(Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;J)V
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->e:Ljava/lang/String;

    const-string v1, "Reflush data form NET......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/umeng/socialize/view/abs/c;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/view/abs/c;-><init>(Lcom/umeng/socialize/view/abs/BaseComentActivity;Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;)V

    .line 129
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->g:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1, p0, v0, p2, p3}, Lcom/umeng/socialize/controller/UMSocialService;->getComments(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchFromDBElseNet(Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;)V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->e:Ljava/lang/String;

    const-string v1, "Reflush data form DB......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/socialize/view/abs/b;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/view/abs/b;-><init>(Lcom/umeng/socialize/view/abs/BaseComentActivity;Lcom/umeng/socialize/view/abs/BaseComentActivity$FetchDataListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/socialize/view/abs/s;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->g:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    const/16 v1, 0x1624

    if-ne p1, v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getSinaSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getSinaSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/umeng/socialize/controller/UMSsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 144
    :cond_0
    const/16 v1, 0x1619

    if-ne p1, v1, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getQZoneSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getQZoneSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/controller/UMSsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 150
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/umeng/socialize/view/abs/s;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/umeng/socialize/view/abs/BaseComentActivity;->e:Ljava/lang/String;

    const-string v2, "No EntityPool key.............."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/BaseComentActivity;->finish()V

    .line 65
    :cond_0
    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->g:Lcom/umeng/socialize/controller/UMSocialService;

    .line 66
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->g:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/sso/QZoneSsoHandler;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V

    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->g:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->f:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/BaseComentActivity;->b:Landroid/os/Handler;

    .line 69
    return-void
.end method
