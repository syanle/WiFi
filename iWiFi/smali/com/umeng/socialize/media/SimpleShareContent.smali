.class public Lcom/umeng/socialize/media/SimpleShareContent;
.super Ljava/lang/Object;
.source "SimpleShareContent.java"

# interfaces
.implements Lcom/umeng/socialize/media/UMediaObject;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Lcom/umeng/socialize/media/UMImage;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Ljava/lang/String;

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 121
    const-class v0, Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 123
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMImage;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getShareImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    return-object v0
.end method

.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public isMultiMedia()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public isUrlMedia()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShareContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    .line 94
    return-void
.end method

.method public toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/media/UMImage;->toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    .line 154
    :cond_0
    return-void
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimplaShareContent [mShareContent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    const-string v1, ", mShareImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
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
    .line 135
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrlExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    return-void
.end method
