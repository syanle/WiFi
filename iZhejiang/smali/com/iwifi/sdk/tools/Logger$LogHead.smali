.class Lcom/iwifi/sdk/tools/Logger$LogHead;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/tools/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogHead"
.end annotation


# static fields
.field static LogContentLen:J

.field static LogtotalLen:J

.field static appID:I

.field static externalLogLen:J

.field static platformId:I

.field static standardLogLen:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogHeaderBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 230
    const/16 v3, 0x24

    new-array v0, v3, [B

    .line 232
    .local v0, "b":[B
    sget v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->appID:I

    invoke-static {v3}, Lcom/iwifi/sdk/tools/Logger$LogHead;->intToBytes_littleEndian(I)[B

    move-result-object v2

    .line 233
    .local v2, "son_b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 237
    sget v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->platformId:I

    invoke-static {v3}, Lcom/iwifi/sdk/tools/Logger$LogHead;->intToBytes_littleEndian(I)[B

    move-result-object v2

    .line 238
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_1

    .line 242
    sget v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->standardLogLen:I

    invoke-static {v3}, Lcom/iwifi/sdk/tools/Logger$LogHead;->intToBytes_littleEndian(I)[B

    move-result-object v2

    .line 243
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v5, :cond_2

    .line 247
    sget-wide v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->externalLogLen:J

    invoke-static {v3, v4}, Lcom/iwifi/sdk/tools/Logger$LogHead;->longToBytes_littleEndian(J)[B

    move-result-object v2

    .line 248
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v6, :cond_3

    .line 252
    sget-wide v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->LogContentLen:J

    invoke-static {v3, v4}, Lcom/iwifi/sdk/tools/Logger$LogHead;->longToBytes_littleEndian(J)[B

    move-result-object v2

    .line 253
    const/4 v1, 0x0

    :goto_4
    if-lt v1, v6, :cond_4

    .line 257
    sget-wide v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->LogtotalLen:J

    invoke-static {v3, v4}, Lcom/iwifi/sdk/tools/Logger$LogHead;->longToBytes_littleEndian(J)[B

    move-result-object v2

    .line 258
    const/4 v1, 0x0

    :goto_5
    if-lt v1, v6, :cond_5

    .line 262
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " b : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v0

    .line 234
    :cond_0
    aget-byte v3, v2, v1

    aput-byte v3, v0, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    add-int/lit8 v3, v1, 0x4

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :cond_2
    add-int/lit8 v3, v1, 0x8

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 249
    :cond_3
    add-int/lit8 v3, v1, 0xc

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 254
    :cond_4
    add-int/lit8 v3, v1, 0x14

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 259
    :cond_5
    add-int/lit8 v3, v1, 0x1c

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static intToBytes_bigEndian(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 275
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 276
    .local v0, "b":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 277
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 278
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 279
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 280
    return-object v0
.end method

.method public static intToBytes_littleEndian(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 311
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 312
    .local v0, "b":[B
    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 313
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 314
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 315
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 316
    return-object v0
.end method

.method public static longToBytes_bigEndian(J)[B
    .locals 5
    .param p0, "l"    # J

    .prologue
    const/16 v4, 0x8

    .line 291
    new-array v0, v4, [B

    .line 292
    .local v0, "b":[B
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 293
    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 294
    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 295
    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 296
    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 297
    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 298
    const/4 v1, 0x6

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 299
    const/4 v1, 0x7

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 300
    return-object v0
.end method

.method public static longToBytes_littleEndian(J)[B
    .locals 5
    .param p0, "l"    # J

    .prologue
    const/16 v4, 0x8

    .line 327
    new-array v0, v4, [B

    .line 328
    .local v0, "b":[B
    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 329
    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 330
    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 331
    const/4 v1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 332
    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 333
    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 334
    const/4 v1, 0x1

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 335
    const/4 v1, 0x0

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 336
    return-object v0
.end method
