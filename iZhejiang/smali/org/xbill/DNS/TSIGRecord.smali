.class public Lorg/xbill/DNS/TSIGRecord;
.super Lorg/xbill/DNS/Record;
.source "TSIGRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x13b8e256a908e5aL


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private error:I

.field private fudge:I

.field private originalID:I

.field private other:[B

.field private signature:[B

.field private timeSigned:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "alg"    # Lorg/xbill/DNS/Name;
    .param p6, "timeSigned"    # Ljava/util/Date;
    .param p7, "fudge"    # I
    .param p8, "signature"    # [B
    .param p9, "originalID"    # I
    .param p10, "error"    # I
    .param p11, "other"    # [B

    .prologue
    .line 58
    const/16 v3, 0xfa

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 59
    const-string v1, "alg"

    invoke-static {v1, p5}, Lorg/xbill/DNS/TSIGRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    .line 60
    iput-object p6, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    .line 61
    const-string v1, "fudge"

    invoke-static {v1, p7}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    .line 62
    iput-object p8, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    .line 63
    const-string v1, "originalID"

    move/from16 v0, p9

    invoke-static {v1, v0}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    .line 64
    const-string v1, "error"

    move/from16 v0, p10

    invoke-static {v1, v0}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    .line 65
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    .line 66
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    return v0
.end method

.method public getFudge()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/xbill/DNS/TSIGRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/TSIGRecord;-><init>()V

    return-object v0
.end method

.method public getOriginalID()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    return v0
.end method

.method public getOther()[B
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    return-object v0
.end method

.method public getTimeSigned()Ljava/util/Date;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    return-object v0
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
    .line 93
    const-string v0, "no text format defined for TSIG"

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 11
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v8, Lorg/xbill/DNS/Name;

    invoke-direct {v8, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    int-to-long v4, v8

    .line 73
    .local v4, "timeHigh":J
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v6

    .line 74
    .local v6, "timeLow":J
    const/16 v8, 0x20

    shl-long v8, v4, v8

    add-long v2, v8, v6

    .line 75
    .local v2, "time":J
    new-instance v8, Ljava/util/Date;

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v2

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    .line 76
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    iput v8, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    .line 78
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 79
    .local v1, "sigLen":I
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v8

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    .line 81
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    iput v8, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    .line 82
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    iput v8, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 85
    .local v0, "otherLen":I
    if-lez v0, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v8

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 101
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v3, "multiline"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v3, "(\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    div-long/2addr v3, v8

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 106
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget v3, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 108
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    const-string v3, "multiline"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    const/16 v4, 0x40

    const-string v5, "\t"

    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_0
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    iget v3, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    invoke-static {v3}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    if-nez v3, :cond_3

    .line 121
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 148
    :goto_1
    const-string v3, "multiline"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 114
    :cond_2
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    invoke-static {v3}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_3
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 124
    const-string v3, "multiline"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    const-string v3, "\n\n\n\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_2
    iget v3, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_6

    .line 129
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    array-length v3, v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    .line 130
    const-string v3, "<invalid BADTIME other data>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :cond_4
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 132
    :cond_5
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    .line 133
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    .line 132
    add-long/2addr v3, v5

    .line 134
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    int-to-long v5, v5

    .line 132
    add-long/2addr v3, v5

    .line 135
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v5, v5

    .line 132
    add-long/2addr v3, v5

    .line 136
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x4

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    int-to-long v5, v5

    .line 132
    add-long/2addr v3, v5

    .line 137
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x5

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    .line 132
    add-long v1, v3, v5

    .line 138
    .local v1, "time":J
    const-string v3, "<server time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v3, Ljava/util/Date;

    mul-long v4, v1, v8

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 140
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 143
    .end local v1    # "time":J
    :cond_6
    const-string v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    invoke-static {v3}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 9
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 197
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 199
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v0, v5, v7

    .line 200
    .local v0, "time":J
    const/16 v5, 0x20

    shr-long v5, v0, v5

    long-to-int v2, v5

    .line 201
    .local v2, "timeHigh":I
    const-wide v5, 0xffffffffL

    and-long v3, v0, v5

    .line 202
    .local v3, "timeLow":J
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 203
    invoke-virtual {p1, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 204
    iget v5, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 206
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    array-length v5, v5

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 207
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 209
    iget v5, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 210
    iget v5, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 212
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    if-eqz v5, :cond_0

    .line 213
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    array-length v5, v5

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 214
    iget-object v5, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_0
.end method
