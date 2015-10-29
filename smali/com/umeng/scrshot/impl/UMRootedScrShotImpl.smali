.class public Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;
.super Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;
.source "UMRootedScrShotImpl.java"


# instance fields
.field private final DEVICE_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->mContext:Landroid/content/Context;

    .line 32
    const-string v0, "/dev/graphics/fb0"

    iput-object v0, p0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->DEVICE_NAME:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private canExecuteCommand(Ljava/lang/String;)Z
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 156
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v1, 0x1

    .line 161
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 24

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "#### UMRootedScrShotImpl\'s mContext is null."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/16 v18, 0x0

    .line 102
    :goto_0
    return-object v18

    .line 56
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->isRooted()Z

    move-result v21

    if-nez v21, :cond_1

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "#### your device is not root."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v18, 0x0

    goto :goto_0

    .line 60
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 61
    const-string v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 60
    check-cast v14, Landroid/view/WindowManager;

    .line 62
    .local v14, "mWinManager":Landroid/view/WindowManager;
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    .local v15, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 64
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 66
    iget v9, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 68
    .local v9, "height":I
    iget v0, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    .line 70
    .local v20, "width":I
    invoke-virtual {v6}, Landroid/view/Display;->getPixelFormat()I

    move-result v16

    .line 71
    .local v16, "pixelformat":I
    new-instance v13, Landroid/graphics/PixelFormat;

    invoke-direct {v13}, Landroid/graphics/PixelFormat;-><init>()V

    .line 72
    .local v13, "localPixelFormat1":Landroid/graphics/PixelFormat;
    move/from16 v0, v16

    invoke-static {v0, v13}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 74
    iget v5, v13, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    .line 76
    .local v5, "deepth":I
    mul-int v21, v9, v20

    mul-int v21, v21, v5

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 79
    .local v3, "arrayOfByte":[B
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->readAsRoot()Ljava/io/InputStream;

    move-result-object v12

    .line 80
    .local v12, "localInputStream":Ljava/io/InputStream;
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    .local v11, "localDataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v11, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 83
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 85
    mul-int v21, v20, v9

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 87
    .local v19, "tmpColor":[I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    mul-int v21, v20, v9

    mul-int v21, v21, v5

    move/from16 v0, v21

    if-lt v10, v0, :cond_2

    .line 95
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 94
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 96
    .local v18, "scrBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 88
    .end local v18    # "scrBitmap":Landroid/graphics/Bitmap;
    :cond_2
    aget-byte v21, v3, v10

    move/from16 v0, v21

    and-int/lit16 v4, v0, 0xff

    .line 89
    .local v4, "b":I
    add-int/lit8 v21, v10, 0x1

    aget-byte v21, v3, v21

    move/from16 v0, v21

    and-int/lit16 v8, v0, 0xff

    .line 90
    .local v8, "g":I
    add-int/lit8 v21, v10, 0x2

    aget-byte v21, v3, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 91
    .local v17, "r":I
    div-int v21, v10, v5

    shl-int/lit8 v22, v17, 0x10

    shl-int/lit8 v23, v8, 0x8

    or-int v22, v22, v23

    or-int v22, v22, v4

    const/high16 v23, -0x1000000

    or-int v22, v22, v23

    aput v22, v19, v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/2addr v10, v5

    goto :goto_1

    .line 98
    .end local v4    # "b":I
    .end local v8    # "g":I
    .end local v10    # "j":I
    .end local v11    # "localDataInputStream":Ljava/io/DataInputStream;
    .end local v12    # "localInputStream":Ljava/io/InputStream;
    .end local v17    # "r":I
    .end local v19    # "tmpColor":[I
    :catch_0
    move-exception v7

    .line 99
    .local v7, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "#### root \u8bfb\u53d6\u5c4f\u5e55\u622a\u56fe\u5931\u8d25."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public isRooted()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 129
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 130
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "test-keys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v2

    .line 135
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/app/Superuser.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    const-string v3, "/system/xbin/which su"

    invoke-direct {p0, v3}, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->canExecuteCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    const-string v3, "/system/bin/which su"

    invoke-direct {p0, v3}, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->canExecuteCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    const-string v3, "which su"

    invoke-direct {p0, v3}, Lcom/umeng/scrshot/impl/UMRootedScrShotImpl;->canExecuteCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readAsRoot()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    const-string v3, "/dev/graphics/fb0"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "deviceFile":Ljava/io/File;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 114
    .local v1, "localProcess":Ljava/lang/Process;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cat "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 116
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method
