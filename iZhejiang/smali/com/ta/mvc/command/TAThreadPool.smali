.class public Lcom/ta/mvc/command/TAThreadPool;
.super Ljava/lang/Object;
.source "TAThreadPool.java"


# static fields
.field private static final MAX_THREADS_COUNT:I = 0x2

.field private static instance:Lcom/ta/mvc/command/TAThreadPool;


# instance fields
.field private started:Z

.field private threads:[Lcom/ta/mvc/command/TACommandThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/mvc/command/TAThreadPool;->threads:[Lcom/ta/mvc/command/TACommandThread;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/mvc/command/TAThreadPool;->started:Z

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/ta/mvc/command/TAThreadPool;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/ta/mvc/command/TAThreadPool;->instance:Lcom/ta/mvc/command/TAThreadPool;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/ta/mvc/command/TAThreadPool;

    invoke-direct {v0}, Lcom/ta/mvc/command/TAThreadPool;-><init>()V

    sput-object v0, Lcom/ta/mvc/command/TAThreadPool;->instance:Lcom/ta/mvc/command/TAThreadPool;

    .line 47
    :cond_0
    sget-object v0, Lcom/ta/mvc/command/TAThreadPool;->instance:Lcom/ta/mvc/command/TAThreadPool;

    return-object v0
.end method


# virtual methods
.method public shutdown()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 70
    const-string v1, "\u5173\u95ed\u6240\u6709\u7ebf\u7a0b\uff01"

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-boolean v1, p0, Lcom/ta/mvc/command/TAThreadPool;->started:Z

    if-eqz v1, :cond_0

    .line 73
    iget-object v3, p0, Lcom/ta/mvc/command/TAThreadPool;->threads:[Lcom/ta/mvc/command/TACommandThread;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ta/mvc/command/TAThreadPool;->threads:[Lcom/ta/mvc/command/TACommandThread;

    .line 78
    iput-boolean v2, p0, Lcom/ta/mvc/command/TAThreadPool;->started:Z

    .line 80
    :cond_0
    const-string v1, "\u5173\u95ed\u5b8c\u6240\u6709\u7ebf\u7a0b\uff01"

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    return-void

    .line 73
    :cond_1
    aget-object v0, v3, v1

    .line 75
    .local v0, "thread":Lcom/ta/mvc/command/TACommandThread;
    invoke-virtual {v0}, Lcom/ta/mvc/command/TACommandThread;->stop()V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 52
    iget-boolean v2, p0, Lcom/ta/mvc/command/TAThreadPool;->started:Z

    if-nez v2, :cond_0

    .line 54
    const-string v2, "\u7ebf\u7a0b\u6c60\u5f00\u59cb\u8fd0\u884c\uff01"

    invoke-static {p0, v2}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x2

    .line 57
    .local v0, "threadCount":I
    new-array v2, v0, [Lcom/ta/mvc/command/TACommandThread;

    iput-object v2, p0, Lcom/ta/mvc/command/TAThreadPool;->threads:[Lcom/ta/mvc/command/TACommandThread;

    .line 58
    const/4 v1, 0x0

    .local v1, "threadId":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 63
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ta/mvc/command/TAThreadPool;->started:Z

    .line 64
    const-string v2, "\u7ebf\u7a0b\u6c60\u8fd0\u884c\u5b8c\u6210\uff01"

    invoke-static {p0, v2}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .end local v0    # "threadCount":I
    .end local v1    # "threadId":I
    :cond_0
    return-void

    .line 60
    .restart local v0    # "threadCount":I
    .restart local v1    # "threadId":I
    :cond_1
    iget-object v2, p0, Lcom/ta/mvc/command/TAThreadPool;->threads:[Lcom/ta/mvc/command/TACommandThread;

    new-instance v3, Lcom/ta/mvc/command/TACommandThread;

    invoke-direct {v3, v1}, Lcom/ta/mvc/command/TACommandThread;-><init>(I)V

    aput-object v3, v2, v1

    .line 61
    iget-object v2, p0, Lcom/ta/mvc/command/TAThreadPool;->threads:[Lcom/ta/mvc/command/TACommandThread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ta/mvc/command/TACommandThread;->start()V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
