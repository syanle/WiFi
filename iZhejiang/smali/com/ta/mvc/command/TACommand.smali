.class public abstract Lcom/ta/mvc/command/TACommand;
.super Lcom/ta/mvc/command/TABaseCommand;
.source "TACommand.java"


# static fields
.field protected static final command_failure:I = 0x3

.field protected static final command_finish:I = 0x5

.field protected static final command_runting:I = 0x2

.field protected static final command_start:I = 0x1

.field protected static final command_success:I = 0x4


# instance fields
.field private handler:Landroid/os/Handler;

.field private listener:Lcom/ta/mvc/common/TAIResponseListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ta/mvc/command/TABaseCommand;-><init>()V

    .line 32
    new-instance v0, Lcom/ta/mvc/command/TACommand$1;

    invoke-direct {v0, p0}, Lcom/ta/mvc/command/TACommand$1;-><init>(Lcom/ta/mvc/command/TACommand;)V

    iput-object v0, p0, Lcom/ta/mvc/command/TACommand;->handler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/ta/mvc/command/TACommand;)Lcom/ta/mvc/common/TAIResponseListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ta/mvc/command/TACommand;->listener:Lcom/ta/mvc/common/TAIResponseListener;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/ta/mvc/command/TACommand;->onPreExecuteCommand()V

    .line 63
    invoke-virtual {p0}, Lcom/ta/mvc/command/TACommand;->executeCommand()V

    .line 64
    invoke-virtual {p0}, Lcom/ta/mvc/command/TACommand;->onPostExecuteCommand()V

    .line 65
    return-void
.end method

.method protected abstract executeCommand()V
.end method

.method protected onPostExecuteCommand()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected onPreExecuteCommand()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/ta/mvc/command/TACommand;->sendStartMessage()V

    .line 72
    return-void
.end method

.method public sendFailureMessage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 103
    new-instance v0, Lcom/ta/mvc/common/TAResponse;

    invoke-direct {v0}, Lcom/ta/mvc/common/TAResponse;-><init>()V

    .line 104
    .local v0, "response":Lcom/ta/mvc/common/TAResponse;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TAResponse;->setData(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/ta/mvc/command/TACommand;->setResponse(Lcom/ta/mvc/common/TAResponse;)V

    .line 106
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ta/mvc/command/TACommand;->sendMessage(I)V

    .line 107
    return-void
.end method

.method public sendFinishMessage()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ta/mvc/command/TACommand;->sendMessage(I)V

    .line 120
    return-void
.end method

.method protected sendMessage(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/ta/mvc/command/TACommand;->getResponseListener()Lcom/ta/mvc/common/TAIResponseListener;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/mvc/command/TACommand;->listener:Lcom/ta/mvc/common/TAIResponseListener;

    .line 82
    iget-object v0, p0, Lcom/ta/mvc/command/TACommand;->listener:Lcom/ta/mvc/common/TAIResponseListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ta/mvc/command/TACommand;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    :cond_0
    return-void
.end method

.method public sendRuntingMessage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 111
    new-instance v0, Lcom/ta/mvc/common/TAResponse;

    invoke-direct {v0}, Lcom/ta/mvc/common/TAResponse;-><init>()V

    .line 112
    .local v0, "response":Lcom/ta/mvc/common/TAResponse;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TAResponse;->setData(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/ta/mvc/command/TACommand;->setResponse(Lcom/ta/mvc/common/TAResponse;)V

    .line 114
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ta/mvc/command/TACommand;->sendMessage(I)V

    .line 115
    return-void
.end method

.method public sendStartMessage()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ta/mvc/command/TACommand;->sendMessage(I)V

    .line 91
    return-void
.end method

.method public sendSuccessMessage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 95
    new-instance v0, Lcom/ta/mvc/common/TAResponse;

    invoke-direct {v0}, Lcom/ta/mvc/common/TAResponse;-><init>()V

    .line 96
    .local v0, "response":Lcom/ta/mvc/common/TAResponse;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TAResponse;->setData(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/ta/mvc/command/TACommand;->setResponse(Lcom/ta/mvc/common/TAResponse;)V

    .line 98
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ta/mvc/command/TACommand;->sendMessage(I)V

    .line 99
    return-void
.end method
