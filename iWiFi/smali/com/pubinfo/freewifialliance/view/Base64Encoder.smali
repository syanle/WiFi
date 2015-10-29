.class public Lcom/pubinfo/freewifialliance/view/Base64Encoder;
.super Ljava/io/FilterOutputStream;
.source "Base64Encoder.java"


# static fields
.field private static final chars:[C


# instance fields
.field private carryOver:I

.field private charCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->chars:[C

    .line 39
    return-void

    .line 31
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "unencoded"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "bytes":[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 165
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    int-to-double v3, v3

    const-wide v5, 0x3ff5eb851eb851ecL    # 1.37

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 166
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;

    invoke-direct {v0, v2}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;-><init>(Ljava/io/OutputStream;)V

    .line 169
    .local v0, "encodedOut":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->write([B)V

    .line 170
    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->close()V

    .line 172
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 174
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "ignored":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    array-length v6, p0

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 179
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 180
    const-string v7, "Usage: java com.oreilly.servlet.Base64Encoder fileToEncode"

    .line 179
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v2, 0x0

    .line 185
    .local v2, "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    const/4 v4, 0x0

    .line 187
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Lcom/pubinfo/freewifialliance/view/Base64Encoder;

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v6}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    .end local v2    # "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    .local v3, "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 190
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v5, "in":Ljava/io/BufferedInputStream;
    const/16 v6, 0x1000

    :try_start_2
    new-array v0, v6, [B

    .line 192
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .local v1, "bytesRead":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    .line 197
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 198
    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->close()V

    goto :goto_0

    .line 193
    :cond_3
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v3, v0, v6, v1}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 196
    .end local v0    # "buf":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    move-object v2, v3

    .line 197
    .end local v3    # "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    .restart local v2    # "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 198
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->close()V

    .line 199
    :cond_5
    throw v6

    .line 196
    :catchall_1
    move-exception v6

    goto :goto_2

    .end local v2    # "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    .restart local v3    # "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    .restart local v2    # "encoder":Lcom/pubinfo/freewifialliance/view/Base64Encoder;
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3d

    .line 125
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 126
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v0, v1, 0x3f

    .line 127
    .local v0, "lookup":I
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 128
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 129
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 136
    .end local v0    # "lookup":I
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 137
    return-void

    .line 131
    :cond_1
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 132
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v0, v1, 0x3f

    .line 133
    .restart local v0    # "lookup":I
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 134
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    if-gez p1, :cond_0

    .line 68
    add-int/lit16 p1, p1, 0x100

    .line 72
    :cond_0
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_3

    .line 73
    shr-int/lit8 v0, p1, 0x2

    .line 74
    .local v0, "lookup":I
    and-int/lit8 v1, p1, 0x3

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->carryOver:I

    .line 75
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 93
    .end local v0    # "lookup":I
    :cond_1
    :goto_0
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->charCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->charCount:I

    .line 96
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x39

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 99
    :cond_2
    return-void

    .line 79
    :cond_3
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 80
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    and-int/lit8 v0, v1, 0x3f

    .line 81
    .restart local v0    # "lookup":I
    and-int/lit8 v1, p1, 0xf

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->carryOver:I

    .line 82
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 86
    .end local v0    # "lookup":I
    :cond_4
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->charCount:I

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 87
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->carryOver:I

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, p1, 0x6

    add-int/2addr v1, v2

    and-int/lit8 v0, v1, 0x3f

    .line 88
    .restart local v0    # "lookup":I
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 89
    and-int/lit8 v0, p1, 0x3f

    .line 90
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->chars:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->carryOver:I

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 115
    return-void

    .line 113
    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->write(I)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
