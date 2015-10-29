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
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogHeaderBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 233
    const/16 v3, 0x24

    new-array v0, v3, [B

    .line 235
    .local v0, "b":[B
    sget v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->appID:I

    invoke-static {v3}, Lcom/iwifi/sdk/tools/Logger$LogHead;->intToBytes_littleEndian(I)[B

    move-result-object v2

    .line 236
    .local v2, "son_b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 240
    sget v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->platformId:I

    invoke-static {v3}, Lcom/iwifi/sdk/tools/Logger$LogHead;->intToBytes_littleEndian(I)[B

    move-result-object v2

    .line 241
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v5, :cond_1

    .line 245
    sget v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->standardLogLen:I

    invoke-static {v3}, Lcom/iwifi/sdk/tools/Logger$LogHead;->intToBytes_littleEndian(I)[B

    move-result-object v2

    .line 246
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v5, :cond_2

    .line 250
    sget-wide v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->externalLogLen:J

    invoke-static {v3, v4}, Lcom/iwifi/sdk/tools/Logger$LogHead;->longToBytes_littleEndian(J)[B

    move-result-object v2

    .line 251
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v6, :cond_3

    .line 255
    sget-wide v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->LogContentLen:J

    invoke-static {v3, v4}, Lcom/iwifi/sdk/tools/Logger$LogHead;->longToBytes_littleEndian(J)[B

    move-result-object v2

    .line 256
    const/4 v1, 0x0

    :goto_4
    if-lt v1, v6, :cond_4

    .line 260
    sget-wide v3, Lcom/iwifi/sdk/tools/Logger$LogHead;->LogtotalLen:J

    invoke-static {v3, v4}, Lcom/iwifi/sdk/tools/Logger$LogHead;->longToBytes_littleEndian(J)[B

    move-result-object v2

    .line 261
    const/4 v1, 0x0

    :goto_5
    if-lt v1, v6, :cond_5

    .line 265
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

    .line 266
    return-object v0

    .line 237
    :cond_0
    aget-byte v3, v2, v1

    aput-byte v3, v0, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    add-int/lit8 v3, v1, 0x4

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_2
    add-int/lit8 v3, v1, 0x8

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    :cond_3
    add-int/lit8 v3, v1, 0xc

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 257
    :cond_4
    add-int/lit8 v3, v1, 0x14

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 262
    :cond_5
    add-int/lit8 v3, v1, 0x1c

    aget-byte v4, v2, v1

    aput-byte v4, v0, v3

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public static intToBytes_bigEndian(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 278
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 279
    .local v0, "b":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 280
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 281
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 282
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 283
    return-object v0
.end method

.method public static intToBytes_littleEndian(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 314
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 315
    .local v0, "b":[B
    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 316
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 317
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 318
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 319
    return-object v0
.end method

.method public static longToBytes_bigEndian(J)[B
    .locals 5
    .param p0, "l"    # J

    .prologue
    const/16 v4, 0x8

    .line 294
    new-array v0, v4, [B

    .line 295
    .local v0, "b":[B
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 296
    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 297
    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 298
    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 299
    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 300
    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 301
    const/4 v1, 0x6

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 302
    const/4 v1, 0x7

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 303
    return-object v0
.end method

.method public static longToBytes_littleEndian(J)[B
    .locals 5
    .param p0, "l"    # J

    .prologue
    const/16 v4, 0x8

    .line 330
    new-array v0, v4, [B

    .line 331
    .local v0, "b":[B
    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 332
    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 333
    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 334
    const/4 v1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 335
    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 336
    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 337
    const/4 v1, 0x1

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 338
    const/4 v1, 0x0

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 339
    return-object v0
.end method
