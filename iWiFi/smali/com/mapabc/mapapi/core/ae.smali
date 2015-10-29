.class public abstract Lcom/mapabc/mapapi/core/ae;
.super Lcom/mapabc/mapapi/core/t;
.source "XmlResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mapabc/mapapi/core/t",
        "<TT;TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/mapabc/mapapi/core/t;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ae;->a:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 101
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "ppppppppShitJava"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 103
    if-ltz v1, :cond_0

    .line 104
    const-string v2, "ppppppppShitJava"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/mapabc/mapapi/core/ae;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract b(Lorg/w3c/dom/NodeList;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")TV;"
        }
    .end annotation
.end method

.method protected b(Ljava/io/InputStream;)Lorg/w3c/dom/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ae;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/mapabc/mapapi/core/e;->c(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method protected loadData(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/ae;->b(Ljava/io/InputStream;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/ae;->b(Lorg/w3c/dom/NodeList;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    if-eqz p1, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
