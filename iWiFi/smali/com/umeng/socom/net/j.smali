.class Lcom/umeng/socom/net/j;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socom/net/DownloadingService$b;


# direct methods
.method constructor <init>(Lcom/umeng/socom/net/DownloadingService$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socom/net/j;->a:Lcom/umeng/socom/net/DownloadingService$b;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/umeng/socom/net/j;->a:Lcom/umeng/socom/net/DownloadingService$b;

    invoke-static {v0}, Lcom/umeng/socom/net/DownloadingService$b;->b(Lcom/umeng/socom/net/DownloadingService$b;)Lcom/umeng/socom/net/DownloadingService;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/umeng/socom/net/j;->a:Lcom/umeng/socom/net/DownloadingService$b;

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService$b;->a(Lcom/umeng/socom/net/DownloadingService$b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socom/a/c;->h(Landroid/content/Context;)I

    move-result v1

    .line 725
    const/4 v2, 0x0

    .line 723
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 726
    return-void
.end method
