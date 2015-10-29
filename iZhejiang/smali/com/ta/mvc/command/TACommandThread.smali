.class public Lcom/ta/mvc/command/TACommandThread;
.super Ljava/lang/Object;
.source "TACommandThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private running:Z

.field private stop:Z

.field private thread:Ljava/lang/Thread;

.field private threadId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "threadId"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/mvc/command/TACommandThread;->thread:Ljava/lang/Thread;

    .line 32
    iput-boolean v1, p0, Lcom/ta/mvc/command/TACommandThread;->running:Z

    .line 33
    iput-boolean v1, p0, Lcom/ta/mvc/command/TACommandThread;->stop:Z

    .line 37
    const-string v0, "CommandThread::ctor"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput p1, p0, Lcom/ta/mvc/command/TACommandThread;->threadId:I

    .line 39
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ta/mvc/command/TACommandThread;->thread:Ljava/lang/Thread;

    .line 40
    return-void
.end method


# virtual methods
.method public getThreadId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ta/mvc/command/TACommandThread;->threadId:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/ta/mvc/command/TACommandThread;->running:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 44
    const-string v1, "CommandThread::run-enter"

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :goto_0
    iget-boolean v1, p0, Lcom/ta/mvc/command/TACommandThread;->stop:Z

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "CommandThread::run-exit"

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    return-void

    .line 47
    :cond_0
    const-string v1, "CommandThread::get-next-command"

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/ta/mvc/command/TACommandQueueManager;->getInstance()Lcom/ta/mvc/command/TACommandQueueManager;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/ta/mvc/command/TACommandQueueManager;->getNextCommand()Lcom/ta/mvc/command/TAICommand;

    move-result-object v0

    .line 50
    .local v0, "cmd":Lcom/ta/mvc/command/TAICommand;
    const-string v1, "CommandThread::to-execute"

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {v0}, Lcom/ta/mvc/command/TAICommand;->execute()V

    .line 52
    const-string v1, "CommandThread::executed"

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/mvc/command/TACommandThread;->running:Z

    .line 61
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/mvc/command/TACommandThread;->stop:Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/mvc/command/TACommandThread;->running:Z

    .line 67
    return-void
.end method
