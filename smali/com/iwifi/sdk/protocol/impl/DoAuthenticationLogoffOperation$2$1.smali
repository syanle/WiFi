.class Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;
.super Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;
.source "DoAuthenticationLogoffOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

.field private final synthetic val$dev_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

    iput-object p2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->val$dev_id:Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationRequestFailure(Ljava/lang/String;)V
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 195
    .local v9, "sendmsg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v9, Landroid/os/Message;->what:I

    .line 196
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v0

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v0

    const-string v2, "AAA_AUTH"

    iget-object v3, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->val$dev_id:Ljava/lang/String;

    const-string v5, ""

    const-string v7, ""

    move-object v1, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "result_msg":Ljava/lang/String;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    const-string v0, "iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestFailure"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method public onAuthenticationRequestSuccess(Ljava/lang/String;)V
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 182
    .local v9, "sendmsg":Landroid/os/Message;
    const/4 v0, 0x0

    iput v0, v9, Landroid/os/Message;->what:I

    .line 183
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v0

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v0

    const-string v2, "AAA_AUTH"

    iget-object v3, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->val$dev_id:Ljava/lang/String;

    const-string v5, ""

    const-string v7, ""

    move-object v1, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateAuthResultJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "result_msg":Ljava/lang/String;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    const-string v0, "iWiFiSDK|Authentication|AAA Authentication|onAuthenticationRequestSuccess"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;->this$1:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    move-result-object v0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method
