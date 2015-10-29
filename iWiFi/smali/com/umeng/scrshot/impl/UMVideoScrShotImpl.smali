.class public Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;
.super Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;
.source "UMVideoScrShotImpl.java"


# instance fields
.field private final ACTION_DELAY:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mVideoPath:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mPlayer:Landroid/media/MediaPlayer;

    .line 32
    const v0, 0x186a0

    iput v0, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->ACTION_DELAY:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mVideoPath:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mPlayer:Landroid/media/MediaPlayer;

    .line 32
    const v0, 0x186a0

    iput v0, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->ACTION_DELAY:I

    .line 48
    iput-object p1, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mPlayer:Landroid/media/MediaPlayer;

    .line 49
    iput-object p2, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mVideoPath:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mVideoPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 103
    :cond_0
    const/4 v3, 0x0

    .line 149
    :goto_0
    return-object v3

    .line 106
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 107
    .local v10, "startTime":J
    const/4 v3, 0x0

    .line 111
    .local v3, "bmp":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 113
    .local v9, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mVideoPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 116
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "timeString":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v13, v17, v19

    .line 120
    .local v13, "titalTime":J
    const-wide/16 v15, 0x0

    .line 122
    .local v15, "videoPosition":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    .line 124
    .local v4, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v8

    .line 125
    .local v8, "position":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 126
    .local v5, "endTime":J
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u8017\u65f6\u4e3a : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v19, v5, v10

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    int-to-long v0, v8

    move-wide/from16 v17, v0

    mul-long v17, v17, v13

    int-to-long v0, v4

    move-wide/from16 v19, v0

    div-long v15, v17, v19

    .line 130
    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-lez v17, :cond_2

    .line 132
    const-wide/32 v17, 0x186a0

    add-long v17, v17, v15

    .line 133
    const/16 v19, 0x3

    .line 132
    move-wide/from16 v0, v17

    move/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 145
    :goto_1
    :try_start_1
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v17

    goto :goto_0

    .line 136
    :cond_2
    mul-int/lit16 v0, v8, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 137
    const/16 v19, 0x3

    .line 136
    :try_start_2
    move-wide/from16 v0, v17

    move/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 139
    .end local v4    # "duration":I
    .end local v5    # "endTime":J
    .end local v8    # "position":I
    .end local v12    # "timeString":Ljava/lang/String;
    .end local v13    # "titalTime":J
    .end local v15    # "videoPosition":J
    :catch_1
    move-exception v7

    .line 140
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :try_start_4
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 146
    :catch_2
    move-exception v17

    goto/16 :goto_0

    .line 141
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v7

    .line 142
    .local v7, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    :try_start_6
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 146
    :catch_4
    move-exception v17

    goto/16 :goto_0

    .line 143
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v17

    .line 145
    :try_start_7
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 148
    :goto_2
    throw v17

    .line 146
    :catch_5
    move-exception v18

    goto :goto_2
.end method

.method public getMeidaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public setMeidaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mPlayer:Landroid/media/MediaPlayer;

    .line 86
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;->mVideoPath:Ljava/lang/String;

    .line 68
    return-void
.end method
