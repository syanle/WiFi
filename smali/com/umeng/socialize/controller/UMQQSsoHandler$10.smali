.class Lcom/umeng/socialize/controller/UMQQSsoHandler$10;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 791
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$3()V

    .line 792
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$23(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$23(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 797
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    .line 796
    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$24(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 800
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v3}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v3

    .line 799
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 801
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->sendReport()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$25(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    .line 802
    return-void
.end method

.method public onComplete(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    .line 779
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$3()V

    .line 780
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$23(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$23(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 782
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    .line 781
    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$24(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 785
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v3}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v3

    .line 784
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 786
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->sendReport()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$25(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    .line 787
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 5

    .prologue
    .line 764
    const-string v0, "UMQQSsoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u4eab\u5931\u8d25! ==> errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    const-string v2, ", errorMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", detail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 766
    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$3()V

    .line 769
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$23(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$23(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 771
    iget v2, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v3}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v3

    .line 770
    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$24(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 774
    iget v3, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v4}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v4

    .line 773
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 775
    return-void
.end method
