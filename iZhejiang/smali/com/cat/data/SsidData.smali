.class public Lcom/cat/data/SsidData;
.super Ljava/lang/Object;
.source "SsidData.java"


# instance fields
.field private level:I

.field private logo:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private nettype:Ljava/lang/String;

.field private password:I

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/cat/data/SsidData;->level:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cat/data/SsidData;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cat/data/SsidData;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getNettype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cat/data/SsidData;->nettype:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/cat/data/SsidData;->password:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cat/data/SsidData;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/cat/data/SsidData;->level:I

    .line 27
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cat/data/SsidData;->logo:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cat/data/SsidData;->mac:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setNettype(Ljava/lang/String;)V
    .locals 0
    .param p1, "nettype"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cat/data/SsidData;->nettype:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPassword(I)V
    .locals 0
    .param p1, "password"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/cat/data/SsidData;->password:I

    .line 21
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cat/data/SsidData;->ssid:Ljava/lang/String;

    .line 33
    return-void
.end method
