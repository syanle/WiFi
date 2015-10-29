.class public Lorg/jsoup/nodes/TextNode;
.super Lorg/jsoup/nodes/Node;
.source "TextNode.java"


# static fields
.field private static final TEXT_KEY:Ljava/lang/String; = "text"


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/jsoup/nodes/Node;-><init>()V

    .line 27
    iput-object p2, p0, Lorg/jsoup/nodes/TextNode;->baseUri:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 2
    .param p0, "encodedText"    # Ljava/lang/String;
    .param p1, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v1, v0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private ensureAttributes()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 134
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "text"

    iget-object v2, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method static lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {p0}, Lorg/jsoup/helper/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    return-object p0
.end method

.method static stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 171
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 141
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 153
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public attributes()Lorg/jsoup/nodes/Attributes;
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 147
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 159
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBlank()Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "#text"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 6
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/TextNode;->indent(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V

    .line 96
    :cond_2
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-static {v0}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    .line 98
    .local v4, "normaliseWhite":Z
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V

    .line 99
    return-void

    .end local v4    # "normaliseWhite":Z
    :cond_3
    move v4, v3

    .line 96
    goto :goto_0
.end method

.method outerHtmlTail(Ljava/lang/StringBuilder;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 101
    return-void
.end method

.method public removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 1
    .param p1, "attributeKey"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/jsoup/nodes/TextNode;->ensureAttributes()V

    .line 165
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public splitText(I)Lorg/jsoup/nodes/TextNode;
    .locals 7
    .param p1, "offset"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    if-ltz p1, :cond_1

    move v3, v4

    :goto_0
    const-string v6, "Split offset must be not be negative"

    invoke-static {v3, v6}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 80
    iget-object v3, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_2

    move v3, v4

    :goto_1
    const-string v6, "Split offset must not be greater than current text length"

    invoke-static {v3, v6}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "head":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "tail":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/TextNode;->text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    .line 85
    new-instance v2, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->baseUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v2, "tailNode":Lorg/jsoup/nodes/TextNode;
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v4, v4, [Lorg/jsoup/nodes/Node;

    aput-object v2, v4, v5

    invoke-virtual {v3, v6, v4}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    .line 89
    :cond_0
    return-object v2

    .end local v0    # "head":Ljava/lang/String;
    .end local v1    # "tail":Ljava/lang/String;
    .end local v2    # "tailNode":Lorg/jsoup/nodes/TextNode;
    :cond_1
    move v3, v5

    .line 79
    goto :goto_0

    :cond_2
    move v3, v5

    .line 80
    goto :goto_1
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/nodes/TextNode;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/jsoup/nodes/TextNode;->text:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/jsoup/nodes/TextNode;->attributes:Lorg/jsoup/nodes/Attributes;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
