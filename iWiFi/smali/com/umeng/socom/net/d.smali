.class Lcom/umeng/socom/net/d;
.super Landroid/os/Handler;
.source "DownloadingService.java"


# instance fields
.field final synthetic a:Lcom/umeng/socom/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/socom/net/DownloadingService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    .line 232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/socom/net/a$a;

    .line 233
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 235
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "filename"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Cancel old notification...."

    invoke-static {v1, v4}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v4, Landroid/app/Notification;

    .line 240
    const v1, 0x1080082

    .line 241
    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8bf7\u70b9\u51fb\u5b89\u88c5"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 239
    invoke-direct {v4, v1, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 242
    new-instance v5, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    const/high16 v1, 0x10000000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 245
    const-string v6, "application/vnd.android.package-archive"

    .line 244
    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    .line 247
    const/high16 v7, 0x8000000

    .line 246
    invoke-static {v1, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 249
    iget-object v6, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v6}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    .line 250
    const-string v8, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8bf7\u70b9\u51fb\u5b89\u88c5"

    .line 249
    invoke-virtual {v4, v6, v7, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 251
    const/16 v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 253
    iget-object v6, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    const-string v7, "notification"

    invoke-virtual {v1, v7}, Lcom/umeng/socom/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v6, v1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;Landroid/app/NotificationManager;)V

    .line 255
    iget-object v1, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService;->b(Lcom/umeng/socom/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 257
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Show new  notification...."

    invoke-static {v1, v4}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService;->a(Landroid/content/Context;)Z

    move-result v1

    .line 260
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "isAppOnForeground = %1$B"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService;->b(Lcom/umeng/socom/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 268
    iget-object v1, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 271
    :cond_0
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "%1$10s downloaded. Saved to: %2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 272
    iget-object v0, v0, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    .line 271
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can not install. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/umeng/socom/net/d;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/socom/net/DownloadingService;->b(Lcom/umeng/socom/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
