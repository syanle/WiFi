.class public Lcom/cat/data/LoginData;
.super Ljava/lang/Object;
.source "LoginData.java"


# instance fields
.field private authid:Ljava/lang/String;

.field private countrycode:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private face:Ljava/lang/String;

.field private faceurl:Ljava/lang/String;

.field private memberid:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private point:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cat/data/LoginData;->authid:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrycode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cat/data/LoginData;->countrycode:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cat/data/LoginData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cat/data/LoginData;->face:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cat/data/LoginData;->faceurl:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/cat/data/LoginData;->memberid:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cat/data/LoginData;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cat/data/LoginData;->point:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthid(Ljava/lang/String;)V
    .locals 0
    .param p1, "authid"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cat/data/LoginData;->authid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCountrycode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countrycode"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cat/data/LoginData;->countrycode:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cat/data/LoginData;->email:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 0
    .param p1, "face"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cat/data/LoginData;->face:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFaceurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "faceurl"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cat/data/LoginData;->faceurl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMemberid(Ljava/lang/String;)V
    .locals 0
    .param p1, "memberid"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/cat/data/LoginData;->memberid:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cat/data/LoginData;->nick:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "point"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cat/data/LoginData;->point:Ljava/lang/String;

    .line 53
    return-void
.end method
