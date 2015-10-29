.class public Lcom/pubinfo/izhejiang/update/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# instance fields
.field private isFirstStart:Z

.field private mHandler:Landroid/os/Handler;

.field private notificationMrg:Landroid/app/NotificationManager;

.field private old_process:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->old_process:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->isFirstStart:Z

    .line 32
    new-instance v0, Lcom/pubinfo/izhejiang/update/DownloadService$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/update/DownloadService$1;-><init>(Lcom/pubinfo/izhejiang/update/DownloadService;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->mHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/update/DownloadService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->notificationMrg:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/update/DownloadService;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->old_process:I

    return v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/update/DownloadService;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/update/DownloadService;->displayNotificationMessage(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/update/DownloadService;Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->isFirstStart:Z

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/update/DownloadService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/update/DownloadService;I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->old_process:I

    return-void
.end method

.method private displayNotificationMessage(I)V
    .locals 9
    .param p1, "count"    # I

    .prologue
    const/4 v8, 0x0

    .line 64
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v3, "notificationIntent1":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 71
    .local v0, "contentIntent1":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    const v4, 0x7f02006e

    .line 72
    const-string v5, "\u6b63\u5728\u4e0b\u8f7d..."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 71
    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 73
    .local v2, "notification":Landroid/app/Notification;
    iget-boolean v4, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->isFirstStart:Z

    if-nez v4, :cond_0

    sget v4, Lcom/iwifi/sdk/chinanet/WelcomePage;->loading_process:I

    const/16 v5, 0x61

    if-le v4, v5, :cond_1

    .line 74
    :cond_0
    iget v4, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 75
    iget v4, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 77
    :cond_1
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 81
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/update/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 82
    const v5, 0x7f030023

    .line 81
    invoke-direct {v1, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 83
    .local v1, "contentView":Landroid/widget/RemoteViews;
    const v4, 0x7f0a00b4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5f53\u524d\u8fdb\u5ea6\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    const-string v6, "% "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 85
    const v4, 0x7f0a00b5

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, p1, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 88
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 89
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 91
    iget-object v4, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->notificationMrg:Landroid/app/NotificationManager;

    invoke-virtual {v4, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->isFirstStart:Z

    .line 26
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/update/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 25
    iput-object v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->notificationMrg:Landroid/app/NotificationManager;

    .line 28
    iget-object v0, p0, Lcom/pubinfo/izhejiang/update/DownloadService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    return-void
.end method
