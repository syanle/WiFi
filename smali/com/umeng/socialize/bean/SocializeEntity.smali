.class public Lcom/umeng/socialize/bean/SocializeEntity;
.super Ljava/lang/Object;
.source "SocializeEntity.java"


# static fields
.field public static mAppName:Ljava/lang/String;

.field private static n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/umeng/socialize/bean/LIKESTATUS;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Lcom/umeng/socialize/media/UMediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/umeng/socialize/bean/SocializeConfig;

.field private k:Lcom/umeng/socialize/controller/RequestType;

.field private l:Lcom/umeng/socialize/bean/UMShareMsg;

.field private m:Lcom/umeng/socialize/bean/ShareType;

.field public mCustomID:Ljava/lang/String;

.field public mDescriptor:Ljava/lang/String;

.field public mEntityKey:Ljava/lang/String;

.field public mInitialized:Z

.field public mSessionID:Ljava/lang/String;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/bean/SocializeEntity;->mAppName:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SocializeEntity;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "-1"

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mSessionID:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->h:Ljava/util/Map;

    .line 50
    iput-object v2, p0, Lcom/umeng/socialize/bean/SocializeEntity;->j:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 53
    iput-object v2, p0, Lcom/umeng/socialize/bean/SocializeEntity;->l:Lcom/umeng/socialize/bean/UMShareMsg;

    .line 55
    sget-object v0, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->m:Lcom/umeng/socialize/bean/ShareType;

    .line 63
    iput-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->o:Z

    .line 72
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/umeng/socialize/bean/SocializeEntity;->k:Lcom/umeng/socialize/controller/RequestType;

    .line 75
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private a()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    return-object v0
.end method

.method public static buildPoolKey(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/socialize/controller/RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cloneNew(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/umeng/socialize/bean/SocializeEntity;

    .line 297
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 296
    invoke-direct {v0, v1, p1}, Lcom/umeng/socialize/bean/SocializeEntity;-><init>(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)V

    .line 298
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mSessionID:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mSessionID:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mCustomID:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mCustomID:Ljava/lang/String;

    .line 301
    iget v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->a:I

    iput v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->a:I

    .line 302
    iget v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->a:I

    iput v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->b:I

    .line 303
    iget v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->c:I

    iput v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->c:I

    .line 304
    iget v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->d:I

    iput v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->d:I

    .line 305
    iget-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->e:Z

    iput-boolean v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->e:Z

    .line 306
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->f:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->g:Lcom/umeng/socialize/bean/LIKESTATUS;

    iput-object v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->g:Lcom/umeng/socialize/bean/LIKESTATUS;

    .line 308
    iget-boolean v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    iput-boolean v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    .line 309
    return-object v0
.end method

.method public static getAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    sget-object v0, Lcom/umeng/socialize/bean/SocializeEntity;->n:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SocializeEntity;->n:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/umeng/socialize/bean/SocializeEntity;->n:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    return-void
.end method


# virtual methods
.method public addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 1

    .prologue
    .line 434
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/umeng/socom/util/StatisticsDataUtils;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addShakeStatisticsData(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 403
    :try_start_0
    invoke-static {p1}, Lcom/umeng/socom/util/StatisticsDataUtils;->saveSharkStatisticsData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 1

    .prologue
    .line 419
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/umeng/socom/util/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized changeILike()V
    .locals 2

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->g:Lcom/umeng/socialize/bean/LIKESTATUS;

    .line 248
    sget-object v1, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    if-ne v0, v1, :cond_0

    .line 249
    iget v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->c:I

    .line 250
    sget-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->UNLIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->g:Lcom/umeng/socialize/bean/LIKESTATUS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->c:I

    .line 253
    sget-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->g:Lcom/umeng/socialize/bean/LIKESTATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanStatisticsData(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 448
    :try_start_0
    invoke-static {p1, p2}, Lcom/umeng/socom/util/StatisticsDataUtils;->cleanStatisticsData(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->b:I

    return v0
.end method

.method public getEntityConfig()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->j:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->c:I

    return v0
.end method

.method public getLikeStatus()Lcom/umeng/socialize/bean/LIKESTATUS;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->g:Lcom/umeng/socialize/bean/LIKESTATUS;

    return-object v0
.end method

.method public getMedia(Ljava/lang/Class;)Lcom/umeng/socialize/media/BaseMediaObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/umeng/socialize/media/BaseMediaObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/umeng/socialize/bean/SocializeEntity;->a()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMediaObject;

    .line 111
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Lcom/umeng/socialize/media/BaseMediaObject;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMedia()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/umeng/socialize/bean/SocializeEntity;->a()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMedia(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMediaObject;

    .line 99
    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->h:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMediaObject;

    .line 103
    :cond_0
    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthStatisticsData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    :try_start_0
    invoke-static {}, Lcom/umeng/socom/util/StatisticsDataUtils;->getOauthStatisticsData()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getPv()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->a:I

    return v0
.end method

.method public getRequestType()Lcom/umeng/socialize/controller/RequestType;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->k:Lcom/umeng/socialize/controller/RequestType;

    return-object v0
.end method

.method public getShareContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->i:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/umeng/socialize/bean/SocializeEntity;->a()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 166
    iget-object v2, p0, Lcom/umeng/socialize/bean/SocializeEntity;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMediaObject;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    instance-of v2, v0, Lcom/umeng/socialize/media/SimpleShareContent;

    if-eqz v2, :cond_0

    .line 170
    check-cast v0, Lcom/umeng/socialize/media/SimpleShareContent;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/SimpleShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getShareCount()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->d:I

    return v0
.end method

.method public getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->l:Lcom/umeng/socialize/bean/UMShareMsg;

    return-object v0
.end method

.method public getShareType()Lcom/umeng/socialize/bean/ShareType;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->m:Lcom/umeng/socialize/bean/ShareType;

    return-object v0
.end method

.method public getSharkStatisticsData(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    invoke-static {p1}, Lcom/umeng/socom/util/StatisticsDataUtils;->getSharkStatisticsData(Landroid/content/Context;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getStatisticsData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    invoke-static {}, Lcom/umeng/socom/util/StatisticsDataUtils;->getStatisticsData()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public declared-synchronized incrementCc()V
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementSc()V
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFireCallback()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->o:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeEntity;->e:Z

    return v0
.end method

.method public setCommentCount(I)V
    .locals 0

    .prologue
    .line 201
    iput p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->b:I

    .line 202
    return-void
.end method

.method public setConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->j:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 267
    return-void
.end method

.method public setFireCallback(Z)V
    .locals 0

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->o:Z

    .line 493
    return-void
.end method

.method public setIlikey(Lcom/umeng/socialize/bean/LIKESTATUS;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->g:Lcom/umeng/socialize/bean/LIKESTATUS;

    .line 244
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->c:I

    .line 210
    return-void
.end method

.method public setMedia(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->h:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public setNew(Z)V
    .locals 0

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->e:Z

    .line 156
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->f:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setPv(I)V
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->a:I

    .line 194
    return-void
.end method

.method public setShareContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->i:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setShareCount(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->d:I

    .line 218
    return-void
.end method

.method public setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->l:Lcom/umeng/socialize/bean/UMShareMsg;

    .line 338
    return-void
.end method

.method public setShareType(Lcom/umeng/socialize/bean/ShareType;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeEntity;->m:Lcom/umeng/socialize/bean/ShareType;

    .line 240
    return-void
.end method
