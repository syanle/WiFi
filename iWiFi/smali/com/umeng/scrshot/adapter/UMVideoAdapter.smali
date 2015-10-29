.class public Lcom/umeng/scrshot/adapter/UMVideoAdapter;
.super Lcom/umeng/scrshot/adapter/UMBaseAdapter;
.source "UMVideoAdapter.java"


# instance fields
.field private mPlayer:Landroid/media/MediaPlayer;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/scrshot/adapter/UMBaseAdapter;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mVideoPath:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mPlayer:Landroid/media/MediaPlayer;

    .line 37
    iput-object p1, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mPlayer:Landroid/media/MediaPlayer;

    .line 38
    iput-object p2, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mVideoPath:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->initAdapter()V

    .line 40
    return-void
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->isParamsValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;

    iget-object v1, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/umeng/scrshot/impl/UMVideoScrShotImpl;-><init>(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    goto :goto_0
.end method

.method private isParamsValid()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mVideoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->isParamsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->isScrShotImplNotNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->TAG:Ljava/lang/String;

    const-string v1, "#### \u53c2\u6570\u65e0\u6548 || mScrShotImpl == null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mScrShotImpl:Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;

    invoke-virtual {v0}, Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getMeidaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public setMeidaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mPlayer:Landroid/media/MediaPlayer;

    .line 88
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/umeng/scrshot/adapter/UMVideoAdapter;->mVideoPath:Ljava/lang/String;

    .line 70
    return-void
.end method
