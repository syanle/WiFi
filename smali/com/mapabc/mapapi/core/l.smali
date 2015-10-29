.class public Lcom/mapabc/mapapi/core/l;
.super Lcom/mapabc/mapapi/core/ae;
.source "LocTansServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapabc/mapapi/core/ae",
        "<",
        "Lcom/mapabc/mapapi/core/GeoPoint$b;",
        "Lcom/mapabc/mapapi/core/GeoPoint$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/mapabc/mapapi/core/GeoPoint$b;


# direct methods
.method public constructor <init>(Lcom/mapabc/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/mapabc/mapapi/core/ae;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/mapabc/mapapi/core/l;->a:Lcom/mapabc/mapapi/core/GeoPoint$b;

    .line 28
    return-void
.end method

.method private a(Lorg/w3c/dom/Node;Lcom/mapabc/mapapi/core/GeoPoint$b;)Lcom/mapabc/mapapi/core/GeoPoint$b;
    .locals 5

    .prologue
    .line 64
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    return-object p2

    .line 68
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 69
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 70
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 71
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/core/l;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p2, Lcom/mapabc/mapapi/core/GeoPoint$b;->a:D

    .line 69
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    invoke-virtual {p0, v2}, Lcom/mapabc/mapapi/core/l;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p2, Lcom/mapabc/mapapi/core/GeoPoint$b;->b:D

    goto :goto_1
.end method


# virtual methods
.method protected a(Lorg/w3c/dom/NodeList;)Lcom/mapabc/mapapi/core/GeoPoint$b;
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lcom/mapabc/mapapi/core/l;->a:Lcom/mapabc/mapapi/core/GeoPoint$b;

    .line 55
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 57
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 58
    invoke-direct {p0, v3, v1}, Lcom/mapabc/mapapi/core/l;->a(Lorg/w3c/dom/Node;Lcom/mapabc/mapapi/core/GeoPoint$b;)Lcom/mapabc/mapapi/core/GeoPoint$b;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic b(Lorg/w3c/dom/NodeList;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/l;->a(Lorg/w3c/dom/NodeList;)Lcom/mapabc/mapapi/core/GeoPoint$b;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestLines()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 32
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    .line 33
    const-string v0, "&enc=utf-8"

    aput-object v0, v1, v8

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&x1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%f"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mapabc/mapapi/core/l;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/GeoPoint$b;

    iget-wide v5, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 35
    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&y1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%f"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mapabc/mapapi/core/l;->task:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/core/GeoPoint$b;

    iget-wide v6, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 36
    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&a_k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/l;->getmKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 37
    return-object v1
.end method

.method protected getRequestType()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected getServiceCode()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mapabc/mapapi/core/o;->a()Lcom/mapabc/mapapi/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapabc/mapapi/core/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sisserver?config=RGC&resType=xml&flag=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
