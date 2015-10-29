.class public Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;
.super Ljava/lang/Thread;
.source "MyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/fragment/MyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/fragment/MyFragment;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 400
    :try_start_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->CreatFileSdcard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/fragment/MyFragment;->faceurl:Ljava/lang/String;

    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->readImage(Ljava/lang/String;)[B

    move-result-object v0

    .line 403
    .local v0, "data":[B
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    sget-object v5, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 404
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 406
    .local v2, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 408
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 409
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/MyFragment;->listHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->access$0(Lcom/pubinfo/izhejiang/fragment/MyFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v0    # "data":[B
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
