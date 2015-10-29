.class Lcom/umeng/socialize/controller/impl/p;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private final synthetic d:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/p;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/p;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/p;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/p;->d:Landroid/content/Intent;

    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 1531
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1534
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    .line 1510
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1513
    :cond_0
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1515
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/p;->b:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Lcom/umeng/socialize/db/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 1516
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "do oauth successed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/p;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/c;->b(Lcom/umeng/socialize/controller/impl/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1518
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/p;->a:Lcom/umeng/socialize/controller/impl/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Z)V

    .line 1519
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/p;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/p;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/p;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/umeng/socialize/controller/impl/c;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1527
    :cond_1
    :goto_0
    return-void

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/p;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_3

    .line 1522
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/p;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/p;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 1524
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/p;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/p;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 1503
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1506
    :cond_0
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 1538
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1539
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1541
    :cond_0
    return-void
.end method
