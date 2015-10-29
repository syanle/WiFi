.class Lcom/umeng/socialize/controller/UMQQSsoHandler$5;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

.field private final synthetic val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 365
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->gotoShare()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$2(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    .line 355
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 349
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;->val$authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 344
    return-void
.end method
