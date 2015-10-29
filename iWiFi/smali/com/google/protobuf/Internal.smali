.class public Lcom/google/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Internal$EnumLiteMap;,
        Lcom/google/protobuf/Internal$EnumLite;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 93
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isValidUtf8(Lcom/google/protobuf/ByteString;)Z
    .locals 10

    .prologue
    const/16 v9, 0xf4

    const/16 v8, 0xbf

    const/16 v7, 0x80

    const/4 v2, 0x0

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    move v0, v2

    .line 120
    :cond_0
    :goto_0
    if-ge v0, v4, :cond_13

    .line 121
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v5, v0, 0xff

    .line 122
    if-ge v5, v7, :cond_1

    move v0, v1

    .line 124
    goto :goto_0

    .line 127
    :cond_1
    const/16 v0, 0xc2

    if-lt v5, v0, :cond_2

    if-le v5, v9, :cond_3

    :cond_2
    move v0, v2

    .line 184
    :goto_1
    return v0

    .line 131
    :cond_3
    if-lt v1, v4, :cond_4

    move v0, v2

    .line 133
    goto :goto_1

    .line 135
    :cond_4
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 136
    if-lt v6, v7, :cond_5

    if-le v6, v8, :cond_6

    :cond_5
    move v0, v2

    .line 138
    goto :goto_1

    .line 140
    :cond_6
    const/16 v0, 0xdf

    if-gt v5, v0, :cond_7

    move v0, v3

    .line 142
    goto :goto_0

    .line 146
    :cond_7
    if-lt v3, v4, :cond_8

    move v0, v2

    .line 148
    goto :goto_1

    .line 150
    :cond_8
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 151
    if-lt v1, v7, :cond_9

    if-le v1, v8, :cond_a

    :cond_9
    move v0, v2

    .line 153
    goto :goto_1

    .line 155
    :cond_a
    const/16 v1, 0xef

    if-gt v5, v1, :cond_d

    .line 158
    const/16 v1, 0xe0

    if-ne v5, v1, :cond_b

    const/16 v1, 0xa0

    if-lt v6, v1, :cond_c

    :cond_b
    const/16 v1, 0xed

    if-ne v5, v1, :cond_0

    const/16 v1, 0x9f

    if-le v6, v1, :cond_0

    :cond_c
    move v0, v2

    .line 161
    goto :goto_1

    .line 167
    :cond_d
    if-lt v0, v4, :cond_e

    move v0, v2

    .line 169
    goto :goto_1

    .line 171
    :cond_e
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 172
    if-lt v0, v7, :cond_f

    if-le v0, v8, :cond_10

    :cond_f
    move v0, v2

    .line 174
    goto :goto_1

    .line 177
    :cond_10
    const/16 v0, 0xf0

    if-ne v5, v0, :cond_11

    const/16 v0, 0x90

    if-lt v6, v0, :cond_12

    :cond_11
    if-ne v5, v9, :cond_14

    const/16 v0, 0x8f

    if-le v6, v0, :cond_14

    :cond_12
    move v0, v2

    .line 180
    goto :goto_1

    .line 184
    :cond_13
    const/4 v0, 0x1

    goto :goto_1

    :cond_14
    move v0, v1

    goto :goto_0
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
