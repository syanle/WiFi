.class public Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThread;
.super Ljava/lang/Thread;
.source "PersonInfomationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/PersonInfomationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 280
    :try_start_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->faceurl:Ljava/lang/String;

    invoke-static {v3}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->readImage(Ljava/lang/String;)[B

    move-result-object v0

    .line 281
    .local v0, "data":[B
    new-instance v2, Ljava/io/FileOutputStream;

    .line 282
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    sget-object v5, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 284
    .local v2, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 286
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 287
    iget-object v3, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    # getter for: Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->access$0(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "data":[B
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
