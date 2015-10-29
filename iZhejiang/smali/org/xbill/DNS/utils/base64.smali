.class public Lorg/xbill/DNS/utils/base64;
.super Ljava/lang/Object;
.source "base64.java"


# static fields
.field private static final Base64:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatString([BILjava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B
    .param p1, "lineLength"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "addClose"    # Z

    .prologue
    .line 71
    invoke-static {p0}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 74
    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int v3, v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    if-eqz p3, :cond_1

    .line 78
    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_1
    :goto_1
    add-int/2addr v0, p1

    goto :goto_0

    .line 81
    :cond_2
    add-int v3, v0, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 98
    .local v5, "raw":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v5

    if-lt v2, v8, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 103
    .local v3, "in":[B
    array-length v8, v3

    rem-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 104
    const/4 v8, 0x0

    .line 142
    :goto_1
    return-object v8

    .line 99
    .end local v3    # "in":[B
    :cond_0
    aget-byte v8, v5, v2

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 100
    aget-byte v8, v5, v2

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .restart local v3    # "in":[B
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 108
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 110
    .local v1, "ds":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    :goto_2
    array-length v8, v3

    add-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    if-lt v2, v8, :cond_3

    .line 142
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto :goto_1

    .line 111
    :cond_3
    const/4 v8, 0x4

    new-array v6, v8, [S

    .line 112
    .local v6, "s":[S
    const/4 v8, 0x3

    new-array v7, v8, [S

    .line 114
    .local v7, "t":[S
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    const/4 v8, 0x4

    if-lt v4, v8, :cond_4

    .line 117
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-short v9, v6, v9

    shl-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 118
    const/4 v8, 0x2

    aget-short v8, v6, v8

    const/16 v9, 0x40

    if-ne v8, v9, :cond_5

    .line 119
    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, -0x1

    aput-short v10, v7, v9

    aput-short v10, v7, v8

    .line 120
    const/4 v8, 0x1

    aget-short v8, v6, v8

    and-int/lit8 v8, v8, 0xf

    if-eqz v8, :cond_7

    .line 121
    const/4 v8, 0x0

    goto :goto_1

    .line 115
    :cond_4
    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    mul-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v4

    aget-byte v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v6, v4

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 123
    :cond_5
    const/4 v8, 0x3

    aget-short v8, v6, v8

    const/16 v9, 0x40

    if-ne v8, v9, :cond_6

    .line 124
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-short v9, v6, v9

    shl-int/lit8 v9, v9, 0x4

    const/4 v10, 0x2

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 125
    const/4 v8, 0x2

    const/4 v9, -0x1

    aput-short v9, v7, v8

    .line 126
    const/4 v8, 0x2

    aget-short v8, v6, v8

    and-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_7

    .line 127
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 130
    :cond_6
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-short v9, v6, v9

    shl-int/lit8 v9, v9, 0x4

    const/4 v10, 0x2

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 131
    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-short v9, v6, v9

    shl-int/lit8 v9, v9, 0x6

    const/4 v10, 0x3

    aget-short v10, v6, v10

    add-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 135
    :cond_7
    const/4 v4, 0x0

    :goto_4
    const/4 v8, 0x3

    if-lt v4, v8, :cond_8

    .line 110
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 136
    :cond_8
    :try_start_0
    aget-short v8, v7, v4

    if-ltz v8, :cond_9

    .line 137
    aget-short v8, v7, v4

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 139
    :catch_0
    move-exception v8

    goto :goto_5
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 12
    .param p0, "b"    # [B

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 28
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    if-lt v0, v5, :cond_0

    .line 58
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    return-object v5

    .line 31
    :cond_0
    new-array v3, v9, [S

    .line 32
    .local v3, "s":[S
    const/4 v5, 0x4

    new-array v4, v5, [S

    .line 33
    .local v4, "t":[S
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v9, :cond_1

    .line 40
    aget-short v5, v3, v11

    shr-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    aput-short v5, v4, v11

    .line 41
    aget-short v5, v3, v7

    if-ne v5, v10, :cond_3

    .line 42
    aget-short v5, v3, v11

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    int-to-short v5, v5

    aput-short v5, v4, v7

    .line 45
    :goto_2
    aget-short v5, v3, v7

    if-ne v5, v10, :cond_4

    .line 46
    const/16 v5, 0x40

    aput-short v5, v4, v9

    aput-short v5, v4, v8

    .line 55
    :goto_3
    const/4 v1, 0x0

    :goto_4
    const/4 v5, 0x4

    if-lt v1, v5, :cond_6

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    mul-int/lit8 v5, v0, 0x3

    add-int/2addr v5, v1

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 35
    mul-int/lit8 v5, v0, 0x3

    add-int/2addr v5, v1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v3, v1

    .line 33
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    :cond_2
    aput-short v10, v3, v1

    goto :goto_5

    .line 44
    :cond_3
    aget-short v5, v3, v11

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    aget-short v6, v3, v7

    shr-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v4, v7

    goto :goto_2

    .line 47
    :cond_4
    aget-short v5, v3, v8

    if-ne v5, v10, :cond_5

    .line 48
    aget-short v5, v3, v7

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    aput-short v5, v4, v8

    .line 49
    const/16 v5, 0x40

    aput-short v5, v4, v9

    goto :goto_3

    .line 52
    :cond_5
    aget-short v5, v3, v7

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    aget-short v6, v3, v8

    shr-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v4, v8

    .line 53
    aget-short v5, v3, v8

    and-int/lit8 v5, v5, 0x3f

    int-to-short v5, v5

    aput-short v5, v4, v9

    goto :goto_3

    .line 56
    :cond_6
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    aget-short v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
