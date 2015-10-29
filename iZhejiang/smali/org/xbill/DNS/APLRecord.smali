.class public Lorg/xbill/DNS/APLRecord;
.super Lorg/xbill/DNS/Record;
.source "APLRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/APLRecord$Element;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x12b5acebae8a7fb8L


# instance fields
.field private elements:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "elements"    # Ljava/util/List;

    .prologue
    .line 115
    const/16 v2, 0x2a

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 117
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 118
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 119
    .local v8, "o":Ljava/lang/Object;
    instance-of v0, v8, Lorg/xbill/DNS/APLRecord$Element;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v6, v8

    .line 122
    check-cast v6, Lorg/xbill/DNS/APLRecord$Element;

    .line 123
    .local v6, "element":Lorg/xbill/DNS/APLRecord$Element;
    iget v0, v6, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 124
    iget v0, v6, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$0(II)Z
    .locals 1

    .prologue
    .line 100
    invoke-static {p0, p1}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v0

    return v0
.end method

.method private static addressLength([B)I
    .locals 2
    .param p0, "addr"    # [B

    .prologue
    .line 253
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 257
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 254
    :cond_0
    aget-byte v1, p0, v0

    if-eqz v1, :cond_1

    .line 255
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 253
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static parseAddress([BI)[B
    .locals 3
    .param p0, "in"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    array-length v1, p0

    if-le v1, p1, :cond_0

    .line 136
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "invalid address length"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    array-length v1, p0

    if-ne v1, p1, :cond_1

    .line 141
    .end local p0    # "in":[B
    :goto_0
    return-object p0

    .line 139
    .restart local p0    # "in":[B
    :cond_1
    new-array v0, p1, [B

    .line 140
    .local v0, "out":[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 141
    goto :goto_0
.end method

.method private static validatePrefixLength(II)Z
    .locals 3
    .param p0, "family"    # I
    .param p1, "prefixLength"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    if-ltz p1, :cond_0

    const/16 v2, 0x100

    if-lt p1, v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    if-ne p0, v1, :cond_2

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    .line 104
    :cond_2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    const/16 v2, 0x80

    if-gt p1, v2, :cond_0

    :cond_3
    move v0, v1

    .line 106
    goto :goto_0
.end method


# virtual methods
.method public getElements()Ljava/util/List;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/APLRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 17
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v15, Ljava/util/ArrayList;

    const/16 v16, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 177
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v14

    .line 178
    .local v14, "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v14}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v15

    if-nez v15, :cond_0

    .line 230
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 231
    return-void

    .line 181
    :cond_0
    const/4 v8, 0x0

    .line 182
    .local v8, "negative":Z
    const/4 v6, 0x0

    .line 183
    .local v6, "family":I
    const/4 v9, 0x0

    .line 185
    .local v9, "prefix":I
    iget-object v11, v14, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    .line 186
    .local v11, "s":Ljava/lang/String;
    const/4 v13, 0x0

    .line 187
    .local v13, "start":I
    const-string v15, "!"

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 188
    const/4 v8, 0x1

    .line 189
    const/4 v13, 0x1

    .line 191
    :cond_1
    const/16 v15, 0x3a

    invoke-virtual {v11, v15, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 192
    .local v4, "colon":I
    if-gez v4, :cond_2

    .line 193
    const-string v15, "invalid address prefix element"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v15

    throw v15

    .line 194
    :cond_2
    const/16 v15, 0x2f

    invoke-virtual {v11, v15, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 195
    .local v12, "slash":I
    if-gez v12, :cond_3

    .line 196
    const-string v15, "invalid address prefix element"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v15

    throw v15

    .line 198
    :cond_3
    invoke-virtual {v11, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "familyString":Ljava/lang/String;
    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v11, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "addressString":Ljava/lang/String;
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, "prefixString":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 208
    const/4 v15, 0x1

    if-eq v6, v15, :cond_4

    const/4 v15, 0x2

    if-eq v6, v15, :cond_4

    .line 209
    const-string v15, "unknown family"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v15

    throw v15

    .line 205
    :catch_0
    move-exception v5

    .line 206
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v15, "invalid family"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v15

    throw v15

    .line 212
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 218
    invoke-static {v6, v9}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v15

    if-nez v15, :cond_5

    .line 219
    const-string v15, "invalid prefix length"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v15

    throw v15

    .line 214
    :catch_1
    move-exception v5

    .line 215
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    const-string v15, "invalid prefix length"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v15

    throw v15

    .line 222
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    invoke-static {v2, v6}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v3

    .line 223
    .local v3, "bytes":[B
    if-nez v3, :cond_6

    .line 224
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "invalid IP address "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v15

    throw v15

    .line 227
    :cond_6
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 228
    .local v1, "address":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    new-instance v16, Lorg/xbill/DNS/APLRecord$Element;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v1, v9}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 9
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 147
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v5

    if-nez v5, :cond_0

    .line 171
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 149
    .local v1, "family":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 150
    .local v4, "prefix":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    .line 151
    .local v7, "length":I
    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_1

    move v2, v8

    .line 152
    .local v2, "negative":Z
    :goto_1
    and-int/lit16 v7, v7, -0x81

    .line 154
    invoke-virtual {p1, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v3

    .line 156
    .local v3, "data":[B
    invoke-static {v1, v4}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 157
    new-instance v5, Lorg/xbill/DNS/WireParseException;

    const-string v8, "invalid prefix length"

    invoke-direct {v5, v8}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    .end local v2    # "negative":Z
    .end local v3    # "data":[B
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 160
    .restart local v2    # "negative":Z
    .restart local v3    # "data":[B
    :cond_2
    if-eq v1, v8, :cond_3

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 162
    :cond_3
    invoke-static {v1}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v5

    .line 161
    invoke-static {v3, v5}, Lorg/xbill/DNS/APLRecord;->parseAddress([BI)[B

    move-result-object v3

    .line 163
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    .line 164
    .local v6, "addr":Ljava/net/InetAddress;
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    invoke-direct {v0, v2, v6, v4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 168
    .end local v6    # "addr":Ljava/net/InetAddress;
    .local v0, "element":Lorg/xbill/DNS/APLRecord$Element;
    :goto_2
    iget-object v5, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v0    # "element":Lorg/xbill/DNS/APLRecord$Element;
    :cond_4
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;ILorg/xbill/DNS/APLRecord$Element;)V

    .restart local v0    # "element":Lorg/xbill/DNS/APLRecord$Element;
    goto :goto_2
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 237
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/APLRecord$Element;

    .line 238
    .local v0, "element":Lorg/xbill/DNS/APLRecord$Element;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 8
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 262
    iget-object v6, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 285
    return-void

    .line 263
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/APLRecord$Element;

    .line 264
    .local v2, "element":Lorg/xbill/DNS/APLRecord$Element;
    const/4 v4, 0x0

    .line 266
    .local v4, "length":I
    iget v6, v2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 267
    iget v6, v2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 269
    :cond_1
    iget-object v0, v2, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 270
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 271
    .local v1, "data":[B
    invoke-static {v1}, Lorg/xbill/DNS/APLRecord;->addressLength([B)I

    move-result v4

    .line 276
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_1
    move v5, v4

    .line 277
    .local v5, "wlength":I
    iget-boolean v6, v2, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-eqz v6, :cond_2

    .line 278
    or-int/lit16 v5, v5, 0x80

    .line 280
    :cond_2
    iget v6, v2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    invoke-virtual {p1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 281
    iget v6, v2, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-virtual {p1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 282
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 283
    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    goto :goto_0

    .line 273
    .end local v1    # "data":[B
    .end local v5    # "wlength":I
    :cond_3
    iget-object v1, v2, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v1, [B

    .line 274
    .restart local v1    # "data":[B
    array-length v4, v1

    goto :goto_1
.end method
