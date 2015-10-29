.class Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;
.super Ljava/lang/Object;
.source "PersonInfomationActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/PersonInfomationActivity;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    .line 340
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 342
    :pswitch_0
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v10}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->checkNetWork()Z

    move-result v10

    if-nez v10, :cond_0

    .line 344
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v11, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    const v12, 0x7f060032

    invoke-virtual {v11, v12}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    .line 345
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v10}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->hideLoading()V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v10}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->hideLoading()V

    .line 351
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v11, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    const v12, 0x7f060031

    invoke-virtual {v11, v12}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v10}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->hideLoading()V

    .line 355
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v10

    .line 356
    invoke-virtual {v10}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 357
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 358
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 359
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cat/data/PublicError;

    invoke-virtual {v10}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "errormessage":Ljava/lang/String;
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v10, v4}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->showMsgToast(Ljava/lang/String;)V

    .line 358
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 365
    .end local v0    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v4    # "errormessage":Ljava/lang/String;
    .end local v5    # "i":I
    :pswitch_3
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v10}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->hideLoading()V

    .line 366
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v10}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->chosePhoto()V

    goto :goto_0

    .line 369
    :pswitch_4
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v10}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->hideLoading()V

    .line 371
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    sget-object v11, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 371
    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v6, "newFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    sget-object v11, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 373
    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v7, "oleFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 376
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v6    # "newFile":Ljava/io/File;
    .end local v7    # "oleFile":Ljava/io/File;
    :goto_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 382
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x3

    iput v10, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 383
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    sget-object v11, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 383
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 385
    .local v9, "pathString":Ljava/lang/String;
    invoke-static {v9, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 387
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v12, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 388
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v10, v10, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v10, v10, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 377
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "pathString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 378
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
