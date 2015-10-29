.class Lcom/umeng/socom/net/e;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Lcom/umeng/socom/net/DownloadingService$a;


# instance fields
.field final synthetic a:Lcom/umeng/socom/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/socom/net/DownloadingService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 289
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 291
    iget-object v2, v0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    .line 293
    if-eqz v2, :cond_0

    aget-wide v3, v2, v7

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 294
    aget-wide v3, v2, v1

    long-to-float v1, v3

    aget-wide v2, v2, v7

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 295
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 297
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 298
    const/16 v1, 0x63

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    iget-object v3, v0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    invoke-static {v2, v3, p1, v1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;Lcom/umeng/socom/net/a$a;II)Landroid/app/Notification;

    move-result-object v1

    .line 303
    iput-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->b:Landroid/app/Notification;

    .line 305
    iget-object v0, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/socom/net/DownloadingService;->b(Lcom/umeng/socom/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 307
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 311
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 313
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    .line 314
    iget-object v0, v0, Lcom/umeng/socom/net/DownloadingService$d;->b:Landroid/app/Notification;

    .line 315
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 316
    iget-object v3, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socom/a/a;->c(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x64

    .line 315
    invoke-virtual {v2, v3, v4, p2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 318
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 319
    iget-object v3, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socom/a/a;->b(Landroid/content/Context;)I

    move-result v3

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 322
    iget-object v2, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/socom/net/DownloadingService;->b(Lcom/umeng/socom/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 323
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string v2, "%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v1, v1, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    aput-object v1, v3, v4

    .line 323
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 5

    .prologue
    .line 377
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 379
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    .line 380
    iget-object v0, v0, Lcom/umeng/socom/net/DownloadingService$d;->b:Landroid/app/Notification;

    .line 381
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 382
    iget-object v3, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socom/a/a;->d(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    const-string v1, " \u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService;->b(Lcom/umeng/socom/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 385
    iget-object v0, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0, p1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V

    .line 387
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 331
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 333
    if-eqz v0, :cond_1

    .line 334
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    .line 335
    iget-object v0, v0, Lcom/umeng/socom/net/DownloadingService$d;->b:Landroid/app/Notification;

    .line 336
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 337
    iget-object v2, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socom/a/a;->b(Landroid/content/Context;)I

    move-result v2

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/net/c;->a(Landroid/content/Context;)Lcom/umeng/socom/net/c;

    move-result-object v0

    iget-object v2, v1, Lcom/umeng/socom/net/a$a;->a:Ljava/lang/String;

    .line 341
    iget-object v3, v1, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    .line 340
    invoke-virtual {v0, v2, v3, v7}, Lcom/umeng/socom/net/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    const-string v2, "filename"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 349
    iput v6, v2, Landroid/os/Message;->what:I

    .line 350
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 351
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 353
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 354
    iget-object v3, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/socom/net/DownloadingService;->c(Lcom/umeng/socom/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 358
    iput v6, v2, Landroid/os/Message;->what:I

    .line 359
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 360
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 363
    :try_start_0
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0, p1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    iget-object v0, p0, Lcom/umeng/socom/net/e;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0, p1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V

    goto :goto_0
.end method
