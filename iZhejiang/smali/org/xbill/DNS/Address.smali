.class public final Lorg/xbill/DNS/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field public static final IPv4:I = 0x1

.field public static final IPv6:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/ARecord;

    .line 250
    .local v0, "a":Lorg/xbill/DNS/ARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static addressLength(I)I
    .locals 2
    .param p0, "family"    # I

    .prologue
    .line 365
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 366
    const/4 v0, 0x4

    .line 368
    :goto_0
    return v0

    .line 367
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 368
    const/16 v0, 0x10

    goto :goto_0

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static familyOf(Ljava/net/InetAddress;)I
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 351
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    .line 353
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 354
    const/4 v0, 0x2

    goto :goto_0

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 279
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/net/InetAddress;

    const/4 v5, 0x0

    aput-object v0, v1, v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    return-object v1

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-static {p0}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 282
    .local v4, "records":[Lorg/xbill/DNS/Record;
    array-length v5, v4

    new-array v1, v5, [Ljava/net/InetAddress;

    .line 283
    .local v1, "addrs":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 284
    aget-object v5, v4, v3

    invoke-static {p0, v5}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v5

    aput-object v5, v1, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 300
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 301
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 302
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 305
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 4
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown address family"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_0
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    .line 324
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 325
    :cond_1
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 262
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 265
    :goto_0
    return-object v2

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {p0}, Lorg/xbill/DNS/Address;->lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 265
    .local v1, "records":[Lorg/xbill/DNS/Record;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p0, v2}, Lorg/xbill/DNS/Address;->addrFromRecord(Ljava/lang/String;Lorg/xbill/DNS/Record;)Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_0
.end method

.method public static getHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 5
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {p0}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 337
    .local v0, "name":Lorg/xbill/DNS/Name;
    new-instance v3, Lorg/xbill/DNS/Lookup;

    const/16 v4, 0xc

    invoke-direct {v3, v0, v4}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v3}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 338
    .local v2, "records":[Lorg/xbill/DNS/Record;
    if-nez v2, :cond_0

    .line 339
    new-instance v3, Ljava/net/UnknownHostException;

    const-string v4, "unknown address"

    invoke-direct {v3, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v2, v3

    check-cast v1, Lorg/xbill/DNS/PTRRecord;

    .line 341
    .local v1, "ptr":Lorg/xbill/DNS/PTRRecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isDottedQuad(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 210
    .local v0, "address":[B
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static lookupHostName(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/Lookup;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 238
    .local v1, "records":[Lorg/xbill/DNS/Record;
    if-nez v1, :cond_0

    .line 239
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "unknown host"

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v1    # "records":[Lorg/xbill/DNS/Record;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "invalid name"

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    .restart local v1    # "records":[Lorg/xbill/DNS/Record;
    :cond_0
    return-object v1
.end method

.method private static parseV4(Ljava/lang/String;)[B
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x4

    new-array v7, v9, [B

    .line 29
    .local v7, "values":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 31
    .local v5, "length":I
    const/4 v1, 0x0

    .line 32
    .local v1, "currentOctet":I
    const/4 v3, 0x0

    .line 33
    .local v3, "currentValue":I
    const/4 v6, 0x0

    .line 34
    .local v6, "numDigits":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "currentOctet":I
    .local v2, "currentOctet":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 63
    if-eq v2, v10, :cond_7

    move-object v7, v8

    .line 69
    .end local v7    # "values":[B
    :goto_1
    return-object v7

    .line 35
    .restart local v7    # "values":[B
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 36
    .local v0, "c":C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_3

    const/16 v9, 0x39

    if-gt v0, v9, :cond_3

    .line 38
    if-ne v6, v10, :cond_1

    move-object v7, v8

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    if-lez v6, :cond_2

    if-nez v3, :cond_2

    move-object v7, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 44
    mul-int/lit8 v3, v3, 0xa

    .line 45
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v3, v9

    .line 47
    const/16 v9, 0xff

    if-le v3, v9, :cond_9

    move-object v7, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/16 v9, 0x2e

    if-ne v0, v9, :cond_6

    .line 51
    if-ne v2, v10, :cond_4

    move-object v7, v8

    .line 52
    goto :goto_1

    .line 54
    :cond_4
    if-nez v6, :cond_5

    move-object v7, v8

    .line 55
    goto :goto_1

    .line 56
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "currentOctet":I
    .restart local v1    # "currentOctet":I
    int-to-byte v9, v3

    aput-byte v9, v7, v2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v6, 0x0

    .line 34
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "currentOctet":I
    .restart local v2    # "currentOctet":I
    goto :goto_0

    :cond_6
    move-object v7, v8

    .line 60
    goto :goto_1

    .line 66
    .end local v0    # "c":C
    :cond_7
    if-nez v6, :cond_8

    move-object v7, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_8
    int-to-byte v8, v3

    aput-byte v8, v7, v2

    goto :goto_1

    .restart local v0    # "c":C
    :cond_9
    move v1, v2

    .end local v2    # "currentOctet":I
    .restart local v1    # "currentOctet":I
    goto :goto_2
.end method

.method private static parseV6(Ljava/lang/String;)[B
    .locals 19
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v13, -0x1

    .line 75
    .local v13, "range":I
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 77
    .local v4, "data":[B
    const-string v17, ":"

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 79
    .local v14, "tokens":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 80
    .local v7, "first":I
    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v12, v17, -0x1

    .line 82
    .local v12, "last":I
    const/16 v17, 0x0

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_0

    .line 86
    sub-int v17, v12, v7

    if-lez v17, :cond_3

    const/16 v17, 0x1

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 92
    :cond_0
    aget-object v17, v14, v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 96
    sub-int v17, v12, v7

    if-lez v17, :cond_4

    add-int/lit8 v17, v12, -0x1

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    .line 97
    add-int/lit8 v12, v12, -0x1

    .line 102
    :cond_1
    sub-int v17, v12, v7

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 103
    const/4 v4, 0x0

    .line 156
    .end local v4    # "data":[B
    :cond_2
    :goto_0
    return-object v4

    .line 89
    .restart local v4    # "data":[B
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 99
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 106
    :cond_5
    move v8, v7

    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    move v10, v9

    .end local v9    # "j":I
    .local v10, "j":I
    :goto_1
    if-le v8, v12, :cond_6

    move v9, v10

    .line 146
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :goto_2
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v9, v0, :cond_12

    if-gez v13, :cond_12

    .line 147
    const/4 v4, 0x0

    goto :goto_0

    .line 107
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_6
    aget-object v17, v14, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_8

    .line 108
    if-ltz v13, :cond_7

    .line 109
    const/4 v4, 0x0

    goto :goto_0

    .line 110
    :cond_7
    move v13, v10

    move v9, v10

    .line 106
    .end local v10    # "j":I
    .restart local v9    # "j":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_1

    .line 114
    :cond_8
    aget-object v17, v14, v8

    const/16 v18, 0x2e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-ltz v17, :cond_d

    .line 116
    if-ge v8, v12, :cond_9

    .line 117
    const/4 v4, 0x0

    goto :goto_0

    .line 119
    :cond_9
    const/16 v17, 0x6

    move/from16 v0, v17

    if-le v8, v0, :cond_a

    .line 120
    const/4 v4, 0x0

    goto :goto_0

    .line 121
    :cond_a
    aget-object v17, v14, v8

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v15

    .line 122
    .local v15, "v4addr":[B
    if-nez v15, :cond_b

    .line 123
    const/4 v4, 0x0

    goto :goto_0

    .line 124
    :cond_b
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-lt v11, v0, :cond_c

    move v9, v10

    .line 126
    .end local v10    # "j":I
    .restart local v9    # "j":I
    goto :goto_2

    .line 125
    .end local v9    # "j":I
    .restart local v10    # "j":I
    :cond_c
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    aget-byte v17, v15, v11

    aput-byte v17, v4, v10

    .line 124
    add-int/lit8 v11, v11, 0x1

    move v10, v9

    .end local v9    # "j":I
    .restart local v10    # "j":I
    goto :goto_4

    .line 130
    .end local v11    # "k":I
    .end local v15    # "v4addr":[B
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_5
    :try_start_0
    aget-object v17, v14, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v11, v0, :cond_f

    .line 135
    aget-object v17, v14, v8

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 136
    .local v16, "x":I
    const v17, 0xffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_e

    if-gez v16, :cond_11

    .line 137
    :cond_e
    const/4 v4, 0x0

    goto :goto_0

    .line 131
    .end local v16    # "x":I
    :cond_f
    aget-object v17, v14, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 132
    .local v3, "c":C
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Character;->digit(CI)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-gez v17, :cond_10

    .line 133
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 130
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 138
    .end local v3    # "c":C
    .restart local v16    # "x":I
    :cond_11
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "j":I
    .restart local v9    # "j":I
    ushr-int/lit8 v17, v16, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    :try_start_1
    aput-byte v17, v4, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .restart local v10    # "j":I
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    :try_start_2
    aput-byte v17, v4, v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move v9, v10

    .line 140
    .end local v10    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_3

    .line 141
    .end local v9    # "j":I
    .end local v16    # "x":I
    .restart local v10    # "j":I
    :catch_0
    move-exception v5

    move v9, v10

    .line 142
    .end local v10    # "j":I
    .local v5, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "j":I
    :goto_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 149
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "k":I
    :cond_12
    if-ltz v13, :cond_2

    .line 150
    rsub-int/lit8 v6, v9, 0x10

    .line 151
    .local v6, "empty":I
    add-int v17, v13, v6

    sub-int v18, v9, v13

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v13, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    move v8, v13

    :goto_7
    add-int v17, v13, v6

    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 153
    const/16 v17, 0x0

    aput-byte v17, v4, v8

    .line 152
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 141
    .end local v6    # "empty":I
    .restart local v11    # "k":I
    .restart local v16    # "x":I
    :catch_1
    move-exception v5

    goto :goto_6
.end method

.method public static toArray(Ljava/lang/String;)[I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/String;I)[I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .prologue
    .line 167
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 168
    .local v0, "byteArray":[B
    if-nez v0, :cond_1

    .line 169
    const/4 v2, 0x0

    .line 173
    :cond_0
    return-object v2

    .line 170
    :cond_1
    array-length v3, v0

    new-array v2, v3, [I

    .line 171
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 172
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;I)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "family"    # I

    .prologue
    .line 194
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 195
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV4(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 197
    invoke-static {p0}, Lorg/xbill/DNS/Address;->parseV6(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDottedQuad([B)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # [B

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toDottedQuad([I)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # [I

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
