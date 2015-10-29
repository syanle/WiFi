.class Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog$1;
.super Ljava/lang/Object;
.source "UMScreenShotDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog$1;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 289
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog$1;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;

    monitor-enter v2

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog$1;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;

    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->isShowing:Z
    invoke-static {v1}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->access$0(Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v3, "#### postDelayed#run is execute."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog$1;->this$0:Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;

    invoke-virtual {v1}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 302
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 299
    :cond_0
    :try_start_3
    # getter for: Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/sensor/dialogs/UMScreenShotDialog;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v3, "####mDismissRunnable ,The ScreenShotDialog is Destoried"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
