.class public Lcom/cat/data/UpLoadData;
.super Ljava/lang/Object;
.source "UpLoadData.java"


# instance fields
.field private faceimg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaceimg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cat/data/UpLoadData;->faceimg:Ljava/lang/String;

    return-object v0
.end method

.method public setFaceimg(Ljava/lang/String;)V
    .locals 0
    .param p1, "faceimg"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cat/data/UpLoadData;->faceimg:Ljava/lang/String;

    .line 18
    return-void
.end method
