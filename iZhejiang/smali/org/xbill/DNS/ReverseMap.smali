.class public final Lorg/xbill/DNS/ReverseMap;
.super Ljava/lang/Object;
.source "ReverseMap.java"


# static fields
.field private static inaddr4:Lorg/xbill/DNS/Name;

.field private static inaddr6:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "in-addr.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ReverseMap;->inaddr4:Lorg/xbill/DNS/Name;

    .line 18
    const-string v0, "ip6.arpa."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ReverseMap;->inaddr6:Lorg/xbill/DNS/Name;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAddress(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 3
    .param p0, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 123
    .local v0, "array":[B
    if-nez v0, :cond_0

    .line 124
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 125
    :cond_0
    if-nez v0, :cond_1

    .line 126
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Invalid IP address"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v1

    return-object v1
.end method

.method public static fromAddress(Ljava/lang/String;I)Lorg/xbill/DNS/Name;
    .locals 3
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 108
    .local v0, "array":[B
    if-nez v0, :cond_0

    .line 109
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Invalid IP address"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v1

    return-object v1
.end method

.method public static fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress([B)Lorg/xbill/DNS/Name;
    .locals 8
    .param p0, "addr"    # [B

    .prologue
    const/4 v7, 0x4

    .line 32
    array-length v5, p0

    if-eq v5, v7, :cond_0

    array-length v5, p0

    const/16 v6, 0x10

    if-eq v5, v6, :cond_0

    .line 33
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "array must contain 4 or 16 elements"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 36
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v4, "sb":Ljava/lang/StringBuffer;
    array-length v5, p0

    if-ne v5, v7, :cond_4

    .line 38
    array-length v5, p0

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 57
    :cond_1
    :try_start_0
    array-length v5, p0

    if-ne v5, v7, :cond_8

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/xbill/DNS/ReverseMap;->inaddr4:Lorg/xbill/DNS/Name;

    invoke-static {v5, v6}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 60
    :goto_1
    return-object v5

    .line 39
    :cond_2
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 40
    if-lez v1, :cond_3

    .line 41
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_4
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 45
    .local v3, "nibbles":[I
    array-length v5, p0

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_1

    .line 46
    const/4 v5, 0x0

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    aput v6, v3, v5

    .line 47
    const/4 v5, 0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v5

    .line 48
    array-length v5, v3

    add-int/lit8 v2, v5, -0x1

    .local v2, "j":I
    :goto_3
    if-gez v2, :cond_5

    .line 45
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 49
    :cond_5
    aget v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    if-gtz v1, :cond_6

    if-lez v2, :cond_7

    .line 51
    :cond_6
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 60
    .end local v2    # "j":I
    .end local v3    # "nibbles":[I
    :cond_8
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/xbill/DNS/ReverseMap;->inaddr6:Lorg/xbill/DNS/Name;

    invoke-static {v5, v6}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "name cannot be invalid"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static fromAddress([I)Lorg/xbill/DNS/Name;
    .locals 4
    .param p0, "addr"    # [I

    .prologue
    .line 76
    array-length v2, p0

    new-array v0, v2, [B

    .line 77
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 84
    invoke-static {v0}, Lorg/xbill/DNS/ReverseMap;->fromAddress([B)Lorg/xbill/DNS/Name;

    move-result-object v2

    return-object v2

    .line 78
    :cond_0
    aget v2, p0, v1

    if-ltz v2, :cond_1

    aget v2, p0, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "array must contain values between 0 and 255"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_2
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
