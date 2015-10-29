.class public Lcom/umeng/socialize/media/QQShareContent;
.super Lcom/umeng/socialize/media/BaseShareContent;
.source "QQShareContent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/media/QQShareContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/umeng/socialize/media/QQShareContent$1;

    invoke-direct {v0}, Lcom/umeng/socialize/media/QQShareContent$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/media/QQShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseShareContent;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Landroid/os/Parcel;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMImage;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Lcom/umeng/socialize/media/UMImage;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Lcom/umeng/socialize/media/UMVideo;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMusic;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Lcom/umeng/socialize/media/UMusic;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {p1}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->e:Ljava/lang/String;

    const-string v1, "### QQ\u7684targetUrl\u5fc5\u987b\u4ee5http://\u6216\u8005https://\u5f00\u5934"

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/umeng/socialize/media/BaseShareContent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "QQShareContent [mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetUrl ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/BaseShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/media/QQShareContent;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return-void
.end method
