.class Lcom/umeng/socialize/media/MailShareContent$1;
.super Ljava/lang/Object;
.source "MailShareContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/umeng/socialize/media/MailShareContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/media/MailShareContent;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/umeng/socialize/media/MailShareContent;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/media/MailShareContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/MailShareContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/umeng/socialize/media/MailShareContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/umeng/socialize/media/MailShareContent;
    .locals 1

    .prologue
    .line 101
    new-array v0, p1, [Lcom/umeng/socialize/media/MailShareContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/MailShareContent$1;->newArray(I)[Lcom/umeng/socialize/media/MailShareContent;

    move-result-object v0

    return-object v0
.end method
