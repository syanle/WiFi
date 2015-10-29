.class Lcom/umeng/socom/net/f;
.super Landroid/content/BroadcastReceiver;
.source "DownloadingService.java"


# instance fields
.field final synthetic a:Lcom/umeng/socom/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/socom/net/DownloadingService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socom/net/f;->a:Lcom/umeng/socom/net/DownloadingService;

    .line 412
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/umeng/socom/net/f;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0, p1, p2}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z

    .line 418
    return-void
.end method
