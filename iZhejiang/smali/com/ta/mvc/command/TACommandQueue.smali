.class public Lcom/ta/mvc/command/TACommandQueue;
.super Ljava/lang/Object;
.source "TACommandQueue.java"


# instance fields
.field private theQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/ta/mvc/command/TAICommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ta/mvc/command/TACommandQueue;->theQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    const-string v0, "\u521d\u59cb\u5316Command\u961f\u5217"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    const-string v0, "\u6e05\u7a7a\u6240\u6709Command"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandQueue;->theQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enqueue(Lcom/ta/mvc/command/TAICommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/ta/mvc/command/TAICommand;

    .prologue
    .line 41
    const-string v0, "\u6dfb\u52a0Command\u5230\u961f\u5217"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandQueue;->theQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public declared-synchronized getNextCommand()Lcom/ta/mvc/command/TAICommand;
    .locals 5

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    const-string v3, "\u83b7\u53d6Command"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v1, 0x0

    .line 51
    .local v1, "cmd":Lcom/ta/mvc/command/TAICommand;
    :try_start_1
    const-string v3, "CommandQueue::to-take"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/ta/mvc/command/TACommandQueue;->theQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/ta/mvc/command/TAICommand;

    move-object v1, v0

    .line 53
    const-string v3, "CommandQueue::taken"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fd4\u56deCommand"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    monitor-exit p0

    return-object v1

    .line 54
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230Command"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 47
    .end local v1    # "cmd":Lcom/ta/mvc/command/TAICommand;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
