.class public Lcom/ta/util/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/util/download/DownloadService$DownloadServiceImpl;
    }
.end annotation


# instance fields
.field private mDownloadManager:Lcom/ta/util/download/DownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ta/util/download/DownloadService;)Lcom/ta/util/download/DownloadManager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    new-instance v0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;-><init>(Lcom/ta/util/download/DownloadService;Lcom/ta/util/download/DownloadService$DownloadServiceImpl;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 43
    invoke-static {}, Lcom/ta/util/download/DownloadManager;->getDownloadManager()Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;

    .line 44
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 51
    return-void
.end method
