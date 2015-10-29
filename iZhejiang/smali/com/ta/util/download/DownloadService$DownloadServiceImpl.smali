.class Lcom/ta/util/download/DownloadService$DownloadServiceImpl;
.super Lcom/ta/util/download/IDownloadService$Stub;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/util/download/DownloadService;


# direct methods
.method private constructor <init>(Lcom/ta/util/download/DownloadService;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;->this$0:Lcom/ta/util/download/DownloadService;

    invoke-direct {p0}, Lcom/ta/util/download/IDownloadService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ta/util/download/DownloadService;Lcom/ta/util/download/DownloadService$DownloadServiceImpl;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;-><init>(Lcom/ta/util/download/DownloadService;)V

    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;->this$0:Lcom/ta/util/download/DownloadService;

    # getter for: Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/ta/util/download/DownloadService;->access$0(Lcom/ta/util/download/DownloadService;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/util/download/DownloadManager;->addHandler(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public continueTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p1}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;->this$0:Lcom/ta/util/download/DownloadService;

    # getter for: Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/ta/util/download/DownloadService;->access$0(Lcom/ta/util/download/DownloadService;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/util/download/DownloadManager;->continueHandler(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public deleteTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;->this$0:Lcom/ta/util/download/DownloadService;

    # getter for: Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/ta/util/download/DownloadService;->access$0(Lcom/ta/util/download/DownloadService;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/util/download/DownloadManager;->deleteHandler(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public pauseAll(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;->this$0:Lcom/ta/util/download/DownloadService;

    # getter for: Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/ta/util/download/DownloadService;->access$0(Lcom/ta/util/download/DownloadService;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/util/download/DownloadManager;->pauseAllHandler()V

    .line 108
    :cond_0
    return-void
.end method

.method public pauseTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;->this$0:Lcom/ta/util/download/DownloadService;

    # getter for: Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/ta/util/download/DownloadService;->access$0(Lcom/ta/util/download/DownloadService;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/util/download/DownloadManager;->pauseHandler(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public startManage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;->this$0:Lcom/ta/util/download/DownloadService;

    # getter for: Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/ta/util/download/DownloadService;->access$0(Lcom/ta/util/download/DownloadService;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/util/download/DownloadManager;->startManage()V

    .line 61
    return-void
.end method

.method public stopManage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ta/util/download/DownloadService$DownloadServiceImpl;->this$0:Lcom/ta/util/download/DownloadService;

    # getter for: Lcom/ta/util/download/DownloadService;->mDownloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/ta/util/download/DownloadService;->access$0(Lcom/ta/util/download/DownloadService;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/util/download/DownloadManager;->close()V

    .line 115
    return-void
.end method
