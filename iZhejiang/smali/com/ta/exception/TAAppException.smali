.class public Lcom/ta/exception/TAAppException;
.super Ljava/lang/Object;
.source "TAAppException.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final TAG:Ljava/lang/String; = "CrashHandler"

.field private static instance:Lcom/ta/exception/TAAppException;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcom/ta/exception/TAAppException;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/ta/exception/TAAppException;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ta/exception/TAAppException;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ta/exception/TAAppException;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/ta/exception/TAAppException;->instance:Lcom/ta/exception/TAAppException;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ta/exception/TAAppException;

    invoke-direct {v0, p0}, Lcom/ta/exception/TAAppException;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/exception/TAAppException;->instance:Lcom/ta/exception/TAAppException;

    .line 44
    :cond_0
    sget-object v0, Lcom/ta/exception/TAAppException;->instance:Lcom/ta/exception/TAAppException;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    .line 75
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return v1

    .line 79
    :cond_0
    new-instance v0, Lcom/ta/exception/TAAppException$1;

    invoke-direct {v0, p0}, Lcom/ta/exception/TAAppException$1;-><init>(Lcom/ta/exception/TAAppException;)V

    .line 100
    invoke-virtual {v0}, Lcom/ta/exception/TAAppException$1;->start()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ta/exception/TAAppException;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/exception/TAAppException;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 52
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-direct {p0, p2}, Lcom/ta/exception/TAAppException;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/exception/TAAppException;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ta/exception/TAAppException;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 63
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
