.class public Lcom/umeng/socialize/media/WeiXinShareContent;
.super Lcom/umeng/socialize/media/BaseShareContent;
.source "WeiXinShareContent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/media/WeiXinShareContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/umeng/socialize/media/WeiXinShareContent$1;

    invoke-direct {v0}, Lcom/umeng/socialize/media/WeiXinShareContent$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/media/WeiXinShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseShareContent;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Landroid/os/Parcel;)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

    .line 71
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

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/umeng/socialize/media/BaseShareContent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "WeiXinShareMedia [mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetUrl ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/BaseShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/media/WeiXinShareContent;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void
.end method
