.class Lcom/umeng/socialize/bean/n;
.super Ljava/lang/Object;
.source "QQShareMsg.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/umeng/socialize/bean/QQShareMsg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/umeng/socialize/bean/QQShareMsg;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/bean/QQShareMsg;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/umeng/socialize/bean/QQShareMsg;
    .locals 1

    .prologue
    .line 247
    new-array v0, p1, [Lcom/umeng/socialize/bean/QQShareMsg;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/n;->a(Landroid/os/Parcel;)Lcom/umeng/socialize/bean/QQShareMsg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/n;->a(I)[Lcom/umeng/socialize/bean/QQShareMsg;

    move-result-object v0

    return-object v0
.end method
