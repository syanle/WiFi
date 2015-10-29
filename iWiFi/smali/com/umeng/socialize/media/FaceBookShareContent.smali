.class public Lcom/umeng/socialize/media/FaceBookShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "FaceBookShareContent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/media/FaceBookShareContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/umeng/socialize/media/FaceBookShareContent$1;

    invoke-direct {v0}, Lcom/umeng/socialize/media/FaceBookShareContent$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/media/FaceBookShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 176
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Landroid/os/Parcel;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->f:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->g:Ljava/lang/String;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->f:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->g:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/media/UMImage;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Lcom/umeng/socialize/media/UMImage;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->f:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->g:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->d:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->f:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->g:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->f:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->g:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FaceBookShareContent [mTitle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    const-string v1, ", mCaption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/SimpleShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/umeng/socialize/media/FaceBookShareContent;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
