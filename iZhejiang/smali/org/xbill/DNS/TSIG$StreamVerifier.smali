.class public Lorg/xbill/DNS/TSIG$StreamVerifier;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/TSIG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamVerifier"
.end annotation


# instance fields
.field private key:Lorg/xbill/DNS/TSIG;

.field private lastTSIG:Lorg/xbill/DNS/TSIGRecord;

.field private lastsigned:I

.field private nresponses:I

.field private verifier:Lorg/xbill/DNS/utils/HMAC;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 3
    .param p1, "tsig"    # Lorg/xbill/DNS/TSIG;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    .line 438
    new-instance v0, Lorg/xbill/DNS/utils/HMAC;

    iget-object v1, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    # getter for: Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/TSIG;->access$0(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    # getter for: Lorg/xbill/DNS/TSIG;->key:[B
    invoke-static {v2}, Lorg/xbill/DNS/TSIG;->access$1(Lorg/xbill/DNS/TSIG;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    iput-object v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 440
    iput-object p2, p0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 441
    return-void
.end method


# virtual methods
.method public verify(Lorg/xbill/DNS/Message;[B)I
    .locals 18
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B

    .prologue
    .line 457
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v13

    .line 459
    .local v13, "tsig":Lorg/xbill/DNS/TSIGRecord;
    move-object/from16 v0, p0

    iget v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    .line 461
    move-object/from16 v0, p0

    iget v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1, v15}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v6

    .line 463
    .local v6, "result":I
    if-nez v6, :cond_0

    .line 464
    invoke-virtual {v13}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v7

    .line 465
    .local v7, "signature":[B
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 466
    .local v4, "out":Lorg/xbill/DNS/DNSOutput;
    array-length v14, v7

    invoke-virtual {v4, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v14, v7}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 470
    .end local v4    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v7    # "signature":[B
    :cond_0
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 533
    .end local v6    # "result":I
    :goto_0
    return v6

    .line 474
    :cond_1
    if-eqz v13, :cond_2

    .line 475
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 476
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v14

    invoke-virtual {v14}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v2

    .line 477
    .local v2, "header":[B
    if-eqz v13, :cond_3

    .line 478
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 479
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v14, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 482
    if-nez v13, :cond_6

    .line 483
    move-object/from16 v0, p2

    array-length v14, v0

    array-length v15, v2

    sub-int v3, v14, v15

    .line 486
    .local v3, "len":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    array-length v15, v2

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15, v3}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 488
    if-eqz v13, :cond_7

    .line 489
    move-object/from16 v0, p0

    iget v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    .line 490
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastTSIG:Lorg/xbill/DNS/TSIGRecord;

    .line 503
    invoke-virtual {v13}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    # getter for: Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    invoke-static {v15}, Lorg/xbill/DNS/TSIG;->access$2(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 504
    invoke-virtual {v13}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->key:Lorg/xbill/DNS/TSIG;

    # getter for: Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;
    invoke-static {v15}, Lorg/xbill/DNS/TSIG;->access$3(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 506
    :cond_4
    const-string v14, "verbose"

    invoke-static {v14}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 507
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "BADKEY failure"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 508
    :cond_5
    const/4 v14, 0x4

    move-object/from16 v0, p1

    iput v14, v0, Lorg/xbill/DNS/Message;->tsigState:I

    .line 509
    const/16 v6, 0x11

    goto :goto_0

    .line 485
    .end local v3    # "len":I
    :cond_6
    move-object/from16 v0, p1

    iget v14, v0, Lorg/xbill/DNS/Message;->tsigstart:I

    array-length v15, v2

    sub-int v3, v14, v15

    .restart local v3    # "len":I
    goto :goto_1

    .line 493
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->nresponses:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->lastsigned:I

    sub-int/2addr v14, v15

    const/16 v15, 0x64

    if-lt v14, v15, :cond_8

    const/4 v5, 0x1

    .line 494
    .local v5, "required":Z
    :goto_2
    if-eqz v5, :cond_9

    .line 495
    const/4 v14, 0x4

    move-object/from16 v0, p1

    iput v14, v0, Lorg/xbill/DNS/Message;->tsigState:I

    .line 496
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 493
    .end local v5    # "required":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 498
    .restart local v5    # "required":Z
    :cond_9
    const/4 v14, 0x2

    move-object/from16 v0, p1

    iput v14, v0, Lorg/xbill/DNS/Message;->tsigState:I

    .line 499
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 512
    .end local v5    # "required":Z
    :cond_a
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 513
    .restart local v4    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v13}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v8, v14, v16

    .line 514
    .local v8, "time":J
    const/16 v14, 0x20

    shr-long v14, v8, v14

    long-to-int v10, v14

    .line 515
    .local v10, "timeHigh":I
    const-wide v14, 0xffffffffL

    and-long v11, v8, v14

    .line 516
    .local v11, "timeLow":J
    invoke-virtual {v4, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 517
    invoke-virtual {v4, v11, v12}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 518
    invoke-virtual {v13}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v14

    invoke-virtual {v4, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v13}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v14

    if-nez v14, :cond_c

    .line 522
    const-string v14, "verbose"

    invoke-static {v14}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 523
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "BADSIG failure"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    :cond_b
    const/16 v6, 0x10

    goto/16 :goto_0

    .line 527
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v14}, Lorg/xbill/DNS/utils/HMAC;->clear()V

    .line 528
    new-instance v4, Lorg/xbill/DNS/DNSOutput;

    .end local v4    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {v4}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 529
    .restart local v4    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v13}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v4, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v4}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 531
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xbill/DNS/TSIG$StreamVerifier;->verifier:Lorg/xbill/DNS/utils/HMAC;

    invoke-virtual {v13}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 533
    const/4 v6, 0x0

    goto/16 :goto_0
.end method
