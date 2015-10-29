.class public Lcom/qihoo/linker/logcollector/utils/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field private static final RETURN_NOLOG:I = -0x1

.field public static enableDefaultLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qihoo/linker/logcollector/utils/LogHelper;->enableDefaultLog:Z

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    const-string p1, ""

    .line 28
    :cond_0
    sget-boolean v0, Lcom/qihoo/linker/logcollector/utils/LogHelper;->enableDefaultLog:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    const-string p1, ""

    .line 35
    :cond_0
    sget-boolean v0, Lcom/qihoo/linker/logcollector/utils/LogHelper;->enableDefaultLog:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    const-string p1, ""

    .line 20
    :cond_0
    sget-boolean v0, Lcom/qihoo/linker/logcollector/utils/LogHelper;->enableDefaultLog:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    const-string p1, ""

    .line 42
    :cond_0
    sget-boolean v0, Lcom/qihoo/linker/logcollector/utils/LogHelper;->enableDefaultLog:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
