.class public Lcom/ta/mvc/command/TACommandExecutor;
.super Ljava/lang/Object;
.source "TACommandExecutor.java"


# static fields
.field private static final instance:Lcom/ta/mvc/command/TACommandExecutor;


# instance fields
.field private final commands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/mvc/command/TAICommand;",
            ">;>;"
        }
    .end annotation
.end field

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/ta/mvc/command/TACommandExecutor;

    invoke-direct {v0}, Lcom/ta/mvc/command/TACommandExecutor;-><init>()V

    sput-object v0, Lcom/ta/mvc/command/TACommandExecutor;->instance:Lcom/ta/mvc/command/TACommandExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/mvc/command/TACommandExecutor;->commands:Ljava/util/HashMap;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/mvc/command/TACommandExecutor;->initialized:Z

    .line 34
    invoke-virtual {p0}, Lcom/ta/mvc/command/TACommandExecutor;->ensureInitialized()V

    .line 35
    return-void
.end method

.method private getCommand(Ljava/lang/String;)Lcom/ta/mvc/command/TAICommand;
    .locals 7
    .param p1, "commandKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TANoSuchCommandException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v3, 0x0

    .line 107
    .local v3, "rv":Lcom/ta/mvc/command/TAICommand;
    iget-object v4, p0, Lcom/ta/mvc/command/TACommandExecutor;->commands:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/ta/mvc/command/TACommandExecutor;->commands:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 110
    .local v0, "cmd":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/mvc/command/TAICommand;>;"
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    .line 113
    .local v2, "modifiers":I
    and-int/lit16 v4, v2, 0x400

    if-nez v4, :cond_1

    .line 114
    and-int/lit16 v4, v2, 0x200

    if-nez v4, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rv":Lcom/ta/mvc/command/TAICommand;
    check-cast v3, Lcom/ta/mvc/command/TAICommand;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "cmd":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/mvc/command/TAICommand;>;"
    .end local v2    # "modifiers":I
    .restart local v3    # "rv":Lcom/ta/mvc/command/TAICommand;
    :cond_0
    return-object v3

    .line 119
    .end local v3    # "rv":Lcom/ta/mvc/command/TAICommand;
    .restart local v0    # "cmd":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/mvc/command/TAICommand;>;"
    .restart local v2    # "modifiers":I
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/ta/exception/TANoSuchCommandException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6ca1\u53d1\u73b0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 122
    const-string v6, "\u547d\u4ee4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-direct {v4, v5}, Lcom/ta/exception/TANoSuchCommandException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "rv":Lcom/ta/mvc/command/TAICommand;
    :cond_1
    new-instance v4, Lcom/ta/exception/TANoSuchCommandException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6ca1\u53d1\u73b0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 127
    const-string v6, "\u547d\u4ee4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-direct {v4, v5}, Lcom/ta/exception/TANoSuchCommandException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getInstance()Lcom/ta/mvc/command/TACommandExecutor;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/ta/mvc/command/TACommandExecutor;->instance:Lcom/ta/mvc/command/TACommandExecutor;

    return-object v0
.end method


# virtual methods
.method public enqueueCommand(Lcom/ta/mvc/command/TAICommand;)V
    .locals 1
    .param p1, "command"    # Lcom/ta/mvc/command/TAICommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TANoSuchCommandException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ta/mvc/command/TACommandExecutor;->enqueueCommand(Lcom/ta/mvc/command/TAICommand;Lcom/ta/mvc/common/TARequest;)V

    .line 100
    return-void
.end method

.method public enqueueCommand(Lcom/ta/mvc/command/TAICommand;Lcom/ta/mvc/common/TARequest;)V
    .locals 1
    .param p1, "command"    # Lcom/ta/mvc/command/TAICommand;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TANoSuchCommandException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0, v0}, Lcom/ta/mvc/command/TACommandExecutor;->enqueueCommand(Lcom/ta/mvc/command/TAICommand;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V

    .line 94
    return-void
.end method

.method public enqueueCommand(Lcom/ta/mvc/command/TAICommand;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V
    .locals 1
    .param p1, "command"    # Lcom/ta/mvc/command/TAICommand;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TANoSuchCommandException;
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1, p2}, Lcom/ta/mvc/command/TAICommand;->setRequest(Lcom/ta/mvc/common/TARequest;)V

    .line 85
    invoke-interface {p1, p3}, Lcom/ta/mvc/command/TAICommand;->setResponseListener(Lcom/ta/mvc/common/TAIResponseListener;)V

    .line 86
    invoke-static {}, Lcom/ta/mvc/command/TACommandQueueManager;->getInstance()Lcom/ta/mvc/command/TACommandQueueManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/mvc/command/TACommandQueueManager;->enqueue(Lcom/ta/mvc/command/TAICommand;)V

    .line 88
    :cond_0
    return-void
.end method

.method public enqueueCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V
    .locals 1
    .param p1, "commandKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TANoSuchCommandException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/ta/mvc/command/TACommandExecutor;->getCommand(Ljava/lang/String;)Lcom/ta/mvc/command/TAICommand;

    move-result-object v0

    .line 76
    .local v0, "cmd":Lcom/ta/mvc/command/TAICommand;
    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/mvc/command/TACommandExecutor;->enqueueCommand(Lcom/ta/mvc/command/TAICommand;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V

    .line 77
    return-void
.end method

.method public ensureInitialized()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/ta/mvc/command/TACommandExecutor;->initialized:Z

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/mvc/command/TACommandExecutor;->initialized:Z

    .line 47
    const-string v0, "CommandExecutor\u521d\u59cb\u5316"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/ta/mvc/command/TACommandQueueManager;->getInstance()Lcom/ta/mvc/command/TACommandQueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/mvc/command/TACommandQueueManager;->initialize()V

    .line 49
    const-string v0, "CommandExecutor\u521d\u59cb\u5316"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public registerCommand(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "commandKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/mvc/command/TAICommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "command":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/mvc/command/TAICommand;>;"
    if-eqz p2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandExecutor;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    return-void
.end method

.method public terminateAll()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public unregisterCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "commandKey"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ta/mvc/command/TACommandExecutor;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method
