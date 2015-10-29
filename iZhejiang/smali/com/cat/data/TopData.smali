.class public Lcom/cat/data/TopData;
.super Ljava/lang/Object;
.source "TopData.java"


# instance fields
.field private iconid:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cat/data/TopData;->iconid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cat/data/TopData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cat/data/TopData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cat/data/TopData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cat/data/TopData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setIconid(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconid"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cat/data/TopData;->iconid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cat/data/TopData;->id:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cat/data/TopData;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cat/data/TopData;->url:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cat/data/TopData;->value:Ljava/lang/String;

    .line 31
    return-void
.end method
