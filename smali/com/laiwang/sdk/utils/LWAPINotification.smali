.class public Lcom/laiwang/sdk/utils/LWAPINotification;
.super Ljava/lang/Object;
.source "LWAPINotification.java"


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/laiwang/sdk/utils/LWAPINotification;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(ILandroid/content/Context;)V
    .locals 1
    .param p0, "msg"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(ILandroid/content/Context;I)V

    .line 59
    return-void
.end method

.method public static showToast(ILandroid/content/Context;I)V
    .locals 3
    .param p0, "msg"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "duration"    # I

    .prologue
    .line 42
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 44
    :cond_1
    move v0, p2

    .line 45
    .local v0, "tempDuration":I
    sget-object v1, Lcom/laiwang/sdk/utils/LWAPINotification;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/laiwang/sdk/utils/LWAPINotification$2;

    invoke-direct {v2, p1, p0, v0}, Lcom/laiwang/sdk/utils/LWAPINotification$2;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .end local v0    # "tempDuration":I
    :cond_2
    return-void
.end method

.method public static showToast(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;I)V

    .line 21
    return-void
.end method

.method public static showToast(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "duration"    # I

    .prologue
    .line 25
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 28
    :cond_1
    move v0, p2

    .line 29
    .local v0, "tempDuration":I
    sget-object v1, Lcom/laiwang/sdk/utils/LWAPINotification;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/laiwang/sdk/utils/LWAPINotification$1;

    invoke-direct {v2, p1, p0, v0}, Lcom/laiwang/sdk/utils/LWAPINotification$1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .end local v0    # "tempDuration":I
    :cond_2
    return-void
.end method
