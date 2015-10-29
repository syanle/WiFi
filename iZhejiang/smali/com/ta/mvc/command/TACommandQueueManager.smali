.class public final Lcom/ta/mvc/command/TACommandQueueManager;
.super Ljava/lang/Object;
.source "TACommandQueueManager.java"


# static fields
.field private static instance:Lcom/ta/mvc/command/TACommandQueueManager;


# instance fields
.field private initialized:Z

.field private pool:Lcom/ta/mvc/command/TAThreadPool;

.field private queue:Lcom/ta/mvc/command/TACommandQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->initialized:Z

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/ta/mvc/command/TACommandQueueManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/ta/mvc/command/TACommandQueueManager;->instance:Lcom/ta/mvc/command/TACommandQueueManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/ta/mvc/command/TACommandQueueManager;

    invoke-direct {v0}, Lcom/ta/mvc/command/TACommandQueueManager;-><init>()V

    sput-object v0, Lcom/ta/mvc/command/TACommandQueueManager;->instance:Lcom/ta/mvc/command/TACommandQueueManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/ta/mvc/command/TACommandQueueManager;->instance:Lcom/ta/mvc/command/TACommandQueueManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->queue:Lcom/ta/mvc/command/TACommandQueue;

    invoke-virtual {v0}, Lcom/ta/mvc/command/TACommandQueue;->clear()V

    .line 78
    return-void
.end method

.method public enqueue(Lcom/ta/mvc/command/TAICommand;)V
    .locals 2
    .param p1, "cmd"    # Lcom/ta/mvc/command/TAICommand;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->queue:Lcom/ta/mvc/command/TACommandQueue;

    invoke-virtual {v0, p1}, Lcom/ta/mvc/command/TACommandQueue;->enqueue(Lcom/ta/mvc/command/TAICommand;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6dfb\u52a0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public getNextCommand()Lcom/ta/mvc/command/TAICommand;
    .locals 3

    .prologue
    .line 56
    const-string v1, "\u83b7\u53d6Command\uff01"

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/ta/mvc/command/TACommandQueueManager;->queue:Lcom/ta/mvc/command/TACommandQueue;

    invoke-virtual {v1}, Lcom/ta/mvc/command/TACommandQueue;->getNextCommand()Lcom/ta/mvc/command/TAICommand;

    move-result-object v0

    .line 58
    .local v0, "cmd":Lcom/ta/mvc/command/TAICommand;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u83b7\u53d6Command"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5b8c\u6210\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    return-object v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "\u51c6\u5907\u521d\u59cb\u5316\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->initialized:Z

    if-nez v0, :cond_0

    .line 38
    const-string v0, "\u6b63\u5728\u521d\u59cb\u5316\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/ta/mvc/command/TACommandQueue;

    invoke-direct {v0}, Lcom/ta/mvc/command/TACommandQueue;-><init>()V

    iput-object v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->queue:Lcom/ta/mvc/command/TACommandQueue;

    .line 40
    invoke-static {}, Lcom/ta/mvc/command/TAThreadPool;->getInstance()Lcom/ta/mvc/command/TAThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->pool:Lcom/ta/mvc/command/TAThreadPool;

    .line 41
    const-string v0, "\u5b8c\u6210\u521d\u59cb\u5316\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->pool:Lcom/ta/mvc/command/TAThreadPool;

    invoke-virtual {v0}, Lcom/ta/mvc/command/TAThreadPool;->start()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->initialized:Z

    .line 46
    :cond_0
    const-string v0, "\u521d\u59cb\u5316\u5b8c\u6210\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->initialized:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->queue:Lcom/ta/mvc/command/TACommandQueue;

    invoke-virtual {v0}, Lcom/ta/mvc/command/TACommandQueue;->clear()V

    .line 88
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->pool:Lcom/ta/mvc/command/TAThreadPool;

    invoke-virtual {v0}, Lcom/ta/mvc/command/TAThreadPool;->shutdown()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/mvc/command/TACommandQueueManager;->initialized:Z

    .line 91
    :cond_0
    return-void
.end method
