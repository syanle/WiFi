.class public Lim/yixin/sdk/util/SDKLogger;
.super Ljava/lang/Object;


# static fields
.field private static isOpenErrorLogger:Z

.field private static isOpenInfoLogger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lim/yixin/sdk/util/SDKLogger;->isOpenInfoLogger:Z

    const/4 v0, 0x1

    sput-boolean v0, Lim/yixin/sdk/util/SDKLogger;->isOpenErrorLogger:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lim/yixin/sdk/util/SDKLogger;->isOpenErrorLogger:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Yixin.SDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lim/yixin/sdk/util/SDKLogger;->isOpenInfoLogger:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Yixin.SDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setOpenErrorLogger(Z)V
    .locals 0

    sput-boolean p0, Lim/yixin/sdk/util/SDKLogger;->isOpenErrorLogger:Z

    return-void
.end method

.method public static setOpenInfoLogger(Z)V
    .locals 0

    sput-boolean p0, Lim/yixin/sdk/util/SDKLogger;->isOpenInfoLogger:Z

    return-void
.end method
