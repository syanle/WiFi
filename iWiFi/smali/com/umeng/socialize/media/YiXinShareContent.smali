.class public Lcom/umeng/socialize/media/YiXinShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "YiXinShareContent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/media/YiXinShareContent;",
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
    .line 208
    new-instance v0, Lcom/umeng/socialize/media/YiXinShareContent$1;

    invoke-direct {v0}, Lcom/umeng/socialize/media/YiXinShareContent$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/media/YiXinShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 218
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->b:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->f:Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Landroid/os/Parcel;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->b:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->f:Ljava/lang/String;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-class v0, Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMediaObject;

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->f:Ljava/lang/String;

    .line 64
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->b:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->f:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->b:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->f:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinShareContent;->c:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getShareImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/umeng/socialize/media/SimpleShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    return-object v0
.end method

.method public getShareMedia()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method public getShareMusic()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method public getShareVideo()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;->setShareImage(Lcom/umeng/socialize/media/UMImage;)V

    .line 116
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 117
    return-void
.end method

.method public setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 90
    return-void
.end method

.method public setShareMusic(Lcom/umeng/socialize/media/UMusic;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 128
    return-void
.end method

.method public setShareVideo(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    .line 149
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinShareContent;->f:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/umeng/socialize/media/YiXinShareContent;->b:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/SimpleShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->a:Lcom/umeng/socialize/media/UMediaObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/media/YiXinShareContent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
