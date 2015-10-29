.class public Lorg/xbill/DNS/NXTRecord;
.super Lorg/xbill/DNS/Record;
.source "NXTRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x7ad6aee1673237c0L


# instance fields
.field private bitmap:Ljava/util/BitSet;

.field private next:Lorg/xbill/DNS/Name;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/BitSet;)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "next"    # Lorg/xbill/DNS/Name;
    .param p6, "bitmap"    # Ljava/util/BitSet;

    .prologue
    .line 38
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 39
    const-string v0, "next"

    invoke-static {v0, p5}, Lorg/xbill/DNS/NXTRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    .line 40
    iput-object p6, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    .line 41
    return-void
.end method


# virtual methods
.method public getBitmap()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    return-object v0
.end method

.method public getNext()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/xbill/DNS/NXTRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NXTRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 4
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    .line 59
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    .line 61
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 62
    .local v0, "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 70
    return-void

    .line 64
    :cond_0
    iget-object v2, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;Z)I

    move-result v1

    .line 65
    .local v1, "typecode":I
    if-lez v1, :cond_1

    const/16 v2, 0x80

    if-le v1, v2, :cond_2

    .line 66
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 67
    :cond_2
    iget-object v2, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 6
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v4, Lorg/xbill/DNS/Name;

    invoke-direct {v4, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v4, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    .line 46
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    .line 47
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    .line 48
    .local v0, "bitmapLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 54
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 50
    .local v3, "t":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v4, 0x8

    if-lt v2, v4, :cond_1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v4, 0x1

    rsub-int/lit8 v5, v2, 0x7

    shl-int/2addr v4, v5

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    .line 52
    iget-object v4, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 50
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->length()I

    move-result v1

    .line 78
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    if-lt v0, v1, :cond_0

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 79
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_1
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 5
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 100
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 101
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->length()I

    move-result v1

    .line 102
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 109
    return-void

    .line 103
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    rem-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    :goto_1
    or-int/2addr v2, v3

    .line 104
    rem-int/lit8 v3, v0, 0x8

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_2

    .line 105
    :cond_1
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 106
    const/4 v2, 0x0

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
