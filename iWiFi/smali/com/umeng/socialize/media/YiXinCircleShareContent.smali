.class public Lcom/umeng/socialize/media/YiXinCircleShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "YiXinCircleShareContent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/media/YiXinCircleShareContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/umeng/socialize/media/UMediaObject;

.field private b:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/umeng/socialize/media/YiXinCircleShareContent$1;

    invoke-direct {v0}, Lcom/umeng/socialize/media/YiXinCircleShareContent$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->b:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->f:Ljava/lang/String;

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Landroid/os/Parcel;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->b:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->f:Ljava/lang/String;

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-class v0, Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMediaObject;

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->b:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->f:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->b:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->f:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->b:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->f:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->c:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getShareImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/umeng/socialize/media/SimpleShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    return-object v0
.end method

.method public getShareMedia()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method public getShareMusic()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method public getShareVideo()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;->setShareImage(Lcom/umeng/socialize/media/UMImage;)V

    .line 152
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 153
    return-void
.end method

.method public setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 114
    return-void
.end method

.method public setShareMusic(Lcom/umeng/socialize/media/UMusic;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 163
    return-void
.end method

.method public setShareVideo(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 184
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->f:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->b:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/SimpleShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinCircleShareContent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return-void
.end method
