.class public Lcom/umeng/socialize/media/UMRichMedia;
.super Lcom/umeng/socialize/media/BaseMediaObject;
.source "UMRichMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/media/UMRichMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field private i:[B

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/umeng/socialize/media/UMRichMedia$1;

    invoke-direct {v0}, Lcom/umeng/socialize/media/UMRichMedia$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/media/UMRichMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Landroid/os/Parcel;)V

    .line 31
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    .line 32
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-static {v0}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    if-lez v0, :cond_1

    .line 165
    new-array v0, v0, [B

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 167
    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    .line 169
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject$MediaType;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    .line 32
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/umeng/socialize/media/BaseMediaObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    .line 32
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p2}, Lcom/umeng/socialize/media/UMRichMedia;->a(Ljava/lang/Class;)V

    .line 47
    return-void
.end method

.method public constructor <init>([BLcom/umeng/socialize/media/UMediaObject$MediaType;)V
    .locals 1

    .prologue
    .line 95
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    .line 32
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    .line 97
    iput-object p2, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 98
    return-void
.end method

.method public constructor <init>([BLjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class",
            "<+",
            "Lcom/umeng/socialize/media/BaseMediaObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    .line 32
    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    .line 63
    invoke-direct {p0, p2}, Lcom/umeng/socialize/media/UMRichMedia;->a(Ljava/lang/Class;)V

    .line 64
    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/umeng/socialize/media/BaseMediaObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    const-class v0, Lcom/umeng/socialize/media/UMImage;

    if-ne p1, v0, :cond_1

    .line 79
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-class v0, Lcom/umeng/socialize/media/UMVideo;

    if-ne p1, v0, :cond_2

    .line 82
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    goto :goto_0

    .line 84
    :cond_2
    const-class v0, Lcom/umeng/socialize/media/UMusic;

    if-ne p1, v0, :cond_0

    .line 85
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    iput-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/media/UMRichMedia;)[B
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    return-object v0
.end method

.method public static toUMRichMedia(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMRichMedia;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 235
    .line 237
    if-nez p0, :cond_1

    move-object v0, v1

    .line 269
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :cond_1
    invoke-interface {p0}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    new-instance v1, Lcom/umeng/socialize/media/UMRichMedia;

    invoke-interface {p0}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/umeng/socialize/media/UMRichMedia;-><init>(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject$MediaType;)V

    .line 241
    invoke-interface {p0}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v0, v2, :cond_6

    .line 243
    instance-of v0, p0, Lcom/umeng/socialize/media/BaseShareContent;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 244
    check-cast v0, Lcom/umeng/socialize/media/BaseShareContent;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object v0

    .line 248
    :goto_1
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/media/UMRichMedia;->setAuthor(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/media/UMRichMedia;->setTitle(Ljava/lang/String;)V

    move-object v0, v1

    .line 261
    :goto_2
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/umeng/socialize/media/BaseMediaObject;

    if-eqz v1, :cond_0

    .line 262
    check-cast p0, Lcom/umeng/socialize/media/BaseMediaObject;

    .line 263
    invoke-virtual {p0}, Lcom/umeng/socialize/media/BaseMediaObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lcom/umeng/socialize/media/BaseMediaObject;->getThumb()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/media/UMRichMedia;->setTitle(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, v2}, Lcom/umeng/socialize/media/UMRichMedia;->setThumb(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 246
    check-cast v0, Lcom/umeng/socialize/media/UMusic;

    goto :goto_1

    .line 251
    :cond_3
    invoke-interface {p0}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v0, v2, :cond_4

    move-object v0, p0

    .line 252
    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 253
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v0

    .line 254
    if-eqz v0, :cond_5

    .line 255
    new-instance v1, Lcom/umeng/socialize/media/UMRichMedia;

    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-direct {v1, v0, v2}, Lcom/umeng/socialize/media/UMRichMedia;-><init>([BLcom/umeng/socialize/media/UMediaObject$MediaType;)V

    move-object v0, v1

    .line 257
    goto :goto_2

    .line 258
    :cond_4
    const-string v0, "com.umeng.socialize"

    const-string v2, "toUMRichMedia is unsupport this media."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public static toUMRichMedia(Lcom/umeng/socialize/media/UMediaObject;Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;)V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/umeng/socialize/media/UMRichMedia$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/media/UMRichMedia$3;-><init>(Lcom/umeng/socialize/media/UMediaObject;Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;)V

    .line 309
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMRichMedia$3;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 311
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    return-object v0
.end method

.method public isMultiMedia()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public isUrlMedia()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iput-object p1, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    .line 218
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iput-object p1, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    .line 212
    :cond_0
    return-void
.end method

.method public toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;->onStart()V

    .line 128
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    invoke-interface {p1, v0}, Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;->onComplete([B)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 133
    new-instance v0, Lcom/umeng/socialize/media/UMRichMedia$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/media/UMRichMedia$2;-><init>(Lcom/umeng/socialize/media/UMRichMedia;Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 145
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/media/UMRichMedia$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {p1, v2}, Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;->onComplete([B)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-interface {p1, v2}, Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;->onComplete([B)V

    goto :goto_0
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMRichMedia [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXIST, title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMRichMedia;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qzone_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMRichMedia;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    const-string v1, ", qzone_thumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMRichMedia;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toUrlExtraParams()Ljava/util/Map;
    .locals 3
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
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMRichMedia;->isUrlMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/media/UMRichMedia;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->z:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMRichMedia;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v1, v2, :cond_0

    .line 200
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/BaseMediaObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 179
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->h:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia;->i:[B

    array-length v0, v0

    goto :goto_1
.end method
