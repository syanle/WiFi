.class public Lorg/xbill/DNS/DNSSEC;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSSEC$Algorithm;,
        Lorg/xbill/DNS/DNSSEC$DNSSECException;,
        Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;,
        Lorg/xbill/DNS/DNSSEC$KeyMismatchException;,
        Lorg/xbill/DNS/DNSSEC$MalformedKeyException;,
        Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;,
        Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;,
        Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;,
        Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
    }
.end annotation


# static fields
.field private static final ASN1_INT:I = 0x2

.field private static final ASN1_SEQ:I = 0x30

.field private static final DSA_LEN:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BigIntegerLength(Ljava/math/BigInteger;)I
    .locals 1
    .param p0, "i"    # Ljava/math/BigInteger;

    .prologue
    .line 315
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static DSASignaturefromDNS([B)[B
    .locals 12
    .param p0, "dns"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x14

    const/4 v9, 0x0

    .line 487
    array-length v7, p0

    const/16 v8, 0x29

    if-eq v7, v8, :cond_0

    .line 488
    new-instance v7, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v7}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v7

    .line 490
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 491
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 493
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 495
    .local v6, "t":I
    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    .line 496
    .local v2, "r":[B
    const/16 v3, 0x14

    .line 497
    .local v3, "rlen":I
    aget-byte v7, v2, v9

    if-gez v7, :cond_1

    .line 498
    add-int/lit8 v3, v3, 0x1

    .line 500
    :cond_1
    invoke-virtual {v0, v10}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v4

    .line 501
    .local v4, "s":[B
    const/16 v5, 0x14

    .line 502
    .local v5, "slen":I
    aget-byte v7, v4, v9

    if-gez v7, :cond_2

    .line 503
    add-int/lit8 v5, v5, 0x1

    .line 505
    :cond_2
    const/16 v7, 0x30

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 506
    add-int v7, v3, v5

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 508
    invoke-virtual {v1, v11}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 509
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 510
    if-le v3, v10, :cond_3

    .line 511
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 512
    :cond_3
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 514
    invoke-virtual {v1, v11}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 515
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 516
    if-le v5, v10, :cond_4

    .line 517
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 518
    :cond_4
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 520
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method private static DSASignaturetoDNS([BI)[B
    .locals 11
    .param p0, "key"    # [B
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x15

    const/4 v9, 0x2

    const/16 v8, 0x14

    .line 525
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 526
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 528
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 530
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 531
    .local v6, "tmp":I
    const/16 v7, 0x30

    if-eq v6, v7, :cond_0

    .line 532
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 533
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 535
    .local v4, "seqlen":I
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 536
    if-eq v6, v9, :cond_1

    .line 537
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 538
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 539
    .local v3, "rlen":I
    if-ne v3, v10, :cond_2

    .line 540
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    if-eqz v7, :cond_3

    .line 541
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 542
    :cond_2
    if-eq v3, v8, :cond_3

    .line 543
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 544
    :cond_3
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 545
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 547
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    .line 548
    if-eq v6, v9, :cond_4

    .line 549
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 550
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 551
    .local v5, "slen":I
    if-ne v5, v10, :cond_5

    .line 552
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    if-eqz v7, :cond_6

    .line 553
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 554
    :cond_5
    if-eq v5, v8, :cond_6

    .line 555
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 556
    :cond_6
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 557
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 559
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method private static algString(I)Ljava/lang/String;
    .locals 1
    .param p0, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .prologue
    .line 462
    packed-switch p0, :pswitch_data_0

    .line 476
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 464
    :pswitch_1
    const-string v0, "MD5withRSA"

    .line 474
    :goto_0
    return-object v0

    .line 467
    :pswitch_2
    const-string v0, "SHA1withDSA"

    goto :goto_0

    .line 470
    :pswitch_3
    const-string v0, "SHA1withRSA"

    goto :goto_0

    .line 472
    :pswitch_4
    const-string v0, "SHA256withRSA"

    goto :goto_0

    .line 474
    :pswitch_5
    const-string v0, "SHA512withRSA"

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static checkAlgorithm(Ljava/security/PrivateKey;I)V
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_0

    .line 673
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 664
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 669
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 675
    :cond_0
    return-void

    .line 658
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static digestMessage(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/Message;[B)[B
    .locals 2
    .param p0, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p1, "msg"    # Lorg/xbill/DNS/Message;
    .param p2, "previous"    # [B

    .prologue
    .line 179
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 180
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 182
    if-eqz p2, :cond_0

    .line 183
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 185
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 186
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B
    .locals 13
    .param p0, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 130
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 131
    .local v5, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v5, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 133
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v9

    .line 134
    .local v9, "size":I
    new-array v6, v9, [Lorg/xbill/DNS/Record;

    .line 136
    .local v6, "records":[Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v2

    .line 137
    .local v2, "it":Ljava/util/Iterator;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 138
    .local v4, "name":Lorg/xbill/DNS/Name;
    const/4 v10, 0x0

    .line 139
    .local v10, "wild":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v11

    add-int/lit8 v8, v11, 0x1

    .line 140
    .local v8, "sigLabels":I
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    if-le v11, v8, :cond_0

    .line 141
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v4, v11}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 142
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 144
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 146
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 147
    .local v0, "header":Lorg/xbill/DNS/DNSOutput;
    if-eqz v10, :cond_2

    .line 148
    invoke-virtual {v10, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 151
    :goto_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 152
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 153
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getOrigTTL()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v11, v6

    if-lt v1, v11, :cond_3

    .line 165
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v11

    return-object v11

    .line 143
    .end local v0    # "header":Lorg/xbill/DNS/DNSOutput;
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/xbill/DNS/Record;

    aput-object v11, v6, v9

    goto :goto_0

    .line 150
    .restart local v0    # "header":Lorg/xbill/DNS/DNSOutput;
    :cond_2
    invoke-virtual {v4, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_1

    .line 155
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 156
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    .line 157
    .local v3, "lengthPosition":I
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 158
    aget-object v11, v6, v1

    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 159
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v11

    sub-int/2addr v11, v3

    add-int/lit8 v7, v11, -0x2

    .line 160
    .local v7, "rrlength":I
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 161
    invoke-virtual {v5, v3}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 162
    invoke-virtual {v5, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 163
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V
    .locals 4
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "sig"    # Lorg/xbill/DNS/SIGBase;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 110
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 111
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 112
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 113
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 114
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 115
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 116
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 117
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 118
    return-void
.end method

.method private static fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 7
    .param p0, "key"    # Ljava/security/interfaces/DSAPublicKey;

    .prologue
    .line 419
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 420
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 421
    .local v3, "q":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 422
    .local v2, "p":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 423
    .local v0, "g":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    .line 424
    .local v5, "y":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x40

    div-int/lit8 v4, v6, 0x8

    .line 426
    .local v4, "t":I
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 427
    invoke-static {v1, v3}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 428
    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 429
    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 430
    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 432
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method static fromPublicKey(Ljava/security/PublicKey;I)[B
    .locals 2
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, "data":[B
    packed-switch p1, :pswitch_data_0

    .line 456
    :pswitch_0
    new-instance v1, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v1

    .line 447
    :pswitch_1
    instance-of v1, p0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 448
    new-instance v1, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v1

    .line 449
    :cond_0
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v1

    .line 454
    :goto_0
    return-object v1

    .line 452
    .restart local p0    # "key":Ljava/security/PublicKey;
    :pswitch_2
    instance-of v1, p0, Ljava/security/interfaces/DSAPublicKey;

    if-nez v1, :cond_1

    .line 453
    new-instance v1, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v1

    .line 454
    :cond_1
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object v1

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 5
    .param p0, "key"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 400
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 401
    .local v3, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 402
    .local v0, "exponent":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 403
    .local v2, "modulus":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 405
    .local v1, "exponentLength":I
    const/16 v4, 0x100

    if-ge v1, v4, :cond_0

    .line 406
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 411
    :goto_0
    invoke-static {v3, v0}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 412
    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 414
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 408
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 409
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_0
.end method

.method static generateDS(Lorg/xbill/DNS/DNSKEYRecord;I)[B
    .locals 6
    .param p0, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p1, "digestid"    # I

    .prologue
    .line 765
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 767
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 768
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 769
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 773
    packed-switch p1, :pswitch_data_0

    .line 781
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknown DS digest type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 781
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :catch_0
    move-exception v1

    .line 786
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "no message digest support"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 775
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :pswitch_0
    :try_start_1
    const-string v3, "sha-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 788
    .local v0, "digest":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toWire()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 789
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->rdataToWireCanonical()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 790
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 792
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 778
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :pswitch_1
    :try_start_2
    const-string v3, "sha-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 779
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z
    .locals 2
    .param p0, "sig"    # Lorg/xbill/DNS/SIGBase;
    .param p1, "key"    # Lorg/xbill/DNS/KEYBase;

    .prologue
    .line 590
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 591
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 592
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 327
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 321
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 15
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "inception"    # Ljava/util/Date;
    .param p4, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 694
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v7

    .line 695
    .local v7, "alg":I
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 697
    new-instance v1, Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v3

    .line 698
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    .line 699
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v8

    .line 701
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v12

    .line 702
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    .line 697
    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 704
    .local v1, "rrsig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 705
    invoke-static {v1, p0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v3

    .line 704
    move-object/from16 v0, p2

    invoke-static {v0, v2, v7, v3}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/RRSIGRecord;->setSignature([B)V

    .line 706
    return-object v1
.end method

.method private static sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[B)[B
    .locals 9
    .param p0, "privkey"    # Ljava/security/PrivateKey;
    .param p1, "pubkey"    # Ljava/security/PublicKey;
    .param p2, "alg"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 631
    :try_start_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 632
    .local v4, "s":Ljava/security/Signature;
    invoke-virtual {v4, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 633
    invoke-virtual {v4, p3}, Ljava/security/Signature;->update([B)V

    .line 634
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 640
    .local v5, "signature":[B
    instance-of v7, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_0

    .line 642
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v2, v0

    .line 643
    .local v2, "dsa":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 644
    .local v1, "P":Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v7

    add-int/lit8 v7, v7, -0x40

    div-int/lit8 v6, v7, 0x8

    .line 645
    .local v6, "t":I
    invoke-static {v5, v6}, Lorg/xbill/DNS/DNSSEC;->DSASignaturetoDNS([BI)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 652
    .end local v1    # "P":Ljava/math/BigInteger;
    .end local v2    # "dsa":Ljava/security/interfaces/DSAPublicKey;
    .end local v6    # "t":I
    :cond_0
    return-object v5

    .line 636
    .end local v4    # "s":Ljava/security/Signature;
    .end local v5    # "signature":[B
    :catch_0
    move-exception v3

    .line 637
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 647
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v4    # "s":Ljava/security/Signature;
    .restart local v5    # "signature":[B
    :catch_1
    move-exception v3

    .line 648
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7
.end method

.method static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;
    .locals 16
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p3, "privkey"    # Ljava/security/PrivateKey;
    .param p4, "inception"    # Ljava/util/Date;
    .param p5, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v7

    .line 715
    .local v7, "alg":I
    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 717
    new-instance v1, Lorg/xbill/DNS/SIGRecord;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 718
    const-wide/16 v8, 0x0

    .line 719
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v12

    .line 720
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    .line 717
    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 721
    .local v1, "sig":Lorg/xbill/DNS/SIGRecord;
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 722
    .local v15, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v15, v1}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 723
    if-eqz p1, :cond_0

    .line 724
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 725
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 728
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    .line 727
    move-object/from16 v0, p3

    invoke-static {v0, v2, v7, v3}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/SIGRecord;->setSignature([B)V

    .line 729
    return-object v1
.end method

.method private static toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 8
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 358
    .local v2, "in":Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 359
    .local v5, "t":I
    const/16 v7, 0x8

    if-le v5, v7, :cond_0

    .line 360
    new-instance v7, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v7, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v7

    .line 362
    :cond_0
    const/16 v7, 0x14

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 363
    .local v4, "q":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 364
    .local v3, "p":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 365
    .local v1, "g":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v6

    .line 367
    .local v6, "y":Ljava/math/BigInteger;
    const-string v7, "DSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 368
    .local v0, "factory":Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v6, v3, v4, v1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    return-object v7
.end method

.method static toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    .line 376
    .local v0, "alg":I
    packed-switch v0, :pswitch_data_0

    .line 387
    :pswitch_0
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v2

    .line 382
    .end local v1    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v2

    .line 385
    :goto_0
    return-object v2

    :pswitch_2
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 393
    :catch_1
    move-exception v1

    .line 394
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 342
    .local v3, "in":Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 343
    .local v1, "exponentLength":I
    if-nez v1, :cond_0

    .line 344
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 345
    :cond_0
    invoke-static {v3, v1}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 346
    .local v0, "exponent":Ljava/math/BigInteger;
    invoke-static {v3}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;

    move-result-object v4

    .line 348
    .local v4, "modulus":Ljava/math/BigInteger;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 349
    .local v2, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v4, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method private static verify(Ljava/security/PublicKey;I[B[B)V
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 566
    instance-of v2, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_0

    .line 568
    :try_start_0
    invoke-static {p3}, Lorg/xbill/DNS/DNSSEC;->DSASignaturefromDNS([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    .line 576
    :cond_0
    :try_start_1
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 577
    .local v1, "s":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 578
    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 579
    invoke-virtual {v1, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 580
    new-instance v2, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 582
    .end local v1    # "s":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 570
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 585
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "s":Ljava/security/Signature;
    :cond_1
    return-void
.end method

.method public static verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;)V
    .locals 5
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-static {p1, p2}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    new-instance v1, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v1, p2, p1}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v1

    .line 614
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 615
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_1

    .line 616
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 617
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_2

    .line 618
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 621
    :cond_2
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v2

    .line 622
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v4

    .line 621
    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 623
    return-void
.end method

.method static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V
    .locals 7
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "bytes"    # [B
    .param p2, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p4, "key"    # Lorg/xbill/DNS/KEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {p2, p4}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 737
    new-instance v3, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v3, p4, p2}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v3

    .line 739
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 740
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_1

    .line 741
    new-instance v3, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v3

    .line 742
    :cond_1
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_2

    .line 743
    new-instance v3, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v3

    .line 746
    :cond_2
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 747
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v2, p2}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 748
    if-eqz p3, :cond_3

    .line 749
    invoke-virtual {p3}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 751
    :cond_3
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Header;

    .line 752
    .local v0, "header":Lorg/xbill/DNS/Header;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 753
    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 755
    const/16 v3, 0xc

    .line 756
    iget v4, p0, Lorg/xbill/DNS/Message;->sig0start:I

    add-int/lit8 v4, v4, -0xc

    .line 755
    invoke-virtual {v2, p1, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 758
    invoke-virtual {p4}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getAlgorithm()I

    move-result v4

    .line 759
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v6

    .line 758
    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 760
    return-void
.end method

.method private static writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V
    .locals 3
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 332
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 333
    .local v0, "b":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    .line 334
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0
.end method
