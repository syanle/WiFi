.class public abstract Lorg/xbill/DNS/Record;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final byteFormat:Ljava/text/DecimalFormat;

.field private static final serialVersionUID:J = 0x25663ac63c372e5aL


# instance fields
.field protected dclass:I

.field protected name:Lorg/xbill/DNS/Name;

.field protected ttl:J

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    .line 28
    sget-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/Name;IIJ)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 37
    :cond_0
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 38
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 39
    invoke-static {p4, p5}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 40
    iput-object p1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 41
    iput p2, p0, Lorg/xbill/DNS/Record;->type:I

    .line 42
    iput p3, p0, Lorg/xbill/DNS/Record;->dclass:I

    .line 43
    iput-wide p4, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 44
    return-void
.end method

.method protected static byteArrayFromString(Ljava/lang/String;)[B
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5c

    const/16 v10, 0xff

    const/4 v9, 0x3

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 345
    .local v0, "array":[B
    const/4 v3, 0x0

    .line 346
    .local v3, "escaped":Z
    const/4 v4, 0x0

    .line 348
    .local v4, "hasEscapes":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v8, v0

    if-lt v5, v8, :cond_0

    .line 354
    :goto_1
    if-nez v4, :cond_3

    .line 355
    array-length v8, v0

    if-le v8, v10, :cond_2

    .line 356
    new-instance v8, Lorg/xbill/DNS/TextParseException;

    const-string v9, "text string too long"

    invoke-direct {v8, v9}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 349
    :cond_0
    aget-byte v8, v0, v5

    if-ne v8, v11, :cond_1

    .line 350
    const/4 v4, 0x1

    .line 351
    goto :goto_1

    .line 348
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v8, v0

    .line 399
    :goto_2
    return-object v8

    .line 361
    :cond_3
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    .local v7, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 364
    .local v2, "digits":I
    const/4 v6, 0x0

    .line 365
    .local v6, "intval":I
    const/4 v5, 0x0

    :goto_3
    array-length v8, v0

    if-lt v5, v8, :cond_4

    .line 392
    if-lez v2, :cond_b

    if-ge v2, v9, :cond_b

    .line 393
    new-instance v8, Lorg/xbill/DNS/TextParseException;

    const-string v9, "bad escape"

    invoke-direct {v8, v9}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 366
    :cond_4
    aget-byte v1, v0, v5

    .line 367
    .local v1, "b":B
    if-eqz v3, :cond_9

    .line 368
    const/16 v8, 0x30

    if-lt v1, v8, :cond_8

    const/16 v8, 0x39

    if-gt v1, v8, :cond_8

    if-ge v2, v9, :cond_8

    .line 369
    add-int/lit8 v2, v2, 0x1

    .line 370
    mul-int/lit8 v6, v6, 0xa

    .line 371
    add-int/lit8 v8, v1, -0x30

    add-int/2addr v6, v8

    .line 372
    if-le v6, v10, :cond_5

    .line 373
    new-instance v8, Lorg/xbill/DNS/TextParseException;

    .line 374
    const-string v9, "bad escape"

    .line 373
    invoke-direct {v8, v9}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 375
    :cond_5
    if-ge v2, v9, :cond_6

    .line 365
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 377
    :cond_6
    int-to-byte v1, v6

    .line 381
    :cond_7
    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 382
    const/4 v3, 0x0

    .line 383
    goto :goto_4

    .line 379
    :cond_8
    if-lez v2, :cond_7

    if-ge v2, v9, :cond_7

    .line 380
    new-instance v8, Lorg/xbill/DNS/TextParseException;

    const-string v9, "bad escape"

    invoke-direct {v8, v9}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 384
    :cond_9
    aget-byte v8, v0, v5

    if-ne v8, v11, :cond_a

    .line 385
    const/4 v3, 0x1

    .line 386
    const/4 v2, 0x0

    .line 387
    const/4 v6, 0x0

    .line 388
    goto :goto_4

    .line 390
    :cond_a
    aget-byte v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 394
    .end local v1    # "b":B
    :cond_b
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 395
    array-length v8, v0

    if-le v8, v10, :cond_c

    .line 396
    new-instance v8, Lorg/xbill/DNS/TextParseException;

    const-string v9, "text string too long"

    invoke-direct {v8, v9}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 399
    :cond_c
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto :goto_2
.end method

.method protected static byteArrayToString([BZ)Ljava/lang/String;
    .locals 8
    .param p0, "array"    # [B
    .param p1, "quote"    # Z

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x22

    .line 407
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 410
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_2

    .line 421
    if-eqz p1, :cond_1

    .line 422
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 423
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 411
    :cond_2
    aget-byte v3, p0, v1

    and-int/lit16 v0, v3, 0xff

    .line 412
    .local v0, "b":I
    const/16 v3, 0x20

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_4

    .line 413
    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    sget-object v3, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_4
    if-eq v0, v6, :cond_5

    if-ne v0, v7, :cond_6

    .line 416
    :cond_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 417
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 419
    :cond_6
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method static checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 725
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 727
    :cond_0
    return-object p1
.end method

.method static checkU16(Ljava/lang/String;I)I
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # I

    .prologue
    .line 705
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 706
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 707
    const-string v2, " must be an unsigned 16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    const-string v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_1
    return p1
.end method

.method static checkU32(Ljava/lang/String;J)J
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # J

    .prologue
    .line 715
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 716
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 717
    const-string v2, " must be an unsigned 32 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 718
    const-string v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_1
    return-wide p1
.end method

.method static checkU8(Ljava/lang/String;I)I
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # I

    .prologue
    .line 695
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    const-string v2, " must be an unsigned 8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 698
    const-string v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_1
    return p1
.end method

.method public static fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v5, Lorg/xbill/DNS/Tokenizer;

    invoke-direct {v5, p5}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 19
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p6, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    new-instance v3, Lorg/xbill/DNS/RelativeNameException;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v3

    .line 458
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 459
    invoke-static/range {p2 .. p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 460
    invoke-static/range {p3 .. p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 462
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v18

    .line 463
    .local v18, "t":Lorg/xbill/DNS/Tokenizer$Token;
    move-object/from16 v0, v18

    iget v3, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    const-string v4, "\\#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 464
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v8

    .line 465
    .local v8, "length":I
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v16

    .line 466
    .local v16, "data":[B
    if-nez v16, :cond_1

    .line 467
    const/4 v3, 0x0

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 469
    :cond_1
    move-object/from16 v0, v16

    array-length v3, v0

    if-eq v8, v3, :cond_2

    .line 470
    const-string v3, "invalid unknown RR encoding: length mismatch"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 472
    :cond_2
    new-instance v9, Lorg/xbill/DNS/DNSInput;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .local v9, "in":Lorg/xbill/DNS/DNSInput;
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    .line 473
    invoke-static/range {v3 .. v9}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v17

    .line 482
    .end local v8    # "length":I
    .end local v9    # "in":Lorg/xbill/DNS/DNSInput;
    .end local v16    # "data":[B
    :cond_3
    return-object v17

    .line 475
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 476
    const/4 v15, 0x1

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-wide/from16 v13, p3

    invoke-static/range {v10 .. v15}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v17

    .line 477
    .local v17, "rec":Lorg/xbill/DNS/Record;
    move-object/from16 v0, v17

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Record;->rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V

    .line 478
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v18

    .line 479
    move-object/from16 v0, v18

    iget v3, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    move-object/from16 v0, v18

    iget v3, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eqz v3, :cond_3

    .line 480
    const-string v3, "unexpected tokens at end of record"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;I)Lorg/xbill/DNS/Record;
    .locals 1
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;
    .locals 8
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "section"    # I
    .param p2, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 184
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 185
    .local v1, "type":I
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    .line 187
    .local v2, "dclass":I
    if-nez p1, :cond_0

    .line 188
    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 195
    :goto_0
    return-object v7

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v3

    .line 191
    .local v3, "ttl":J
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v5

    .line 192
    .local v5, "length":I
    if-nez v5, :cond_1

    if-eqz p2, :cond_1

    .line 193
    invoke-static {v0, v1, v2, v3, v4}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v6, p0

    .line 194
    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 195
    .local v7, "rec":Lorg/xbill/DNS/Record;
    goto :goto_0
.end method

.method public static fromWire([BI)Lorg/xbill/DNS/Record;
    .locals 2
    .param p0, "b"    # [B
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private static final getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;
    .locals 2
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "hasData"    # Z

    .prologue
    .line 56
    if-eqz p5, :cond_1

    .line 57
    invoke-static {p1}, Lorg/xbill/DNS/Type;->getProto(I)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 58
    .local v0, "proto":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 64
    .end local v0    # "proto":Lorg/xbill/DNS/Record;
    .local v1, "rec":Lorg/xbill/DNS/Record;
    :goto_0
    iput-object p0, v1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 65
    iput p1, v1, Lorg/xbill/DNS/Record;->type:I

    .line 66
    iput p2, v1, Lorg/xbill/DNS/Record;->dclass:I

    .line 67
    iput-wide p3, v1, Lorg/xbill/DNS/Record;->ttl:J

    .line 68
    return-object v1

    .line 61
    .end local v1    # "rec":Lorg/xbill/DNS/Record;
    .restart local v0    # "proto":Lorg/xbill/DNS/Record;
    :cond_0
    new-instance v1, Lorg/xbill/DNS/UNKRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/UNKRecord;-><init>()V

    .line 62
    .restart local v1    # "rec":Lorg/xbill/DNS/Record;
    goto :goto_0

    .line 63
    .end local v0    # "proto":Lorg/xbill/DNS/Record;
    .end local v1    # "rec":Lorg/xbill/DNS/Record;
    :cond_1
    new-instance v1, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .restart local v1    # "rec":Lorg/xbill/DNS/Record;
    goto :goto_0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;
    .locals 2
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;
    .locals 6
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 154
    :cond_0
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 155
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 156
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 158
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private static newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "length"    # I
    .param p6, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v6

    .line 83
    .local v6, "rec":Lorg/xbill/DNS/Record;
    if-eqz p6, :cond_3

    .line 84
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-ge v0, p5, :cond_1

    .line 85
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "truncated record"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    .end local v6    # "rec":Lorg/xbill/DNS/Record;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 86
    .restart local v6    # "rec":Lorg/xbill/DNS/Record;
    :cond_1
    invoke-virtual {p6, p5}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 88
    invoke-virtual {v6, p6}, Lorg/xbill/DNS/Record;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 90
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 91
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "invalid record length"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->clearActive()V

    .line 94
    :cond_3
    return-object v6
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;
    .locals 8
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "length"    # I
    .param p6, "data"    # [B

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 111
    :cond_0
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 112
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 113
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 116
    if-eqz p6, :cond_1

    .line 117
    new-instance v6, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v6, p6}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .local v6, "in":Lorg/xbill/DNS/DNSInput;
    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 121
    :try_start_0
    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_1
    return-object v0

    .line 119
    .end local v6    # "in":Lorg/xbill/DNS/DNSInput;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "in":Lorg/xbill/DNS/DNSInput;
    goto :goto_0

    .line 123
    :catch_0
    move-exception v7

    .line 124
    .local v7, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ[B)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "data"    # [B

    .prologue
    .line 139
    array-length v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJI[B)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V
    .locals 4
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "noTTL"    # Z

    .prologue
    .line 241
    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 242
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 243
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 244
    if-eqz p2, :cond_0

    .line 245
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 249
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 250
    .local v0, "lengthPosition":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 251
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 252
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x2

    .line 253
    .local v1, "rrlength":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 254
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 255
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 256
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 257
    return-void

    .line 247
    .end local v0    # "lengthPosition":I
    .end local v1    # "rrlength":I
    :cond_0
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    goto :goto_0
.end method

.method private toWireCanonical(Z)[B
    .locals 2
    .param p1, "noTTL"    # Z

    .prologue
    .line 265
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 266
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Record;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V

    .line 267
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected static unknownToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 432
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "\\# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 434
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-static {p0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method cloneRecord()Lorg/xbill/DNS/Record;
    .locals 2

    .prologue
    .line 606
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 656
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 658
    .local v0, "arg":Lorg/xbill/DNS/Record;
    if-ne p0, v0, :cond_1

    .line 659
    const/4 v2, 0x0

    .line 677
    :cond_0
    :goto_0
    return v2

    .line 661
    :cond_1
    iget-object v5, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v6, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 662
    .local v2, "n":I
    if-nez v2, :cond_0

    .line 664
    iget v5, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v6, v0, Lorg/xbill/DNS/Record;->dclass:I

    sub-int v2, v5, v6

    .line 665
    if-nez v2, :cond_0

    .line 667
    iget v5, p0, Lorg/xbill/DNS/Record;->type:I

    iget v6, v0, Lorg/xbill/DNS/Record;->type:I

    sub-int v2, v5, v6

    .line 668
    if-nez v2, :cond_0

    .line 670
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v3

    .line 671
    .local v3, "rdata1":[B
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v4

    .line 672
    .local v4, "rdata2":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    array-length v5, v4

    if-lt v1, v5, :cond_3

    .line 677
    :cond_2
    array-length v5, v3

    array-length v6, v4

    sub-int v2, v5, v6

    goto :goto_0

    .line 673
    :cond_3
    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v4, v1

    and-int/lit16 v6, v6, 0xff

    sub-int v2, v5, v6

    .line 674
    if-nez v2, :cond_0

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 581
    if-eqz p1, :cond_0

    instance-of v4, p1, Lorg/xbill/DNS/Record;

    if-nez v4, :cond_1

    .line 588
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 583
    check-cast v2, Lorg/xbill/DNS/Record;

    .line 584
    .local v2, "r":Lorg/xbill/DNS/Record;
    iget v4, p0, Lorg/xbill/DNS/Record;->type:I

    iget v5, v2, Lorg/xbill/DNS/Record;->type:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v5, v2, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v5, v2, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v0

    .line 587
    .local v0, "array1":[B
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v1

    .line 588
    .local v1, "array2":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_0
.end method

.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method abstract getObject()Lorg/xbill/DNS/Record;
.end method

.method public getRRsetType()I
    .locals 3

    .prologue
    .line 532
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    move-object v0, p0

    .line 533
    check-cast v0, Lorg/xbill/DNS/RRSIGRecord;

    .line 534
    .local v0, "sig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/RRSIGRecord;->getTypeCovered()I

    move-result v1

    .line 536
    .end local v0    # "sig":Lorg/xbill/DNS/RRSIGRecord;
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    goto :goto_0
.end method

.method public getTTL()J
    .locals 2

    .prologue
    .line 552
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 596
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v0

    .line 597
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 598
    .local v1, "code":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 600
    return v1

    .line 599
    :cond_0
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method abstract rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public rdataToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rdataToWireCanonical()[B
    .locals 3

    .prologue
    .line 285
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 286
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 287
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method abstract rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract rrToString()Ljava/lang/String;
.end method

.method abstract rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
.end method

.method public sameRRset(Lorg/xbill/DNS/Record;)Z
    .locals 2
    .param p1, "rec"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 568
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 569
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v1, p1, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v1, p1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setTTL(J)V
    .locals 0
    .param p1, "ttl"    # J

    .prologue
    .line 641
    iput-wide p1, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 642
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 311
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 313
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_1
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v2, "BINDTTL"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-static {v2, v3}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :goto_0
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "noPrintIN"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 321
    :cond_2
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    :cond_3
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "rdata":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 327
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 318
    .end local v0    # "rdata":Ljava/lang/String;
    :cond_5
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V
    .locals 5
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "section"    # I
    .param p3, "c"    # Lorg/xbill/DNS/Compression;

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, p1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 214
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 215
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 216
    if-nez p2, :cond_0

    .line 227
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 219
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 220
    .local v0, "lengthPosition":I
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 221
    invoke-virtual {p0, p1, p3, v4}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 222
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x2

    .line 223
    .local v1, "rrlength":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 224
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 225
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 226
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->restore()V

    goto :goto_0
.end method

.method public toWire(I)[B
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 234
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 235
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 236
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toWireCanonical()[B
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v0

    return-object v0
.end method

.method withDClass(IJ)Lorg/xbill/DNS/Record;
    .locals 1
    .param p1, "dclass"    # I
    .param p2, "ttl"    # J

    .prologue
    .line 632
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 633
    .local v0, "rec":Lorg/xbill/DNS/Record;
    iput p1, v0, Lorg/xbill/DNS/Record;->dclass:I

    .line 634
    iput-wide p2, v0, Lorg/xbill/DNS/Record;->ttl:J

    .line 635
    return-object v0
.end method

.method public withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 619
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    new-instance v1, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v1

    .line 621
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 622
    .local v0, "rec":Lorg/xbill/DNS/Record;
    iput-object p1, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 623
    return-object v0
.end method
