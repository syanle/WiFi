.class public Lcom/pubinfo/wifi_core/core/net/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static domParseElement(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .param p0, "items"    # Lorg/w3c/dom/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pubinfo/wifi_core/core/net/XMLData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pubinfo/wifi_core/core/net/XMLData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lt v7, v12, :cond_0

    .line 129
    return-object p1

    .line 90
    :cond_0
    const/4 v6, 0x0

    .line 91
    .local v6, "element":Lorg/w3c/dom/Element;
    invoke-interface {p0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 92
    .local v10, "node":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    move-object v6, v10

    .line 93
    check-cast v6, Lorg/w3c/dom/Element;

    .line 97
    new-instance v5, Lcom/pubinfo/wifi_core/core/net/XMLData;

    invoke-direct {v5}, Lcom/pubinfo/wifi_core/core/net/XMLData;-><init>()V

    .line 98
    .local v5, "data":Lcom/pubinfo/wifi_core/core/net/XMLData;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/pubinfo/wifi_core/core/net/XMLData;->tagName:Ljava/lang/String;

    .line 99
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 100
    .local v1, "attrs":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    .line 101
    .local v4, "count":I
    if-lez v4, :cond_1

    .line 102
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v5, Lcom/pubinfo/wifi_core/core/net/XMLData;->attributes:Ljava/util/ArrayList;

    .line 103
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-lt v8, v4, :cond_4

    .line 110
    .end local v8    # "j":I
    :cond_1
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 111
    .local v9, "n":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_2

    .line 112
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "str":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 114
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 115
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 116
    iput-object v11, v5, Lcom/pubinfo/wifi_core/core/net/XMLData;->characters:Ljava/lang/String;

    .line 121
    .end local v11    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 123
    .local v2, "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_3

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "childs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    invoke-static {v2, v3}, Lcom/pubinfo/wifi_core/core/net/XmlParser;->domParseElement(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    .end local v1    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v3    # "childs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .end local v4    # "count":I
    .end local v5    # "data":Lcom/pubinfo/wifi_core/core/net/XMLData;
    .end local v9    # "n":Lorg/w3c/dom/Node;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 104
    .restart local v1    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v4    # "count":I
    .restart local v5    # "data":Lcom/pubinfo/wifi_core/core/net/XMLData;
    .restart local v8    # "j":I
    :cond_4
    invoke-static {}, Lcom/pubinfo/wifi_core/core/net/XMLData;->newPullData()Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;

    move-result-object v0

    .line 105
    .local v0, "attr":Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;
    invoke-interface {v1, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;->name:Ljava/lang/String;

    .line 106
    invoke-interface {v1, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;->value:Ljava/lang/String;

    .line 107
    iget-object v12, v5, Lcom/pubinfo/wifi_core/core/net/XMLData;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static parseXmlByDom(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pubinfo/wifi_core/core/net/XMLData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 55
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 58
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 59
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 60
    .local v1, "dom":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 61
    .local v6, "root":Lorg/w3c/dom/Element;
    if-nez v6, :cond_0

    .line 84
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dom":Lorg/w3c/dom/Document;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :goto_0
    return-object v7

    .line 65
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dom":Lorg/w3c/dom/Document;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    invoke-interface {v6, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 71
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    invoke-static {v5, v4}, Lcom/pubinfo/wifi_core/core/net/XmlParser;->domParseElement(Lorg/w3c/dom/NodeList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    .line 68
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    goto :goto_1

    .line 73
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dom":Lorg/w3c/dom/Document;
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 78
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseXmlByPull(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pubinfo/wifi_core/core/net/XMLData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 135
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 136
    .local v1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    const/4 v8, 0x0

    .line 137
    .local v8, "preTag":Ljava/lang/String;
    const/4 v5, 0x0

    .line 139
    .local v5, "isStart":Z
    :try_start_0
    const-string v9, "UTF-8"

    invoke-interface {v7, p0, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 140
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .local v4, "eventType":I
    move-object v2, v1

    .line 141
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .local v2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    :goto_0
    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    move-object v1, v2

    .line 184
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .end local v4    # "eventType":I
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    :goto_1
    return-object v2

    .line 142
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v4    # "eventType":I
    :cond_0
    packed-switch v4, :pswitch_data_0

    :cond_1
    :pswitch_0
    move-object v1, v2

    .line 172
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    move-object v2, v1

    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    goto :goto_0

    .line 144
    :pswitch_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    goto :goto_2

    .line 147
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    :pswitch_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "name":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 149
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v5, :cond_1

    .line 150
    :cond_2
    const/4 v5, 0x1

    .line 151
    invoke-static {v7, v6}, Lcom/pubinfo/wifi_core/core/net/XmlParser;->setData(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/pubinfo/wifi_core/core/net/XMLData;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 153
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    goto :goto_2

    .line 154
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    :cond_3
    invoke-static {v7, v6}, Lcom/pubinfo/wifi_core/core/net/XmlParser;->setData(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/pubinfo/wifi_core/core/net/XMLData;

    move-result-object v0

    .line 155
    .local v0, "data":Lcom/pubinfo/wifi_core/core/net/XMLData;
    if-eqz v8, :cond_4

    .line 156
    iput-object v8, v0, Lcom/pubinfo/wifi_core/core/net/XMLData;->preTag:Ljava/lang/String;

    .line 158
    :cond_4
    move-object v8, v6

    .line 159
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 160
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pubinfo/wifi_core/core/net/XMLData;

    iput-object v6, v9, Lcom/pubinfo/wifi_core/core/net/XMLData;->nextTag:Ljava/lang/String;

    .line 162
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 164
    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    goto :goto_2

    .line 166
    .end local v0    # "data":Lcom/pubinfo/wifi_core/core/net/XMLData;
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .end local v6    # "name":Ljava/lang/String;
    .restart local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    :pswitch_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    if-eqz v9, :cond_1

    .line 167
    const/4 v5, 0x0

    move-object v1, v2

    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    goto :goto_2

    .line 176
    .end local v4    # "eventType":I
    :catch_0
    move-exception v3

    .line 178
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 184
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const/4 v2, 0x0

    goto :goto_1

    .line 179
    :catch_1
    move-exception v3

    .line 181
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 179
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v4    # "eventType":I
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    goto :goto_5

    .line 176
    .end local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    .restart local v1    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pubinfo/wifi_core/core/net/XMLData;>;"
    goto :goto_3

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static parseXmlBySax(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pubinfo/wifi_core/core/net/XMLData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 32
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 35
    .local v2, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v1, Lcom/pubinfo/wifi_core/core/net/XMLContentHandler;

    invoke-direct {v1, p1}, Lcom/pubinfo/wifi_core/core/net/XMLContentHandler;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "handler":Lcom/pubinfo/wifi_core/core/net/XMLContentHandler;
    invoke-virtual {v2, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 37
    invoke-virtual {v1}, Lcom/pubinfo/wifi_core/core/net/XMLContentHandler;->getXmlData()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 49
    .end local v1    # "handler":Lcom/pubinfo/wifi_core/core/net/XMLContentHandler;
    .end local v2    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    return-object v4

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 49
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 43
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static setData(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/pubinfo/wifi_core/core/net/XMLData;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Lcom/pubinfo/wifi_core/core/net/XMLData;

    invoke-direct {v2}, Lcom/pubinfo/wifi_core/core/net/XMLData;-><init>()V

    .line 190
    .local v2, "data":Lcom/pubinfo/wifi_core/core/net/XMLData;
    iput-object p1, v2, Lcom/pubinfo/wifi_core/core/net/XMLData;->tagName:Ljava/lang/String;

    .line 191
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 192
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 193
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/pubinfo/wifi_core/core/net/XMLData;->attributes:Ljava/util/ArrayList;

    .line 194
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_2

    .line 201
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 204
    iput-object v4, v2, Lcom/pubinfo/wifi_core/core/net/XMLData;->characters:Ljava/lang/String;

    .line 207
    :cond_1
    return-object v2

    .line 195
    .end local v4    # "str":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    invoke-static {}, Lcom/pubinfo/wifi_core/core/net/XMLData;->newPullData()Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;

    move-result-object v0

    .line 196
    .local v0, "attr":Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;->name:Ljava/lang/String;

    .line 197
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;->value:Ljava/lang/String;

    .line 198
    iget-object v5, v2, Lcom/pubinfo/wifi_core/core/net/XMLData;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
