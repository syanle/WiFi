.class public Lcom/cat/picture/ShowImageActivity;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "ShowImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/picture/ShowImageActivity$MyThread;
    }
.end annotation


# instance fields
.field aftercut_bitmap:Landroid/graphics/Bitmap;

.field bitmap:Landroid/graphics/Bitmap;

.field btn_click:Z

.field content:Ljava/lang/String;

.field private mClipImageLayout:Lcom/cat/picture/ClipImageLayout;

.field private mContent:[B

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cat/picture/ShowImageActivity;->btn_click:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cat/picture/ShowImageActivity;->mainHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method private Commit()V
    .locals 16

    .prologue
    const/4 v15, 0x2

    const/4 v5, 0x0

    .line 240
    const-string v4, "LoginSucess"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/cat/picture/ShowImageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 241
    .local v13, "sharedata3":Landroid/content/SharedPreferences;
    const-string v4, "username"

    const-string v5, ""

    invoke-interface {v13, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "phone":Ljava/lang/String;
    const-string v4, "memberid"

    const-string v5, ""

    invoke-interface {v13, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "memberid":Ljava/lang/String;
    new-instance v1, Lcom/cat/tools/AWLocalInterfaces;

    invoke-direct {v1}, Lcom/cat/tools/AWLocalInterfaces;-><init>()V

    .line 245
    .local v1, "aw":Lcom/cat/tools/AWLocalInterfaces;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    sget-object v5, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/cat/picture/ShowImageActivity;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 247
    const v6, 0x7f060001

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/cat/picture/ShowImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f060002

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/cat/picture/ShowImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/cat/picture/ShowImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 245
    invoke-virtual/range {v1 .. v8}, Lcom/cat/tools/AWLocalInterfaces;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, "content":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 252
    :try_start_0
    invoke-virtual {v1, v9}, Lcom/cat/tools/AWLocalInterfaces;->parseContent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 253
    .local v11, "result":Ljava/lang/Object;
    const-string v4, "OK"

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    check-cast v11, Ljava/util/List;

    .end local v11    # "result":Ljava/lang/Object;
    invoke-virtual {v4, v11}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cat/picture/ShowImageActivity;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    :goto_0
    return-void

    .line 257
    .restart local v11    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    move-object v14, v0

    .line 258
    .local v14, "uploaddata":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UpLoadData;>;"
    const-string v4, "MyFragment"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/cat/picture/ShowImageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 259
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 261
    .local v12, "sharedata2":Landroid/content/SharedPreferences$Editor;
    const-string v5, "face"

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/UpLoadData;

    invoke-virtual {v4}, Lcom/cat/data/UpLoadData;->getFaceimg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cat/picture/ShowImageActivity;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v11    # "result":Ljava/lang/Object;
    .end local v12    # "sharedata2":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "uploaddata":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UpLoadData;>;"
    :catch_0
    move-exception v10

    .line 266
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cat/picture/ShowImageActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 269
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cat/picture/ShowImageActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cat/picture/ShowImageActivity;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/cat/picture/ShowImageActivity;->Commit()V

    return-void
.end method

.method static synthetic access$1(Lcom/cat/picture/ShowImageActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cat/picture/ShowImageActivity;->showLoading()V

    return-void
.end method

.method static synthetic access$2(Lcom/cat/picture/ShowImageActivity;)Lcom/cat/picture/ClipImageLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity;->mClipImageLayout:Lcom/cat/picture/ClipImageLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cat/picture/ShowImageActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cat/picture/ShowImageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cat/picture/ShowImageActivity;->showMsgToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/cat/picture/ShowImageActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/cat/picture/ShowImageActivity;->hideLoading()V

    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/cat/picture/ShowImageActivity$3;

    invoke-direct {v1, p0}, Lcom/cat/picture/ShowImageActivity$3;-><init>(Lcom/cat/picture/ShowImageActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cat/picture/ShowImageActivity;->mainHandler:Landroid/os/Handler;

    .line 225
    return-void
.end method

.method public static readPictureDegree(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "degree":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 352
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    .line 353
    const/4 v5, 0x1

    .line 351
    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 354
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    .line 368
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_0
    :pswitch_0
    return v0

    .line 356
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 357
    goto :goto_0

    .line 359
    :pswitch_2
    const/16 v0, 0xb4

    .line 360
    goto :goto_0

    .line 362
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 365
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public distoryBitmap()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity;->aftercut_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity;->aftercut_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity;->aftercut_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 327
    const/4 v8, 0x0

    .line 328
    .local v8, "res":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 329
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cat/picture/ShowImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 331
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 334
    .local v6, "column_index":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 336
    .end local v6    # "column_index":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 337
    return-object v8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super/range {p0 .. p1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v3, 0x7f03000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cat/picture/ShowImageActivity;->setContentView(I)V

    .line 55
    const v3, 0x7f0a0038

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cat/picture/ShowImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cat/picture/ClipImageLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cat/picture/ShowImageActivity;->mClipImageLayout:Lcom/cat/picture/ClipImageLayout;

    .line 57
    const v3, 0x7f0a0029

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cat/picture/ShowImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cat/picture/ShowImageActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 59
    const v4, 0x7f0a00a4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 58
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cat/picture/ShowImageActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 61
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cat/picture/ShowImageActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/cat/picture/ShowImageActivity;->initialHandler()V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/cat/picture/ShowImageActivity;->distoryBitmap()V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/cat/picture/ShowImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 71
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/cat/picture/ShowImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 72
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 73
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 74
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    const-string v3, "_data"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 78
    .local v16, "filePath":Ljava/lang/String;
    const-string v3, "orientation"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 77
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 79
    .local v18, "orientation":Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 80
    if-eqz v16, :cond_2

    .line 81
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 82
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x3

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    invoke-static/range {v16 .. v17}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 84
    const/4 v10, 0x0

    .line 85
    .local v10, "angle":I
    if-eqz v18, :cond_0

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 88
    :cond_0
    if-eqz v10, :cond_1

    .line 90
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    .local v8, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 92
    .local v6, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 93
    .local v7, "height":I
    int-to-float v3, v10

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 95
    const/4 v9, 0x1

    .line 94
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 98
    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v8    # "m":Landroid/graphics/Matrix;
    :cond_1
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v14, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 99
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->mClipImageLayout:Lcom/cat/picture/ClipImageLayout;

    invoke-virtual {v3, v14}, Lcom/cat/picture/ClipImageLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    .end local v10    # "angle":I
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "filePath":Ljava/lang/String;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "orientation":Ljava/lang/String;
    :cond_2
    :goto_0
    const v3, 0x7f0a0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cat/picture/ShowImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 144
    .local v11, "btn1":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/cat/picture/ShowImageActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cat/picture/ShowImageActivity$1;-><init>(Lcom/cat/picture/ShowImageActivity;)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v3, 0x7f0a0037

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cat/picture/ShowImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 151
    .local v12, "btn2":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/cat/picture/ShowImageActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cat/picture/ShowImageActivity$2;-><init>(Lcom/cat/picture/ShowImageActivity;)V

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void

    .line 102
    .end local v11    # "btn1":Landroid/widget/LinearLayout;
    .end local v12    # "btn2":Landroid/widget/LinearLayout;
    :cond_3
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 103
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x3

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 104
    new-instance v15, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    sget-object v4, Lcom/cat/tools/APPConf;->PHOTO_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cat/picture/ShowImageActivity;->readPictureDegree(Ljava/lang/String;)I

    move-result v10

    .line 110
    .restart local v10    # "angle":I
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    sget-object v4, Lcom/cat/tools/APPConf;->PHOTO_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/cat/picture/ShowImageActivity;->finish()V

    goto :goto_0

    .line 116
    :cond_4
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 117
    .restart local v8    # "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 118
    .restart local v6    # "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 119
    .restart local v7    # "height":I
    int-to-float v3, v10

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 121
    const/4 v9, 0x1

    .line 120
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 122
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cat/picture/ShowImageActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v14, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 123
    .restart local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cat/picture/ShowImageActivity;->mClipImageLayout:Lcom/cat/picture/ClipImageLayout;

    invoke-virtual {v3, v14}, Lcom/cat/picture/ClipImageLayout;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/cat/picture/ShowImageActivity;->CreatFileSdcard()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 285
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    sget-object v8, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 285
    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 289
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 296
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 298
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 300
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 301
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 310
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 311
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x3

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    sget-object v8, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 312
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 315
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    sget-object v8, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, "file2":Ljava/io/File;
    const/4 v6, 0x0

    .line 318
    .local v6, "stream":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 319
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x28

    invoke-virtual {p1, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 324
    .end local v2    # "file2":Ljava/io/File;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .line 303
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 290
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "file":Ljava/io/File;
    :catch_3
    move-exception v7

    goto :goto_0

    .line 305
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 303
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
