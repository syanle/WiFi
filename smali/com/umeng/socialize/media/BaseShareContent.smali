.class public abstract Lcom/umeng/socialize/media/BaseShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "BaseShareContent.java"


# instance fields
.field protected a:Lcom/umeng/socialize/media/UMusic;

.field protected b:Lcom/umeng/socialize/media/UMVideo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 27
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 27
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->c:Ljava/lang/String;

    .line 171
    const-class v0, Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 172
    const-class v0, Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMusic;

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 173
    const-class v0, Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 175
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMImage;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 27
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 51
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 27
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 69
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMusic;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 27
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 60
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 27
    iput-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 42
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseShareContent;->c:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareMedia()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 142
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareMusic()Lcom/umeng/socialize/media/UMusic;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    return-object v0
.end method

.method public getShareVideo()Lcom/umeng/socialize/media/UMVideo;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    return-object v0
.end method

.method public isMultiMedia()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public isUrlMedia()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v0

    .line 286
    :goto_0
    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->isUrlMedia()Z

    move-result v0

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->isUrlMedia()Z

    move-result v0

    goto :goto_0

    .line 286
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppWebSite(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/umeng/socialize/media/BaseShareContent;->getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->setAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;->setShareImage(Lcom/umeng/socialize/media/UMImage;)V

    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 80
    iput-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 81
    iput-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 83
    :cond_0
    return-void
.end method

.method public setShareMusic(Lcom/umeng/socialize/media/UMusic;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 101
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_0

    .line 102
    iput-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 103
    iput-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 105
    :cond_0
    return-void
.end method

.method public setShareVideo(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iput-object p1, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_0

    .line 124
    iput-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 125
    iput-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    .line 127
    :cond_0
    return-void
.end method

.method public toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/media/UMImage;->toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/media/UMusic;->toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/media/UMVideo;->toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    goto :goto_0
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toByte()[B

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toByte()[B

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseShareContent [mShareContent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShareImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    const-string v1, ", mShareMusic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShareVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public toUrlExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrlExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrlExtraParams()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toUrlExtraParams()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->a:Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 160
    iget-object v0, p0, Lcom/umeng/socialize/media/BaseShareContent;->b:Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 161
    return-void
.end method
