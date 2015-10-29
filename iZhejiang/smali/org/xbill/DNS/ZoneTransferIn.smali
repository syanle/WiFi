.class public Lorg/xbill/DNS/ZoneTransferIn;
.super Ljava/lang/Object;
.source "ZoneTransferIn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/ZoneTransferIn$Delta;
    }
.end annotation


# static fields
.field private static final AXFR:I = 0x6

.field private static final END:I = 0x7

.field private static final FIRSTDATA:I = 0x1

.field private static final INITIALSOA:I = 0x0

.field private static final IXFR_ADD:I = 0x5

.field private static final IXFR_ADDSOA:I = 0x4

.field private static final IXFR_DEL:I = 0x3

.field private static final IXFR_DELSOA:I = 0x2


# instance fields
.field private address:Ljava/net/SocketAddress;

.field private axfr:Ljava/util/List;

.field private client:Lorg/xbill/DNS/TCPClient;

.field private current_serial:J

.field private dclass:I

.field private end_serial:J

.field private initialsoa:Lorg/xbill/DNS/Record;

.field private ixfr:Ljava/util/List;

.field private ixfr_serial:J

.field private localAddress:Ljava/net/SocketAddress;

.field private qtype:I

.field private rtype:I

.field private state:I

.field private timeout:J

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

.field private want_fallback:Z

.field private zname:Lorg/xbill/DNS/Name;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 96
    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V
    .locals 3
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "xfrtype"    # I
    .param p3, "serial"    # J
    .param p5, "fallback"    # Z
    .param p6, "address"    # Ljava/net/SocketAddress;
    .param p7, "key"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/32 v1, 0xdbba0

    iput-wide v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 102
    iput-object p6, p0, Lorg/xbill/DNS/ZoneTransferIn;->address:Ljava/net/SocketAddress;

    .line 103
    iput-object p7, p0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    .line 104
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    .line 115
    :goto_0
    iput p2, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    .line 116
    const/4 v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    .line 117
    iput-wide p3, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    .line 118
    iput-boolean p5, p0, Lorg/xbill/DNS/ZoneTransferIn;->want_fallback:Z

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 120
    return-void

    .line 108
    :cond_0
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v1}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ZoneTransferIn: name too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeConnection()V
    .locals 1

    .prologue
    .line 442
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->cleanup()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doxfr()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xfb

    const/4 v10, 0x7

    .line 463
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->sendQuery()V

    .line 464
    :cond_0
    :goto_0
    iget v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    if-ne v8, v10, :cond_1

    .line 512
    :goto_1
    return-void

    .line 465
    :cond_1
    iget-object v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    invoke-virtual {v8}, Lorg/xbill/DNS/TCPClient;->recv()[B

    move-result-object v3

    .line 466
    .local v3, "in":[B
    invoke-direct {p0, v3}, Lorg/xbill/DNS/ZoneTransferIn;->parseMessage([B)Lorg/xbill/DNS/Message;

    move-result-object v6

    .line 467
    .local v6, "response":Lorg/xbill/DNS/Message;
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v8

    if-nez v8, :cond_2

    .line 468
    iget-object v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    if-eqz v8, :cond_2

    .line 470
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v7

    .line 472
    .local v7, "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    iget-object v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    invoke-virtual {v8, v6, v3}, Lorg/xbill/DNS/TSIG$StreamVerifier;->verify(Lorg/xbill/DNS/Message;[B)I

    move-result v1

    .line 473
    .local v1, "error":I
    if-eqz v1, :cond_2

    .line 474
    const-string v8, "TSIG failure"

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 477
    .end local v1    # "error":I
    .end local v7    # "tsigrec":Lorg/xbill/DNS/TSIGRecord;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 479
    .local v0, "answers":[Lorg/xbill/DNS/Record;
    iget v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    if-nez v8, :cond_6

    .line 480
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v5

    .line 481
    .local v5, "rcode":I
    if-eqz v5, :cond_4

    .line 482
    iget v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v8, v11, :cond_3

    .line 483
    const/4 v8, 0x4

    if-ne v5, v8, :cond_3

    .line 485
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->fallback()V

    .line 486
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V

    goto :goto_1

    .line 489
    :cond_3
    invoke-static {v5}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 492
    :cond_4
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    .line 493
    .local v4, "question":Lorg/xbill/DNS/Record;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    iget v9, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-eq v8, v9, :cond_5

    .line 494
    const-string v8, "invalid question section"

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 497
    :cond_5
    array-length v8, v0

    if-nez v8, :cond_6

    iget v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v8, v11, :cond_6

    .line 498
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->fallback()V

    .line 499
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V

    goto :goto_1

    .line 504
    .end local v4    # "question":Lorg/xbill/DNS/Record;
    .end local v5    # "rcode":I
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v0

    if-lt v2, v8, :cond_7

    .line 508
    iget v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    if-eqz v8, :cond_0

    .line 509
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v8

    if-nez v8, :cond_0

    .line 510
    const-string v8, "last message must be signed"

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :cond_7
    aget-object v8, v0, v2

    invoke-direct {p0, v8}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    .line 504
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lorg/xbill/DNS/ZoneTransferException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/ZoneTransferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 325
    iget-boolean v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->want_fallback:Z

    if-nez v0, :cond_0

    .line 326
    const-string v0, "server doesn\'t support IXFR"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 328
    :cond_0
    const-string v0, "falling back to AXFR"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 329
    const/16 v0, 0xfc

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    .line 330
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 331
    return-void
.end method

.method private getSOASerial(Lorg/xbill/DNS/Record;)J
    .locals 3
    .param p1, "rec"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 308
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/SOARecord;

    .line 309
    .local v0, "soa":Lorg/xbill/DNS/SOARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v1

    return-wide v1
.end method

.method private logxfr(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 1
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "key"    # Lorg/xbill/DNS/TSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    const/16 p2, 0x35

    .line 150
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, p3}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 1
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Lorg/xbill/DNS/TSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 8
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "key"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 132
    new-instance v0, Lorg/xbill/DNS/ZoneTransferIn;

    const/16 v2, 0xfc

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/ZoneTransferIn;-><init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V

    return-object v0
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 6
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "key"    # Lorg/xbill/DNS/TSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 204
    if-nez p5, :cond_0

    .line 205
    const/16 p5, 0x35

    .line 207
    :cond_0
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p6

    .line 206
    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 7
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "key"    # Lorg/xbill/DNS/TSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    return-object v0
.end method

.method public static newIXFR(Lorg/xbill/DNS/Name;JZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;
    .locals 8
    .param p0, "zone"    # Lorg/xbill/DNS/Name;
    .param p1, "serial"    # J
    .param p3, "fallback"    # Z
    .param p4, "address"    # Ljava/net/SocketAddress;
    .param p5, "key"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 183
    new-instance v0, Lorg/xbill/DNS/ZoneTransferIn;

    const/16 v2, 0xfb

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/ZoneTransferIn;-><init>(Lorg/xbill/DNS/Name;IJZLjava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)V

    return-object v0
.end method

.method private openConnection()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    add-long v0, v2, v4

    .line 279
    .local v0, "endTime":J
    new-instance v2, Lorg/xbill/DNS/TCPClient;

    invoke-direct {v2, v0, v1}, Lorg/xbill/DNS/TCPClient;-><init>(J)V

    iput-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    .line 280
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    iget-object v3, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/TCPClient;->bind(Ljava/net/SocketAddress;)V

    .line 282
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    iget-object v3, p0, Lorg/xbill/DNS/ZoneTransferIn;->address:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/TCPClient;->connect(Ljava/net/SocketAddress;)V

    .line 283
    return-void
.end method

.method private parseMessage([B)Lorg/xbill/DNS/Message;
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 452
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Lorg/xbill/DNS/WireParseException;

    if-eqz v1, :cond_0

    .line 456
    check-cast v0, Lorg/xbill/DNS/WireParseException;

    .end local v0    # "e":Ljava/io/IOException;
    throw v0

    .line 457
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "Error parsing message"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseRR(Lorg/xbill/DNS/Record;)V
    .locals 13
    .param p1, "rec"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0xfb

    const/4 v9, 0x7

    const/4 v8, 0x6

    .line 335
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    .line 338
    .local v3, "type":I
    iget v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    packed-switch v4, :pswitch_data_0

    .line 434
    const-string v4, "invalid state"

    invoke-direct {p0, v4}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 340
    :pswitch_0
    if-eq v3, v8, :cond_1

    .line 341
    const-string v4, "missing initial SOA"

    invoke-direct {p0, v4}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 342
    :cond_1
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->initialsoa:Lorg/xbill/DNS/Record;

    .line 345
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    .line 346
    iget v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v4, v10, :cond_2

    iget-wide v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    iget-wide v6, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 347
    const-string v4, "up to date"

    invoke-direct {p0, v4}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 348
    iput v9, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_0

    .line 351
    :cond_2
    iput v11, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_0

    .line 357
    :pswitch_1
    iget v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    if-ne v4, v10, :cond_3

    if-ne v3, v8, :cond_3

    .line 358
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 360
    iput v10, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    .line 361
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    .line 362
    const-string v4, "got incremental response"

    invoke-direct {p0, v4}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 363
    iput v12, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 371
    :goto_1
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 365
    :cond_3
    const/16 v4, 0xfc

    iput v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    .line 366
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    .line 367
    iget-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    iget-object v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->initialsoa:Lorg/xbill/DNS/Record;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v4, "got nonincremental response"

    invoke-direct {p0, v4}, Lorg/xbill/DNS/ZoneTransferIn;->logxfr(Ljava/lang/String;)V

    .line 369
    iput v8, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_1

    .line 375
    :pswitch_2
    new-instance v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lorg/xbill/DNS/ZoneTransferIn$Delta;-><init>(Lorg/xbill/DNS/ZoneTransferIn$Delta;)V

    .line 376
    .local v0, "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->start:J

    .line 378
    iget-object v4, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v4, 0x3

    iput v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto :goto_0

    .line 383
    .end local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :pswitch_3
    if-ne v3, v8, :cond_4

    .line 384
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    .line 385
    const/4 v4, 0x4

    iput v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 386
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    goto/16 :goto_0

    .line 389
    :cond_4
    iget-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    iget-object v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 390
    .restart local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v4, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 394
    .end local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :pswitch_4
    iget-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    iget-object v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 395
    .restart local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->end:J

    .line 396
    iget-object v4, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    const/4 v4, 0x5

    iput v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 401
    .end local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    :pswitch_5
    if-ne v3, v8, :cond_6

    .line 402
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->getSOASerial(Lorg/xbill/DNS/Record;)J

    move-result-wide v1

    .line 403
    .local v1, "soa_serial":J
    iget-wide v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->end_serial:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_5

    .line 404
    iput v9, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 406
    :cond_5
    iget-wide v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    cmp-long v4, v1, v4

    if-eqz v4, :cond_7

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IXFR out of sync: expected serial "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    iget-wide v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->current_serial:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-direct {p0, v4}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    .line 415
    .end local v1    # "soa_serial":J
    :cond_6
    iget-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    iget-object v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 416
    .restart local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    iget-object v4, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 410
    .end local v0    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    .restart local v1    # "soa_serial":J
    :cond_7
    iput v12, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    .line 411
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ZoneTransferIn;->parseRR(Lorg/xbill/DNS/Record;)V

    goto/16 :goto_0

    .line 421
    .end local v1    # "soa_serial":J
    :pswitch_6
    if-ne v3, v11, :cond_8

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v4

    iget v5, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    if-ne v4, v5, :cond_0

    .line 423
    :cond_8
    iget-object v4, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    if-ne v3, v8, :cond_0

    .line 425
    iput v9, p0, Lorg/xbill/DNS/ZoneTransferIn;->state:I

    goto/16 :goto_0

    .line 430
    :pswitch_7
    const-string v4, "extra data"

    invoke-direct {p0, v4}, Lorg/xbill/DNS/ZoneTransferIn;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private sendQuery()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    invoke-static {v3, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v21

    .line 289
    .local v21, "question":Lorg/xbill/DNS/Record;
    new-instance v20, Lorg/xbill/DNS/Message;

    invoke-direct/range {v20 .. v20}, Lorg/xbill/DNS/Message;-><init>()V

    .line 290
    .local v20, "query":Lorg/xbill/DNS/Message;
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    .line 291
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 292
    move-object/from16 v0, p0

    iget v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_0

    .line 293
    new-instance v2, Lorg/xbill/DNS/SOARecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    const-wide/16 v5, 0x0

    sget-object v7, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 294
    sget-object v8, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr_serial:J

    .line 295
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    .line 293
    invoke-direct/range {v2 .. v18}, Lorg/xbill/DNS/SOARecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;JJJJJ)V

    .line 296
    .local v2, "soa":Lorg/xbill/DNS/Record;
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 298
    .end local v2    # "soa":Lorg/xbill/DNS/Record;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v3, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 300
    new-instance v3, Lorg/xbill/DNS/TSIG$StreamVerifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/ZoneTransferIn;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/xbill/DNS/TSIG$StreamVerifier;-><init>(Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->verifier:Lorg/xbill/DNS/TSIG$StreamVerifier;

    .line 302
    :cond_1
    const v3, 0xffff

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v19

    .line 303
    .local v19, "out":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/ZoneTransferIn;->client:Lorg/xbill/DNS/TCPClient;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/xbill/DNS/TCPClient;->send([B)V

    .line 304
    return-void
.end method


# virtual methods
.method public getAXFR()Ljava/util/List;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    return-object v0
.end method

.method public getIXFR()Ljava/util/List;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    return-object v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->zname:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->qtype:I

    return v0
.end method

.method public isAXFR()Z
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrent()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIXFR()Z
    .locals 2

    .prologue
    .line 563
    iget v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->rtype:I

    const/16 v1, 0xfb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 526
    :try_start_0
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->openConnection()V

    .line 527
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->doxfr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->closeConnection()V

    .line 532
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->axfr:Ljava/util/List;

    .line 534
    :goto_0
    return-object v0

    .line 529
    :catchall_0
    move-exception v0

    .line 530
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn;->closeConnection()V

    .line 531
    throw v0

    .line 534
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->ixfr:Ljava/util/List;

    goto :goto_0
.end method

.method public setDClass(I)V
    .locals 0
    .param p1, "dclass"    # I

    .prologue
    .line 263
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 264
    iput p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->dclass:I

    .line 265
    return-void
.end method

.method public setLocalAddress(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "addr"    # Ljava/net/SocketAddress;

    .prologue
    .line 273
    iput-object p1, p0, Lorg/xbill/DNS/ZoneTransferIn;->localAddress:Ljava/net/SocketAddress;

    .line 274
    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "secs"    # I

    .prologue
    .line 251
    if-gez p1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/ZoneTransferIn;->timeout:J

    .line 255
    return-void
.end method
