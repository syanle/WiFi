.class public Lcom/cat/data/Person;
.super Ljava/lang/Object;
.source "Person.java"


# instance fields
.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private countrycn:Ljava/lang/String;

.field private pinYinName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cat/data/Person;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/cat/data/Person;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrycn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cat/data/Person;->countrycn:Ljava/lang/String;

    return-object v0
.end method

.method public getPinYinName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cat/data/Person;->pinYinName:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cat/data/Person;->code:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/cat/data/Person;->country:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setCountrycn(Ljava/lang/String;)V
    .locals 0
    .param p1, "countrycn"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cat/data/Person;->countrycn:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPinYinName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinYinName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cat/data/Person;->pinYinName:Ljava/lang/String;

    .line 59
    return-void
.end method
