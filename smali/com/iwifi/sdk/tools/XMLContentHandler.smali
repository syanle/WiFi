.class public Lcom/iwifi/sdk/tools/XMLContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLContentHandler.java"


# static fields
.field private static final STATE_END:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_START:I = 0x1


# instance fields
.field private mCurrentTag:Ljava/lang/String;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iwifi/sdk/tools/XMLData;",
            ">;"
        }
    .end annotation
.end field

.field private mParseTag:Ljava/lang/String;

.field private mPreviousTag:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iwifi/sdk/tools/XMLContentHandler;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mParseTag:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mCurrentTag:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mPreviousTag:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mState:I

    .line 30
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v1, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mParseTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mCurrentTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mParseTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 44
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iwifi/sdk/tools/XMLData;

    iput-object v0, v1, Lcom/iwifi/sdk/tools/XMLData;->characters:Ljava/lang/String;

    .line 56
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 51
    .restart local v0    # "data":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iwifi/sdk/tools/XMLData;

    iput-object v0, v1, Lcom/iwifi/sdk/tools/XMLData;->characters:Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 62
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mParseTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mState:I

    .line 71
    :cond_0
    return-void
.end method

.method public getXmlData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iwifi/sdk/tools/XMLData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 77
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 83
    iput-object p2, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mCurrentTag:Ljava/lang/String;

    .line 84
    iget-object v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mParseTag:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 85
    iget-object v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mParseTag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mState:I

    if-ne v4, v5, :cond_2

    .line 86
    :cond_0
    iput v5, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mState:I

    .line 87
    new-instance v2, Lcom/iwifi/sdk/tools/XMLData;

    invoke-direct {v2}, Lcom/iwifi/sdk/tools/XMLData;-><init>()V

    .line 88
    .local v2, "data":Lcom/iwifi/sdk/tools/XMLData;
    iput-object p2, v2, Lcom/iwifi/sdk/tools/XMLData;->tagName:Ljava/lang/String;

    .line 89
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 90
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/iwifi/sdk/tools/XMLData;->attributes:Ljava/util/ArrayList;

    .line 92
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_3

    .line 99
    .end local v3    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v1    # "count":I
    .end local v2    # "data":Lcom/iwifi/sdk/tools/XMLData;
    :cond_2
    :goto_1
    return-void

    .line 93
    .restart local v1    # "count":I
    .restart local v2    # "data":Lcom/iwifi/sdk/tools/XMLData;
    .restart local v3    # "i":I
    :cond_3
    invoke-static {}, Lcom/iwifi/sdk/tools/XMLData;->newPullData()Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;

    move-result-object v0

    .line 94
    .local v0, "attr":Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;->name:Ljava/lang/String;

    .line 95
    iget-object v4, v0, Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;->name:Ljava/lang/String;

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;->value:Ljava/lang/String;

    .line 96
    iget-object v4, v2, Lcom/iwifi/sdk/tools/XMLData;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "attr":Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;
    .end local v1    # "count":I
    .end local v2    # "data":Lcom/iwifi/sdk/tools/XMLData;
    .end local v3    # "i":I
    :cond_4
    new-instance v2, Lcom/iwifi/sdk/tools/XMLData;

    invoke-direct {v2}, Lcom/iwifi/sdk/tools/XMLData;-><init>()V

    .line 103
    .restart local v2    # "data":Lcom/iwifi/sdk/tools/XMLData;
    iput-object p2, v2, Lcom/iwifi/sdk/tools/XMLData;->tagName:Ljava/lang/String;

    .line 104
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 105
    .restart local v1    # "count":I
    if-lez v1, :cond_5

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/iwifi/sdk/tools/XMLData;->attributes:Ljava/util/ArrayList;

    .line 107
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-lt v3, v1, :cond_8

    .line 114
    .end local v3    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mPreviousTag:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 115
    iget-object v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mPreviousTag:Ljava/lang/String;

    iput-object v4, v2, Lcom/iwifi/sdk/tools/XMLData;->preTag:Ljava/lang/String;

    .line 117
    :cond_6
    iput-object p2, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mPreviousTag:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 119
    iget-object v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iwifi/sdk/tools/XMLData;

    iput-object p2, v4, Lcom/iwifi/sdk/tools/XMLData;->nextTag:Ljava/lang/String;

    .line 121
    :cond_7
    iget-object v4, p0, Lcom/iwifi/sdk/tools/XMLContentHandler;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    .restart local v3    # "i":I
    :cond_8
    invoke-static {}, Lcom/iwifi/sdk/tools/XMLData;->newPullData()Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;

    move-result-object v0

    .line 109
    .restart local v0    # "attr":Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;->name:Ljava/lang/String;

    .line 110
    iget-object v4, v0, Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;->name:Ljava/lang/String;

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;->value:Ljava/lang/String;

    .line 111
    iget-object v4, v2, Lcom/iwifi/sdk/tools/XMLData;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
