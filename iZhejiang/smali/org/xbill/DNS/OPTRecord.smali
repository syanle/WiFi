.class public Lorg/xbill/DNS/OPTRecord;
.super Lorg/xbill/DNS/Record;
.source "OPTRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/OPTRecord$Option;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56cc86868403f582L


# instance fields
.field private options:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "payloadSize"    # I
    .param p2, "xrcode"    # I
    .param p3, "version"    # I

    .prologue
    .line 106
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    .line 107
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "payloadSize"    # I
    .param p2, "xrcode"    # I
    .param p3, "version"    # I
    .param p4, "flags"    # I

    .prologue
    .line 97
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    .line 98
    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;)V
    .locals 6
    .param p1, "payloadSize"    # I
    .param p2, "xrcode"    # I
    .param p3, "version"    # I
    .param p4, "flags"    # I
    .param p5, "options"    # Ljava/util/List;

    .prologue
    .line 72
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v2, 0x29

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 73
    const-string v0, "payloadSize"

    invoke-static {v0, p1}, Lorg/xbill/DNS/OPTRecord;->checkU16(Ljava/lang/String;I)I

    .line 74
    const-string v0, "xrcode"

    invoke-static {v0, p2}, Lorg/xbill/DNS/OPTRecord;->checkU8(Ljava/lang/String;I)I

    .line 75
    const-string v0, "version"

    invoke-static {v0, p3}, Lorg/xbill/DNS/OPTRecord;->checkU8(Ljava/lang/String;I)I

    .line 76
    const-string v0, "flags"

    invoke-static {v0, p4}, Lorg/xbill/DNS/OPTRecord;->checkU16(Ljava/lang/String;I)I

    .line 77
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    .line 78
    if-eqz p5, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtendedRcode()I
    .locals 3

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getFlags()I
    .locals 4

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/xbill/DNS/OPTRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/OPTRecord;-><init>()V

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptions(I)Ljava/util/List;
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 201
    iget-object v3, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-nez v3, :cond_1

    .line 202
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 214
    :cond_0
    :goto_0
    return-object v1

    .line 203
    :cond_1
    const/4 v1, 0x0

    .line 204
    .local v1, "list":Ljava/util/List;
    iget-object v3, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 212
    if-nez v1, :cond_0

    .line 213
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 205
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/OPTRecord$Option;

    .line 206
    .local v2, "opt":Lorg/xbill/DNS/OPTRecord$Option;
    iget v3, v2, Lorg/xbill/DNS/OPTRecord$Option;->code:I

    if-ne v3, p1, :cond_2

    .line 207
    if-nez v1, :cond_4

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .restart local v1    # "list":Ljava/util/List;
    :cond_4
    iget-object v3, v2, Lorg/xbill/DNS/OPTRecord$Option;->data:[B

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getPayloadSize()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/xbill/DNS/OPTRecord;->dclass:I

    return v0
.end method

.method public getVersion()I
    .locals 4

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const-string v0, "no text format defined for OPT"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 5
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v3

    if-lez v3, :cond_0

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v3

    if-gtz v3, :cond_1

    .line 119
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 115
    .local v0, "code":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    .line 116
    .local v2, "len":I
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v1

    .line 117
    .local v1, "data":[B
    iget-object v3, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    new-instance v4, Lorg/xbill/DNS/OPTRecord$Option;

    invoke-direct {v4, v0, v1}, Lorg/xbill/DNS/OPTRecord$Option;-><init>(I[B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_0
    const-string v1, " ; payload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, ", xrcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 138
    const-string v1, ", version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 140
    const-string v1, ", flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 174
    iget-object v2, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-nez v2, :cond_1

    .line 183
    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/OPTRecord$Option;

    .line 179
    .local v1, "opt":Lorg/xbill/DNS/OPTRecord$Option;
    iget v2, v1, Lorg/xbill/DNS/OPTRecord$Option;->code:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 180
    iget-object v2, v1, Lorg/xbill/DNS/OPTRecord$Option;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 181
    iget-object v2, v1, Lorg/xbill/DNS/OPTRecord$Option;->data:[B

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0
.end method
