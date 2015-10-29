.class Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;
.super Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;
.source "DoAuthenticationLogoffOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;

    .line 309
    invoke-direct {p0}, Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogOffFailure(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v2

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 325
    .local v1, "sendmsg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 326
    move-object v0, p1

    .line 327
    .local v0, "result_msg":Ljava/lang/String;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    const-string v2, "iWiFiSDK|Logoff|AAA Logoff|onLogOffFailure"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v2

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method public onLogOffSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v2

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 314
    .local v1, "sendmsg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 315
    move-object v0, p1

    .line 316
    .local v0, "result_msg":Ljava/lang/String;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    const-string v2, "iWiFiSDK|Logoff|AAA Logoff|onLogOffSuccess"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v2

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void
.end method
