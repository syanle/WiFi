.class Lcom/umeng/socom/net/a$b;
.super Landroid/os/Handler;
.source "DownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socom/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socom/net/a;


# direct methods
.method constructor <init>(Lcom/umeng/socom/net/a;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/umeng/socom/net/a$b;->a:Lcom/umeng/socom/net/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/umeng/socom/net/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadAgent.handleMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socom/net/a$b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v0}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;)Lcom/umeng/socom/net/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/umeng/socom/net/a$b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v0}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;)Lcom/umeng/socom/net/k;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/umeng/socom/net/k;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    invoke-static {}, Lcom/umeng/socom/net/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DownloadAgent.handleMessage("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 106
    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v1, v0}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socom/net/a$b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v0}, Lcom/umeng/socom/net/a;->h(Lcom/umeng/socom/net/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socom/net/a$b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v1}, Lcom/umeng/socom/net/a;->i(Lcom/umeng/socom/net/a;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 83
    iget-object v0, p0, Lcom/umeng/socom/net/a$b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v0}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;)Lcom/umeng/socom/net/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/umeng/socom/net/a$b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v0}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;)Lcom/umeng/socom/net/k;

    move-result-object v0

    .line 86
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 90
    const-string v3, "filename"

    .line 89
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-interface {v0, v1, v2}, Lcom/umeng/socom/net/k;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/umeng/socom/net/a$b;->a:Lcom/umeng/socom/net/a;

    invoke-static {v0}, Lcom/umeng/socom/net/a;->a(Lcom/umeng/socom/net/a;)Lcom/umeng/socom/net/k;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    .line 95
    const/4 v2, 0x0

    .line 93
    invoke-interface {v0, v1, v2}, Lcom/umeng/socom/net/k;->a(ILjava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/umeng/socom/net/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): "

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
