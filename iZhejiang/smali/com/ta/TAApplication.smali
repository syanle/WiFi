.class public Lcom/ta/TAApplication;
.super Landroid/app/Application;
.source "TAApplication.java"

# interfaces
.implements Lcom/ta/mvc/common/TAIResponseListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection:[I = null

.field public static final PREFERENCECONFIG:I = 0x0

.field public static final PROPERTIESCONFIG:I = 0x1

.field private static final SYSTEMCACHE:Ljava/lang/String; = "thinkandroid"

.field private static final TAIDENTITYCOMMAND:Ljava/lang/String; = "TAIdentityCommand"

.field private static application:Lcom/ta/TAApplication;


# instance fields
.field private activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/ta/mvc/controller/ActivityStackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentActivity:Lcom/ta/TAActivity;

.field private currentNavigationDirection:Lcom/ta/mvc/controller/NavigationDirection;

.field private handler:Landroid/os/Handler;

.field private mAppManager:Lcom/ta/TAAppManager;

.field private mCommandExecutor:Lcom/ta/mvc/command/TACommandExecutor;

.field private mCurrentConfig:Lcom/ta/util/config/TAIConfig;

.field private mFileCache:Lcom/ta/util/cache/TAFileCache;

.field private mInjector:Lcom/ta/util/TAInjector;

.field private mLayoutLoader:Lcom/ta/util/layoutloader/TAILayoutLoader;

.field private mSQLiteDatabasePool:Lcom/ta/util/db/TASQLiteDatabasePool;

.field private networkAvailable:Ljava/lang/Boolean;

.field private final registeredActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/TAActivity;",
            ">;>;"
        }
    .end annotation
.end field

.field private taNetChangeObserver:Lcom/ta/util/netstate/TANetChangeObserver;

.field private uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/ta/TAApplication;->$SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ta/mvc/controller/NavigationDirection;->values()[Lcom/ta/mvc/controller/NavigationDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ta/mvc/controller/NavigationDirection;->Backward:Lcom/ta/mvc/controller/NavigationDirection;

    invoke-virtual {v1}, Lcom/ta/mvc/controller/NavigationDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ta/mvc/controller/NavigationDirection;->Forward:Lcom/ta/mvc/controller/NavigationDirection;

    invoke-virtual {v1}, Lcom/ta/mvc/controller/NavigationDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/ta/TAApplication;->$SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/TAApplication;->registeredActivities:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->networkAvailable:Ljava/lang/Boolean;

    .line 508
    new-instance v0, Lcom/ta/TAApplication$1;

    invoke-direct {v0, p0}, Lcom/ta/TAApplication$1;-><init>(Lcom/ta/TAApplication;)V

    iput-object v0, p0, Lcom/ta/TAApplication;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/ta/TAApplication;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/ta/TAApplication;->processResponse(Landroid/os/Message;)V

    return-void
.end method

.method private doOncreate()V
    .locals 2

    .prologue
    .line 96
    sput-object p0, Lcom/ta/TAApplication;->application:Lcom/ta/TAApplication;

    .line 98
    invoke-direct {p0}, Lcom/ta/TAApplication;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 99
    invoke-static {}, Lcom/ta/mvc/command/TACommandExecutor;->getInstance()Lcom/ta/mvc/command/TACommandExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->mCommandExecutor:Lcom/ta/mvc/command/TACommandExecutor;

    .line 100
    new-instance v0, Lcom/ta/TAApplication$2;

    invoke-direct {v0, p0}, Lcom/ta/TAApplication$2;-><init>(Lcom/ta/TAApplication;)V

    iput-object v0, p0, Lcom/ta/TAApplication;->taNetChangeObserver:Lcom/ta/util/netstate/TANetChangeObserver;

    .line 119
    iget-object v0, p0, Lcom/ta/TAApplication;->taNetChangeObserver:Lcom/ta/util/netstate/TANetChangeObserver;

    invoke-static {v0}, Lcom/ta/util/netstate/TANetworkStateReceiver;->registerObserver(Lcom/ta/util/netstate/TANetChangeObserver;)V

    .line 121
    const-string v0, "TAIdentityCommand"

    const-class v1, Lcom/ta/mvc/command/TAIdentityCommand;

    invoke-virtual {p0, v0, v1}, Lcom/ta/TAApplication;->registerCommand(Ljava/lang/String;Ljava/lang/Class;)V

    .line 122
    return-void
.end method

.method public static getApplication()Lcom/ta/TAApplication;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/ta/TAApplication;->application:Lcom/ta/TAApplication;

    return-object v0
.end method

.method private getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/ta/TAApplication;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 239
    invoke-static {p0}, Lcom/ta/exception/TAAppException;->getInstance(Landroid/content/Context;)Lcom/ta/exception/TAAppException;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/ta/TAApplication;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private handleResponse(Lcom/ta/mvc/common/TAResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/ta/mvc/common/TAResponse;

    .prologue
    .line 518
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 519
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 520
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    iget-object v1, p0, Lcom/ta/TAApplication;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    return-void
.end method

.method private processResponse(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 375
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/ta/mvc/common/TAResponse;

    .line 376
    .local v4, "response":Lcom/ta/mvc/common/TAResponse;
    iget-object v9, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ta/mvc/controller/ActivityStackInfo;

    .line 377
    .local v8, "top":Lcom/ta/mvc/controller/ActivityStackInfo;
    invoke-virtual {v8, v4}, Lcom/ta/mvc/controller/ActivityStackInfo;->setResponse(Lcom/ta/mvc/common/TAResponse;)V

    .line 378
    if-eqz v4, :cond_3

    .line 380
    invoke-virtual {v4}, Lcom/ta/mvc/common/TAResponse;->getActivityKeyResID()I

    move-result v7

    .line 381
    .local v7, "targetActivityKeyResID":I
    const-string v6, ""

    .line 382
    .local v6, "targetActivityKey":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 384
    invoke-virtual {p0, v7}, Lcom/ta/TAApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 386
    :cond_0
    if-eqz v6, :cond_1

    .line 387
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 389
    invoke-virtual {v4}, Lcom/ta/mvc/common/TAResponse;->getActivityKey()Ljava/lang/String;

    move-result-object v6

    .line 391
    :cond_1
    invoke-virtual {v4}, Lcom/ta/mvc/common/TAResponse;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 392
    .local v3, "newTag":[Ljava/lang/Object;
    const/4 v9, 0x0

    aget-object v5, v3, v9

    .line 393
    .local v5, "tag":Ljava/lang/Object;
    invoke-virtual {v4, v5}, Lcom/ta/mvc/common/TAResponse;->setTag(Ljava/lang/Object;)V

    .line 394
    iget-object v9, p0, Lcom/ta/TAApplication;->registeredActivities:Ljava/util/HashMap;

    .line 395
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 397
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/TAActivity;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Launching new activity // else, current Direction: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    iget-object v10, p0, Lcom/ta/TAApplication;->currentNavigationDirection:Lcom/ta/mvc/controller/NavigationDirection;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 397
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 396
    invoke-static {p0, v9}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iget-object v9, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->size()I

    move-result v0

    .line 402
    .local v0, "asize":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Current Stack Size (before processing): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 401
    invoke-static {p0, v9}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/ta/TAApplication;->$SWITCH_TABLE$com$ta$mvc$controller$NavigationDirection()[I

    move-result-object v9

    iget-object v10, p0, Lcom/ta/TAApplication;->currentNavigationDirection:Lcom/ta/mvc/controller/NavigationDirection;

    invoke-virtual {v10}, Lcom/ta/mvc/controller/NavigationDirection;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 424
    :cond_2
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Current Stack Size (after processing): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object v10, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 424
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 422
    invoke-static {p0, v9}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    if-eqz v1, :cond_3

    .line 429
    new-instance v2, Landroid/content/Intent;

    iget-object v9, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    invoke-direct {v2, v9, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .local v2, "launcherIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    invoke-virtual {v9, v2}, Lcom/ta/TAActivity;->startActivity(Landroid/content/Intent;)V

    .line 431
    iget-object v9, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    invoke-virtual {v9}, Lcom/ta/TAActivity;->finish()V

    .line 432
    invoke-virtual {v8, v1}, Lcom/ta/mvc/controller/ActivityStackInfo;->setActivityClass(Ljava/lang/Class;)V

    .line 437
    .end local v0    # "asize":I
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/TAActivity;>;"
    .end local v2    # "launcherIntent":Landroid/content/Intent;
    .end local v3    # "newTag":[Ljava/lang/Object;
    .end local v5    # "tag":Ljava/lang/Object;
    .end local v6    # "targetActivityKey":Ljava/lang/String;
    .end local v7    # "targetActivityKeyResID":I
    :cond_3
    return-void

    .line 407
    .restart local v0    # "asize":I
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/TAActivity;>;"
    .restart local v3    # "newTag":[Ljava/lang/Object;
    .restart local v5    # "tag":Ljava/lang/Object;
    .restart local v6    # "targetActivityKey":Ljava/lang/String;
    .restart local v7    # "targetActivityKeyResID":I
    :pswitch_0
    const/4 v9, 0x2

    if-lt v0, v9, :cond_2

    .line 409
    invoke-virtual {v8}, Lcom/ta/mvc/controller/ActivityStackInfo;->isRecord()Z

    move-result v9

    if-nez v9, :cond_2

    .line 411
    iget-object v9, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 419
    :pswitch_1
    sget-object v9, Lcom/ta/mvc/controller/NavigationDirection;->Forward:Lcom/ta/mvc/controller/NavigationDirection;

    iput-object v9, p0, Lcom/ta/TAApplication;->currentNavigationDirection:Lcom/ta/mvc/controller/NavigationDirection;

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public back()V
    .locals 5

    .prologue
    .line 350
    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActivityStack Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {p0, v2}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 356
    iget-object v2, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 359
    :cond_0
    sget-object v2, Lcom/ta/mvc/controller/NavigationDirection;->Backward:Lcom/ta/mvc/controller/NavigationDirection;

    iput-object v2, p0, Lcom/ta/TAApplication;->currentNavigationDirection:Lcom/ta/mvc/controller/NavigationDirection;

    .line 360
    iget-object v2, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/mvc/controller/ActivityStackInfo;

    .line 363
    .local v1, "info":Lcom/ta/mvc/controller/ActivityStackInfo;
    :try_start_0
    invoke-static {}, Lcom/ta/mvc/command/TACommandExecutor;->getInstance()Lcom/ta/mvc/command/TACommandExecutor;

    move-result-object v2

    .line 364
    invoke-virtual {v1}, Lcom/ta/mvc/controller/ActivityStackInfo;->getCommandKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ta/mvc/controller/ActivityStackInfo;->getRequest()Lcom/ta/mvc/common/TARequest;

    move-result-object v4

    .line 363
    invoke-virtual {v2, v3, v4, p0}, Lcom/ta/mvc/command/TACommandExecutor;->enqueueCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V
    :try_end_0
    .catch Lcom/ta/exception/TANoSuchCommandException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v1    # "info":Lcom/ta/mvc/controller/ActivityStackInfo;
    :cond_1
    :goto_0
    return-void

    .line 365
    .restart local v1    # "info":Lcom/ta/mvc/controller/ActivityStackInfo;
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Lcom/ta/exception/TANoSuchCommandException;
    invoke-virtual {v0}, Lcom/ta/exception/TANoSuchCommandException;->printStackTrace()V

    goto :goto_0
.end method

.method public doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZ)V
    .locals 5
    .param p1, "commandKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .param p4, "record"    # Z
    .param p5, "resetStack"    # Z

    .prologue
    .line 300
    if-eqz p3, :cond_0

    .line 304
    :try_start_0
    invoke-static {}, Lcom/ta/mvc/command/TACommandExecutor;->getInstance()Lcom/ta/mvc/command/TACommandExecutor;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/ta/mvc/command/TACommandExecutor;->enqueueCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V
    :try_end_0
    .catch Lcom/ta/exception/TANoSuchCommandException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Lcom/ta/exception/TANoSuchCommandException;
    invoke-virtual {v0}, Lcom/ta/exception/TANoSuchCommandException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v0    # "e":Lcom/ta/exception/TANoSuchCommandException;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "go with cmdid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 315
    const-string v4, ", record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    const-string v4, ", request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    if-eqz p5, :cond_1

    .line 319
    iget-object v3, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->clear()V

    .line 322
    :cond_1
    sget-object v3, Lcom/ta/mvc/controller/NavigationDirection;->Forward:Lcom/ta/mvc/controller/NavigationDirection;

    iput-object v3, p0, Lcom/ta/TAApplication;->currentNavigationDirection:Lcom/ta/mvc/controller/NavigationDirection;

    .line 324
    new-instance v1, Lcom/ta/mvc/controller/ActivityStackInfo;

    invoke-direct {v1, p1, p2, p4, p5}, Lcom/ta/mvc/controller/ActivityStackInfo;-><init>(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;ZZ)V

    .line 326
    .local v1, "info":Lcom/ta/mvc/controller/ActivityStackInfo;
    iget-object v3, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 329
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/ta/mvc/common/TARequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 330
    .local v2, "newTag":[Ljava/lang/Object;
    invoke-virtual {p2, v2}, Lcom/ta/mvc/common/TARequest;->setTag(Ljava/lang/Object;)V

    .line 332
    const-string v3, "Enqueue-ing command"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    :try_start_1
    invoke-static {}, Lcom/ta/mvc/command/TACommandExecutor;->getInstance()Lcom/ta/mvc/command/TACommandExecutor;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p0}, Lcom/ta/mvc/command/TACommandExecutor;->enqueueCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V
    :try_end_1
    .catch Lcom/ta/exception/TANoSuchCommandException; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :goto_1
    const-string v3, "Enqueued command"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    .line 340
    .restart local v0    # "e":Lcom/ta/exception/TANoSuchCommandException;
    invoke-virtual {v0}, Lcom/ta/exception/TANoSuchCommandException;->printStackTrace()V

    goto :goto_1
.end method

.method public exitApp(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isBackground"    # Ljava/lang/Boolean;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/ta/TAApplication;->mAppManager:Lcom/ta/TAAppManager;

    invoke-virtual {v0, p0, p1}, Lcom/ta/TAAppManager;->AppExit(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 585
    return-void
.end method

.method public getAppManager()Lcom/ta/TAAppManager;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/ta/TAApplication;->mAppManager:Lcom/ta/TAAppManager;

    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Lcom/ta/TAAppManager;->getAppManager()Lcom/ta/TAAppManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->mAppManager:Lcom/ta/TAAppManager;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/ta/TAApplication;->mAppManager:Lcom/ta/TAAppManager;

    return-object v0
.end method

.method public getConfig(I)Lcom/ta/util/config/TAIConfig;
    .locals 1
    .param p1, "confingType"    # I

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 185
    invoke-static {p0}, Lcom/ta/util/config/TAPreferenceConfig;->getPreferenceConfig(Landroid/content/Context;)Lcom/ta/util/config/TAIConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->mCurrentConfig:Lcom/ta/util/config/TAIConfig;

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/ta/TAApplication;->mCurrentConfig:Lcom/ta/util/config/TAIConfig;

    invoke-interface {v0}, Lcom/ta/util/config/TAIConfig;->isLoadConfig()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/ta/TAApplication;->mCurrentConfig:Lcom/ta/util/config/TAIConfig;

    invoke-interface {v0}, Lcom/ta/util/config/TAIConfig;->loadConfig()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/ta/TAApplication;->mCurrentConfig:Lcom/ta/util/config/TAIConfig;

    return-object v0

    .line 187
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 189
    invoke-static {p0}, Lcom/ta/util/config/TAPropertiesConfig;->getPropertiesConfig(Landroid/content/Context;)Lcom/ta/util/config/TAPropertiesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->mCurrentConfig:Lcom/ta/util/config/TAIConfig;

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {p0}, Lcom/ta/util/config/TAPropertiesConfig;->getPropertiesConfig(Landroid/content/Context;)Lcom/ta/util/config/TAPropertiesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->mCurrentConfig:Lcom/ta/util/config/TAIConfig;

    goto :goto_0
.end method

.method public getCurrentConfig()Lcom/ta/util/config/TAIConfig;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ta/TAApplication;->mCurrentConfig:Lcom/ta/util/config/TAIConfig;

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/ta/TAApplication;->getPreferenceConfig()Lcom/ta/util/config/TAIConfig;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/ta/TAApplication;->mCurrentConfig:Lcom/ta/util/config/TAIConfig;

    return-object v0
.end method

.method public getFileCache()Lcom/ta/util/cache/TAFileCache;
    .locals 3

    .prologue
    .line 493
    iget-object v2, p0, Lcom/ta/TAApplication;->mFileCache:Lcom/ta/util/cache/TAFileCache;

    if-nez v2, :cond_0

    .line 495
    new-instance v0, Lcom/ta/util/cache/TAFileCache$TACacheParams;

    const-string v2, "thinkandroid"

    invoke-direct {v0, p0, v2}, Lcom/ta/util/cache/TAFileCache$TACacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    .local v0, "cacheParams":Lcom/ta/util/cache/TAFileCache$TACacheParams;
    new-instance v1, Lcom/ta/util/cache/TAFileCache;

    invoke-direct {v1, v0}, Lcom/ta/util/cache/TAFileCache;-><init>(Lcom/ta/util/cache/TAFileCache$TACacheParams;)V

    .line 497
    .local v1, "fileCache":Lcom/ta/util/cache/TAFileCache;
    sget-object v2, Lcom/ta/TAApplication;->application:Lcom/ta/TAApplication;

    invoke-virtual {v2, v1}, Lcom/ta/TAApplication;->setFileCache(Lcom/ta/util/cache/TAFileCache;)V

    .line 500
    .end local v0    # "cacheParams":Lcom/ta/util/cache/TAFileCache$TACacheParams;
    .end local v1    # "fileCache":Lcom/ta/util/cache/TAFileCache;
    :cond_0
    iget-object v2, p0, Lcom/ta/TAApplication;->mFileCache:Lcom/ta/util/cache/TAFileCache;

    return-object v2
.end method

.method public getInjector()Lcom/ta/util/TAInjector;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ta/TAApplication;->mInjector:Lcom/ta/util/TAInjector;

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/ta/util/TAInjector;->getInstance()Lcom/ta/util/TAInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->mInjector:Lcom/ta/util/TAInjector;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/ta/TAApplication;->mInjector:Lcom/ta/util/TAInjector;

    return-object v0
.end method

.method public getLayoutLoader()Lcom/ta/util/layoutloader/TAILayoutLoader;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ta/TAApplication;->mLayoutLoader:Lcom/ta/util/layoutloader/TAILayoutLoader;

    if-nez v0, :cond_0

    .line 214
    invoke-static {p0}, Lcom/ta/util/layoutloader/TALayoutLoader;->getInstance(Landroid/content/Context;)Lcom/ta/util/layoutloader/TALayoutLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->mLayoutLoader:Lcom/ta/util/layoutloader/TAILayoutLoader;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/ta/TAApplication;->mLayoutLoader:Lcom/ta/util/layoutloader/TAILayoutLoader;

    return-object v0
.end method

.method public getPreferenceConfig()Lcom/ta/util/config/TAIConfig;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ta/TAApplication;->getConfig(I)Lcom/ta/util/config/TAIConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesConfig()Lcom/ta/util/config/TAIConfig;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ta/TAApplication;->getConfig(I)Lcom/ta/util/config/TAIConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSQLiteDatabasePool()Lcom/ta/util/db/TASQLiteDatabasePool;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/ta/TAApplication;->mSQLiteDatabasePool:Lcom/ta/util/db/TASQLiteDatabasePool;

    if-nez v0, :cond_0

    .line 556
    invoke-static {p0}, Lcom/ta/util/db/TASQLiteDatabasePool;->getInstance(Landroid/content/Context;)Lcom/ta/util/db/TASQLiteDatabasePool;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->mSQLiteDatabasePool:Lcom/ta/util/db/TASQLiteDatabasePool;

    .line 557
    iget-object v0, p0, Lcom/ta/TAApplication;->mSQLiteDatabasePool:Lcom/ta/util/db/TASQLiteDatabasePool;

    invoke-virtual {v0}, Lcom/ta/util/db/TASQLiteDatabasePool;->createPool()V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/ta/TAApplication;->mSQLiteDatabasePool:Lcom/ta/util/db/TASQLiteDatabasePool;

    return-object v0
.end method

.method public isNetworkAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/ta/TAApplication;->networkAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityCreated(Lcom/ta/TAActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/ta/TAActivity;

    .prologue
    .line 273
    iget-object v3, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    invoke-virtual {v3}, Lcom/ta/TAActivity;->finish()V

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    .line 279
    iget-object v3, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 283
    iget-object v3, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/mvc/controller/ActivityStackInfo;

    .line 284
    .local v0, "info":Lcom/ta/mvc/controller/ActivityStackInfo;
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v0}, Lcom/ta/mvc/controller/ActivityStackInfo;->getResponse()Lcom/ta/mvc/common/TAResponse;

    move-result-object v1

    .line 287
    .local v1, "response":Lcom/ta/mvc/common/TAResponse;
    invoke-virtual {p1, v1}, Lcom/ta/TAActivity;->processData(Lcom/ta/mvc/common/TAResponse;)V

    .line 289
    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/ta/mvc/controller/ActivityStackInfo;->isRecord()Z

    move-result v3

    if-nez v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 295
    .end local v0    # "info":Lcom/ta/mvc/controller/ActivityStackInfo;
    .end local v1    # "response":Lcom/ta/mvc/common/TAResponse;
    :cond_1
    return-void
.end method

.method public onActivityCreating(Lcom/ta/TAActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/ta/TAActivity;

    .prologue
    .line 260
    iget-object v2, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/ta/TAApplication;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ta/mvc/controller/ActivityStackInfo;

    .line 263
    .local v0, "info":Lcom/ta/mvc/controller/ActivityStackInfo;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/ta/mvc/controller/ActivityStackInfo;->getResponse()Lcom/ta/mvc/common/TAResponse;

    move-result-object v1

    .line 266
    .local v1, "response":Lcom/ta/mvc/common/TAResponse;
    invoke-virtual {p1, v1}, Lcom/ta/TAActivity;->preProcessData(Lcom/ta/mvc/common/TAResponse;)V

    .line 269
    .end local v0    # "info":Lcom/ta/mvc/controller/ActivityStackInfo;
    .end local v1    # "response":Lcom/ta/mvc/common/TAResponse;
    :cond_0
    return-void
.end method

.method protected onAfterCreateApplication()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected onConnect(Lcom/ta/util/netstate/TANetWorkUtil$netType;)V
    .locals 1
    .param p1, "type"    # Lcom/ta/util/netstate/TANetWorkUtil$netType;

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->networkAvailable:Ljava/lang/Boolean;

    .line 143
    iget-object v0, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    invoke-virtual {v0, p1}, Lcom/ta/TAActivity;->onConnect(Lcom/ta/util/netstate/TANetWorkUtil$netType;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/ta/TAApplication;->onPreCreateApplication()V

    .line 87
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 88
    invoke-direct {p0}, Lcom/ta/TAApplication;->doOncreate()V

    .line 89
    invoke-virtual {p0}, Lcom/ta/TAApplication;->onAfterCreateApplication()V

    .line 90
    invoke-virtual {p0}, Lcom/ta/TAApplication;->getAppManager()Lcom/ta/TAAppManager;

    .line 91
    return-void
.end method

.method public onDisConnect()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/TAApplication;->networkAvailable:Ljava/lang/Boolean;

    .line 130
    iget-object v0, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/ta/TAApplication;->currentActivity:Lcom/ta/TAActivity;

    invoke-virtual {v0}, Lcom/ta/TAActivity;->onDisConnect()V

    .line 134
    :cond_0
    return-void
.end method

.method public onFailure(Lcom/ta/mvc/common/TAResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/ta/mvc/common/TAResponse;

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/ta/TAApplication;->handleResponse(Lcom/ta/mvc/common/TAResponse;)V

    .line 550
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method protected onPreCreateApplication()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onRuning(Lcom/ta/mvc/common/TAResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/ta/mvc/common/TAResponse;

    .prologue
    .line 543
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public onSuccess(Lcom/ta/mvc/common/TAResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/ta/mvc/common/TAResponse;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/ta/TAApplication;->handleResponse(Lcom/ta/mvc/common/TAResponse;)V

    .line 536
    return-void
.end method

.method public registerActivity(ILjava/lang/Class;)V
    .locals 2
    .param p1, "resID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/TAActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/TAActivity;>;"
    invoke-virtual {p0, p1}, Lcom/ta/TAApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "activityKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/ta/TAApplication;->registeredActivities:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method public registerActivity(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "activityKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/TAActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/TAActivity;>;"
    iget-object v0, p0, Lcom/ta/TAApplication;->registeredActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    return-void
.end method

.method public registerCommand(ILjava/lang/Class;)V
    .locals 1
    .param p1, "resID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/mvc/command/TAICommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p2, "command":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/mvc/command/TAICommand;>;"
    invoke-virtual {p0, p1}, Lcom/ta/TAApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "commandKey":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/ta/TAApplication;->registerCommand(Ljava/lang/String;Ljava/lang/Class;)V

    .line 468
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
    .line 473
    .local p2, "command":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/mvc/command/TAICommand;>;"
    if-eqz p2, :cond_0

    .line 475
    iget-object v0, p0, Lcom/ta/TAApplication;->mCommandExecutor:Lcom/ta/mvc/command/TACommandExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/ta/mvc/command/TACommandExecutor;->registerCommand(Ljava/lang/String;Ljava/lang/Class;)V

    .line 477
    :cond_0
    return-void
.end method

.method public setFileCache(Lcom/ta/util/cache/TAFileCache;)V
    .locals 0
    .param p1, "fileCache"    # Lcom/ta/util/cache/TAFileCache;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/ta/TAApplication;->mFileCache:Lcom/ta/util/cache/TAFileCache;

    .line 506
    return-void
.end method

.method public setInjector(Lcom/ta/util/TAInjector;)V
    .locals 0
    .param p1, "injector"    # Lcom/ta/util/TAInjector;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/ta/TAApplication;->mInjector:Lcom/ta/util/TAInjector;

    .line 256
    return-void
.end method

.method public setLayoutLoader(Lcom/ta/util/layoutloader/TAILayoutLoader;)V
    .locals 0
    .param p1, "layoutLoader"    # Lcom/ta/util/layoutloader/TAILayoutLoader;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/ta/TAApplication;->mLayoutLoader:Lcom/ta/util/layoutloader/TAILayoutLoader;

    .line 222
    return-void
.end method

.method public setSQLiteDatabasePool(Lcom/ta/util/db/TASQLiteDatabasePool;)V
    .locals 0
    .param p1, "sqliteDatabasePool"    # Lcom/ta/util/db/TASQLiteDatabasePool;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/ta/TAApplication;->mSQLiteDatabasePool:Lcom/ta/util/db/TASQLiteDatabasePool;

    .line 565
    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "uncaughtExceptionHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/ta/TAApplication;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 233
    return-void
.end method

.method public unregisterActivity(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lcom/ta/TAApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "activityKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ta/TAApplication;->unregisterActivity(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public unregisterActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityKey"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ta/TAApplication;->registeredActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    return-void
.end method

.method public unregisterCommand(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/ta/TAApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "commandKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ta/TAApplication;->unregisterCommand(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public unregisterCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "commandKey"    # Ljava/lang/String;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/ta/TAApplication;->mCommandExecutor:Lcom/ta/mvc/command/TACommandExecutor;

    invoke-virtual {v0, p1}, Lcom/ta/mvc/command/TACommandExecutor;->unregisterCommand(Ljava/lang/String;)V

    .line 489
    return-void
.end method
