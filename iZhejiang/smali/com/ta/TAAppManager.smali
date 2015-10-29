.class public Lcom/ta/TAAppManager;
.super Ljava/lang/Object;
.source "TAAppManager.java"


# static fields
.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/ta/TAAppManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getAppManager()Lcom/ta/TAAppManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/ta/TAAppManager;->instance:Lcom/ta/TAAppManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/ta/TAAppManager;

    invoke-direct {v0}, Lcom/ta/TAAppManager;-><init>()V

    sput-object v0, Lcom/ta/TAAppManager;->instance:Lcom/ta/TAAppManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/ta/TAAppManager;->instance:Lcom/ta/TAAppManager;

    return-object v0
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBackground"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/ta/TAAppManager;->finishAllActivity()V

    .line 144
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    check-cast v0, Landroid/app/ActivityManager;

    .line 145
    .local v0, "activityMgr":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 157
    .end local v0    # "activityMgr":Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v1

    .line 152
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    .line 152
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 156
    :cond_1
    throw v1
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    sget-object v0, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    .line 55
    :cond_0
    sget-object v0, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 64
    .local v0, "activity":Landroid/app/Activity;
    return-object v0
.end method

.method public finishActivity()V
    .locals 2

    .prologue
    .line 72
    sget-object v1, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 73
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/ta/TAAppManager;->finishActivity(Landroid/app/Activity;)V

    .line 74
    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 83
    sget-object v0, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 85
    const/4 p1, 0x0

    .line 87
    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    return-void

    .line 106
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 108
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/ta/TAAppManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public finishAllActivity()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 127
    sget-object v2, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 128
    return-void

    .line 122
    :cond_0
    sget-object v2, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    sget-object v2, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 96
    sget-object v0, Lcom/ta/TAAppManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 97
    const/4 p1, 0x0

    .line 99
    :cond_0
    return-void
.end method
