.class public Lcom/umeng/socialize/media/CircleShareContent;
.super Lcom/umeng/socialize/media/BaseShareContent;
.source "CircleShareContent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/media/CircleShareContent;",
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
    .line 126
    new-instance v0, Lcom/umeng/socialize/media/CircleShareContent$1;

    invoke-direct {v0}, Lcom/umeng/socialize/media/CircleShareContent$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/media/CircleShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/umeng/socialize/media/BaseShareContent;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Landroid/os/Parcel;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMImage;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Lcom/umeng/socialize/media/UMImage;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Lcom/umeng/socialize/media/UMVideo;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMusic;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Lcom/umeng/socialize/media/UMusic;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseShareContent;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/umeng/socialize/media/BaseShareContent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CircleShareContent [mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetUrl ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/BaseShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    iget-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/media/CircleShareContent;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return-void
.end method
