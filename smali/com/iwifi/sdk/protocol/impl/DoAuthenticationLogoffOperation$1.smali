.class Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;
.super Landroid/os/Handler;
.source "DoAuthenticationLogoffOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "result":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mCallback:Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;->onAuthenticationReqFail(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_1
    sget-boolean v2, Lcom/iwifi/sdk/tools/HttpConf;->b_iWiFiSDK_ThirdPartyJar:Z

    if-eqz v2, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iwifi/sdk/chinanet/WelcomePage;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mCallback:Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;->onAuthenticationReqSucc(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mCallback:Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;->onLogoffRequestSucc(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$1;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mCallback:Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/iwifi/sdk/protocol/GlobaleAuthenticationRequestCallback;->onLogoffRequestFail(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
