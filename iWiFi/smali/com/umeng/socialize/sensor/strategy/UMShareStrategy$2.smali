.class Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;
.super Landroid/os/AsyncTask;
.source "UMShareStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->asyncTakeScrShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;->this$0:Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;

    .line 176
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, "scrshot":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;->this$0:Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;

    iget-object v5, v5, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    if-eqz v5, :cond_0

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 184
    .local v3, "start":J
    iget-object v5, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;->this$0:Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;

    iget-object v5, v5, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->mScrShotController:Lcom/umeng/scrshot/UMScrShotController;

    invoke-virtual {v5}, Lcom/umeng/scrshot/UMScrShotController;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    .local v0, "end":J
    const-string v5, "asyncTakeScrShot"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "### \u5f02\u6b65\u622a\u56fe\u8017\u65f6 : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v7, v0, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u6beb\u79d2."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "end":J
    .end local v3    # "start":J
    :cond_0
    return-object v2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "scrshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;->this$0:Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;

    # invokes: Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->showShareDialog(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;->access$0(Lcom/umeng/socialize/sensor/strategy/UMShareStrategy;Landroid/graphics/Bitmap;)V

    .line 199
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/sensor/strategy/UMShareStrategy$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
