.class public Lcom/pubinfo/wifi_core/core/util/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# static fields
.field private static instance:Lcom/pubinfo/wifi_core/core/util/ActivityManager;


# instance fields
.field public activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->instance:Lcom/pubinfo/wifi_core/core/util/ActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/pubinfo/wifi_core/core/util/ActivityManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->instance:Lcom/pubinfo/wifi_core/core/util/ActivityManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;

    invoke-direct {v0}, Lcom/pubinfo/wifi_core/core/util/ActivityManager;-><init>()V

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->instance:Lcom/pubinfo/wifi_core/core/util/ActivityManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->instance:Lcom/pubinfo/wifi_core/core/util/ActivityManager;

    return-object v0
.end method


# virtual methods
.method public currentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 31
    .local v0, "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public popActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 55
    return-void
.end method

.method public popAllActivity()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 67
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 64
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->popActivity(Landroid/app/Activity;)V

    .line 63
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public popAllActivityExceptOne(Landroid/app/Activity;)V
    .locals 2
    .param p1, "screenActivity"    # Landroid/app/Activity;

    .prologue
    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->popActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public popCurrentActivity()V
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 37
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 42
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public popForwardActivity(Lcom/pubinfo/wifi_core/core/util/IPopForwardActivity;)Z
    .locals 1
    .param p1, "iPopForwardActivity"    # Lcom/pubinfo/wifi_core/core/util/IPopForwardActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-interface {p1, v0}, Lcom/pubinfo/wifi_core/core/util/IPopForwardActivity;->popForwardActivity(Ljava/util/Stack;)Z

    move-result v0

    return v0
.end method

.method public pushActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/util/ActivityManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
