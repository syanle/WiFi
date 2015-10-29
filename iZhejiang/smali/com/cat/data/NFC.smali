.class public Lcom/cat/data/NFC;
.super Ljava/lang/Object;
.source "NFC.java"


# instance fields
.field private appid:Ljava/lang/String;

.field private random:Ljava/lang/String;

.field private seqid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cat/data/NFC;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getRandom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cat/data/NFC;->random:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cat/data/NFC;->seqid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cat/data/NFC;->appid:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setRandom(Ljava/lang/String;)V
    .locals 0
    .param p1, "random"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cat/data/NFC;->random:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSeqid(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqid"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cat/data/NFC;->seqid:Ljava/lang/String;

    .line 23
    return-void
.end method
