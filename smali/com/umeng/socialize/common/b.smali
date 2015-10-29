.class Lcom/umeng/socialize/common/b;
.super Landroid/os/AsyncTask;
.source "SocialResHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/common/SocialResHelper$a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/common/SocialResHelper$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    .line 435
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 465
    :try_start_0
    sget-boolean v0, Lcom/umeng/socialize/common/SocialResHelper;->a:Z

    if-eqz v0, :cond_0

    .line 466
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    :cond_0
    :goto_0
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/common/b;->publishProgress([Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v0, v0, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v1, v1, Lcom/umeng/socialize/common/SocialResHelper$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/common/SocialResHelper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    .line 477
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/umeng/socialize/common/b;->publishProgress([Ljava/lang/Object;)V

    .line 478
    iget-object v1, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v1, v1, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v2, v2, Lcom/umeng/socialize/common/SocialResHelper$a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/umeng/socialize/common/SocialResHelper;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 481
    if-nez v0, :cond_1

    .line 482
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    :cond_1
    :goto_1
    return-object v0

    .line 485
    :catch_0
    move-exception v1

    .line 486
    invoke-static {}, Lcom/umeng/socialize/common/SocialResHelper;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .prologue
    .line 438
    iget-object v0, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v1, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v1, v1, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v2, v2, Lcom/umeng/socialize/common/SocialResHelper$a;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-boolean v4, v3, Lcom/umeng/socialize/common/SocialResHelper$a;->i:Z

    iget-object v3, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v5, v3, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    .line 439
    iget-object v3, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v6, v3, Lcom/umeng/socialize/common/SocialResHelper$a;->f:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-boolean v7, v3, Lcom/umeng/socialize/common/SocialResHelper$a;->h:Z

    iget-object v3, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget v8, v3, Lcom/umeng/socialize/common/SocialResHelper$a;->e:I

    move-object v3, p1

    .line 438
    invoke-static/range {v0 .. v8}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Lcom/umeng/socialize/common/SocialResHelper$a;Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;Landroid/view/animation/Animation;ZI)V

    .line 440
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 444
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 445
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v0, v0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v0, v0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->FETCH_FROM_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;)V

    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v0, v0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/umeng/socialize/common/b;->a:Lcom/umeng/socialize/common/SocialResHelper$a;

    iget-object v0, v0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->FETCH_FROM_LOCALE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;)V

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/common/b;->a([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/common/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/common/b;->a([Ljava/lang/Integer;)V

    return-void
.end method
