.class Lcom/ta/mvc/command/TACommand$1;
.super Landroid/os/Handler;
.source "TACommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/mvc/command/TACommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/mvc/command/TACommand;


# direct methods
.method constructor <init>(Lcom/ta/mvc/command/TACommand;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    # getter for: Lcom/ta/mvc/command/TACommand;->listener:Lcom/ta/mvc/common/TAIResponseListener;
    invoke-static {v0}, Lcom/ta/mvc/command/TACommand;->access$0(Lcom/ta/mvc/command/TACommand;)Lcom/ta/mvc/common/TAIResponseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ta/mvc/common/TAIResponseListener;->onStart()V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    # getter for: Lcom/ta/mvc/command/TACommand;->listener:Lcom/ta/mvc/common/TAIResponseListener;
    invoke-static {v0}, Lcom/ta/mvc/command/TACommand;->access$0(Lcom/ta/mvc/command/TACommand;)Lcom/ta/mvc/common/TAIResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    invoke-virtual {v1}, Lcom/ta/mvc/command/TACommand;->getResponse()Lcom/ta/mvc/common/TAResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ta/mvc/common/TAIResponseListener;->onRuning(Lcom/ta/mvc/common/TAResponse;)V

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    # getter for: Lcom/ta/mvc/command/TACommand;->listener:Lcom/ta/mvc/common/TAIResponseListener;
    invoke-static {v0}, Lcom/ta/mvc/command/TACommand;->access$0(Lcom/ta/mvc/command/TACommand;)Lcom/ta/mvc/common/TAIResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    invoke-virtual {v1}, Lcom/ta/mvc/command/TACommand;->getResponse()Lcom/ta/mvc/common/TAResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ta/mvc/common/TAIResponseListener;->onSuccess(Lcom/ta/mvc/common/TAResponse;)V

    goto :goto_0

    .line 48
    :pswitch_3
    iget-object v0, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    # getter for: Lcom/ta/mvc/command/TACommand;->listener:Lcom/ta/mvc/common/TAIResponseListener;
    invoke-static {v0}, Lcom/ta/mvc/command/TACommand;->access$0(Lcom/ta/mvc/command/TACommand;)Lcom/ta/mvc/common/TAIResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    invoke-virtual {v1}, Lcom/ta/mvc/command/TACommand;->getResponse()Lcom/ta/mvc/common/TAResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ta/mvc/common/TAIResponseListener;->onFailure(Lcom/ta/mvc/common/TAResponse;)V

    goto :goto_0

    .line 51
    :pswitch_4
    iget-object v0, p0, Lcom/ta/mvc/command/TACommand$1;->this$0:Lcom/ta/mvc/command/TACommand;

    # getter for: Lcom/ta/mvc/command/TACommand;->listener:Lcom/ta/mvc/common/TAIResponseListener;
    invoke-static {v0}, Lcom/ta/mvc/command/TACommand;->access$0(Lcom/ta/mvc/command/TACommand;)Lcom/ta/mvc/common/TAIResponseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ta/mvc/common/TAIResponseListener;->onFinish()V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
