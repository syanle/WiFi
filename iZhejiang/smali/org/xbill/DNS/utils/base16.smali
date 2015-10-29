.class public Lorg/xbill/DNS/utils/base16;
.super Ljava/lang/Object;
.source "base16.java"


# static fields
.field private static final Base16:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 49
    .local v6, "raw":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-lt v3, v7, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 54
    .local v4, "in":[B
    array-length v7, v4

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    .line 55
    const/4 v7, 0x0

    .line 70
    :goto_1
    return-object v7

    .line 50
    .end local v4    # "in":[B
    :cond_0
    aget-byte v7, v6, v3

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_1

    .line 51
    aget-byte v7, v6, v3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .restart local v4    # "in":[B
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 59
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v1, "ds":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    :goto_2
    array-length v7, v4

    if-lt v3, v7, :cond_3

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto :goto_1

    .line 62
    :cond_3
    const-string v7, "0123456789ABCDEF"

    aget-byte v8, v4, v3

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    int-to-byte v2, v7

    .line 63
    .local v2, "high":B
    const-string v7, "0123456789ABCDEF"

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v4, v8

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    int-to-byte v5, v7

    .line 65
    .local v5, "low":B
    shl-int/lit8 v7, v2, 0x4

    add-int/2addr v7, v5

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 67
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B

    .prologue
    .line 28
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-lt v1, v5, :cond_0

    .line 37
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    return-object v5

    .line 31
    :cond_0
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    int-to-short v4, v5

    .line 32
    .local v4, "value":S
    shr-int/lit8 v5, v4, 0x4

    int-to-byte v0, v5

    .line 33
    .local v0, "high":B
    and-int/lit8 v5, v4, 0xf

    int-to-byte v2, v5

    .line 34
    .local v2, "low":B
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
