.class abstract Lorg/xbill/DNS/KEYBase;
.super Lorg/xbill/DNS/Record;
.source "KEYBase.java"


# static fields
.field private static final serialVersionUID:J = 0x302581b9bcadf64eL


# instance fields
.field protected alg:I

.field protected flags:I

.field protected footprint:I

.field protected key:[B

.field protected proto:I

.field protected publicKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IIJIII[B)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J
    .param p6, "flags"    # I
    .param p7, "proto"    # I
    .param p8, "alg"    # I
    .param p9, "key"    # [B

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 33
    const-string v0, "flags"

    invoke-static {v0, p6}, Lorg/xbill/DNS/KEYBase;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 34
    const-string v0, "proto"

    invoke-static {v0, p7}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 35
    const-string v0, "alg"

    invoke-static {v0, p8}, Lorg/xbill/DNS/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 36
    iput-object p9, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 37
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    return v0
.end method

.method public getFootprint()I
    .locals 9

    .prologue
    const v8, 0xffff

    .line 108
    iget v6, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    if-ltz v6, :cond_0

    .line 109
    iget v6, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 136
    :goto_0
    return v6

    .line 111
    :cond_0
    const/4 v2, 0x0

    .line 113
    .local v2, "foot":I
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 114
    .local v4, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lorg/xbill/DNS/KEYBase;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 115
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    .line 117
    .local v5, "rdata":[B
    iget v6, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 118
    array-length v6, v5

    add-int/lit8 v6, v6, -0x3

    aget-byte v6, v5, v6

    and-int/lit16 v0, v6, 0xff

    .line 119
    .local v0, "d1":I
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    aget-byte v6, v5, v6

    and-int/lit16 v1, v6, 0xff

    .line 120
    .local v1, "d2":I
    shl-int/lit8 v6, v0, 0x8

    add-int v2, v6, v1

    .line 135
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :goto_1
    and-int v6, v2, v8

    iput v6, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    .line 136
    iget v6, p0, Lorg/xbill/DNS/KEYBase;->footprint:I

    goto :goto_0

    .line 124
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-lt v3, v6, :cond_3

    .line 129
    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 130
    aget-byte v6, v5, v3

    and-int/lit16 v0, v6, 0xff

    .line 131
    .restart local v0    # "d1":I
    shl-int/lit8 v6, v0, 0x8

    add-int/2addr v2, v6

    .line 133
    .end local v0    # "d1":I
    :cond_2
    shr-int/lit8 v6, v2, 0x10

    and-int/2addr v6, v8

    add-int/2addr v2, v6

    goto :goto_1

    .line 125
    :cond_3
    aget-byte v6, v5, v3

    and-int/lit16 v0, v6, 0xff

    .line 126
    .restart local v0    # "d1":I
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v1, v6, 0xff

    .line 127
    .restart local v1    # "d2":I
    shl-int/lit8 v6, v0, 0x8

    add-int/2addr v6, v1

    add-int/2addr v2, v6

    .line 124
    add-int/lit8 v3, v3, 0x2

    goto :goto_2
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    return v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 149
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->publicKey:Ljava/security/PublicKey;

    goto :goto_0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    .line 42
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    .line 43
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    .line 44
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    .line 46
    :cond_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 53
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget v1, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const-string v1, " (\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    const/16 v2, 0x40

    const-string v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, " ; key_tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget-object v1, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 154
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 155
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->proto:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 156
    iget v0, p0, Lorg/xbill/DNS/KEYBase;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 157
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/KEYBase;->key:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 159
    :cond_0
    return-void
.end method
