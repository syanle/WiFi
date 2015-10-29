.class public Lorg/xbill/DNS/tests/xfrin;
.super Ljava/lang/Object;
.source "xfrin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 22
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v8, 0x0

    .line 22
    .local v8, "key":Lorg/xbill/DNS/TSIG;
    const/4 v14, -0x1

    .line 23
    .local v14, "ixfr_serial":I
    const/4 v6, 0x0

    .line 24
    .local v6, "server":Ljava/lang/String;
    const/16 v7, 0x35

    .line 25
    .local v7, "port":I
    const/4 v5, 0x0

    .line 28
    .local v5, "fallback":Z
    const/4 v9, 0x0

    .line 29
    .local v9, "arg":I
    :goto_0
    move-object/from16 v0, p0

    array-length v3, v0

    if-lt v9, v3, :cond_5

    .line 56
    :cond_0
    move-object/from16 v0, p0

    array-length v3, v0

    if-lt v9, v3, :cond_1

    .line 57
    const-string v3, "no zone name specified"

    invoke-static {v3}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    .line 58
    :cond_1
    aget-object v3, p0, v9

    invoke-static {v3}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 60
    .local v2, "zname":Lorg/xbill/DNS/Name;
    if-nez v6, :cond_3

    .line 61
    new-instance v15, Lorg/xbill/DNS/Lookup;

    const/4 v3, 0x2

    invoke-direct {v15, v2, v3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 62
    .local v15, "l":Lorg/xbill/DNS/Lookup;
    invoke-virtual {v15}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v16

    .line 63
    .local v16, "ns":[Lorg/xbill/DNS/Record;
    if-nez v16, :cond_2

    .line 64
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v20, "failed to look up NS record: "

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v15}, Lorg/xbill/DNS/Lookup;->getErrorString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 68
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->rdataToString()Ljava/lang/String;

    move-result-object v6

    .line 69
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v20, "sending to server \'"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v20, "\'"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    .end local v15    # "l":Lorg/xbill/DNS/Lookup;
    .end local v16    # "ns":[Lorg/xbill/DNS/Record;
    :cond_3
    if-ltz v14, :cond_e

    .line 73
    int-to-long v3, v14

    invoke-static/range {v2 .. v8}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v19

    .line 78
    .local v19, "xfrin":Lorg/xbill/DNS/ZoneTransferIn;
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;

    move-result-object v17

    .line 79
    .local v17, "response":Ljava/util/List;
    invoke-virtual/range {v19 .. v19}, Lorg/xbill/DNS/ZoneTransferIn;->isAXFR()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 80
    if-ltz v14, :cond_f

    .line 81
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "AXFR-like IXFR response"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 85
    .local v12, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    .line 107
    .end local v12    # "it":Ljava/util/Iterator;
    :cond_4
    :goto_4
    return-void

    .line 30
    .end local v2    # "zname":Lorg/xbill/DNS/Name;
    .end local v17    # "response":Ljava/util/List;
    .end local v19    # "xfrin":Lorg/xbill/DNS/ZoneTransferIn;
    :cond_5
    aget-object v3, p0, v9

    const-string v4, "-i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 31
    add-int/lit8 v9, v9, 0x1

    aget-object v3, p0, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 32
    if-gez v14, :cond_6

    .line 33
    const-string v3, "invalid serial number"

    invoke-static {v3}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    .line 54
    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 34
    :cond_7
    aget-object v3, p0, v9

    const-string v4, "-k"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 35
    add-int/lit8 v9, v9, 0x1

    aget-object v18, p0, v9

    .line 36
    .local v18, "s":Ljava/lang/String;
    const/16 v3, 0x2f

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 37
    .local v11, "index":I
    if-gez v11, :cond_8

    .line 38
    const-string v3, "invalid key"

    invoke-static {v3}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    .line 39
    :cond_8
    new-instance v8, Lorg/xbill/DNS/TSIG;

    .end local v8    # "key":Lorg/xbill/DNS/TSIG;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 40
    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-direct {v8, v3, v4}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .restart local v8    # "key":Lorg/xbill/DNS/TSIG;
    goto :goto_5

    .end local v11    # "index":I
    .end local v18    # "s":Ljava/lang/String;
    :cond_9
    aget-object v3, p0, v9

    const-string v4, "-s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 42
    add-int/lit8 v9, v9, 0x1

    aget-object v6, p0, v9

    .line 43
    goto :goto_5

    :cond_a
    aget-object v3, p0, v9

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 44
    add-int/lit8 v9, v9, 0x1

    aget-object v3, p0, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 45
    if-ltz v7, :cond_b

    const v3, 0xffff

    if-le v7, v3, :cond_6

    .line 46
    :cond_b
    const-string v3, "invalid port"

    invoke-static {v3}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    goto :goto_5

    .line 47
    :cond_c
    aget-object v3, p0, v9

    const-string v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 48
    const/4 v5, 0x1

    .line 49
    goto :goto_5

    :cond_d
    aget-object v3, p0, v9

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "invalid option"

    invoke-static {v3}, Lorg/xbill/DNS/tests/xfrin;->usage(Ljava/lang/String;)V

    goto :goto_5

    .line 76
    .restart local v2    # "zname":Lorg/xbill/DNS/Name;
    :cond_e
    invoke-static {v2, v6, v7, v8}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v19

    .restart local v19    # "xfrin":Lorg/xbill/DNS/ZoneTransferIn;
    goto/16 :goto_1

    .line 83
    .restart local v17    # "response":Ljava/util/List;
    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "AXFR response"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 86
    .restart local v12    # "it":Ljava/util/Iterator;
    :cond_10
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 87
    .end local v12    # "it":Ljava/util/Iterator;
    :cond_11
    invoke-virtual/range {v19 .. v19}, Lorg/xbill/DNS/ZoneTransferIn;->isIXFR()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 88
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "IXFR response"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 90
    .restart local v12    # "it":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 92
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 93
    .local v10, "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v20, "delta from "

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v10, Lorg/xbill/DNS/ZoneTransferIn$Delta;->start:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 94
    const-string v20, " to "

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v0, v10, Lorg/xbill/DNS/ZoneTransferIn$Delta;->end:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "deletes"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    iget-object v3, v10, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 97
    .local v13, "it2":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 99
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "adds"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    iget-object v3, v10, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 101
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 102
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_7

    .line 98
    :cond_13
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 104
    .end local v10    # "delta":Lorg/xbill/DNS/ZoneTransferIn$Delta;
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v13    # "it2":Ljava/util/Iterator;
    :cond_14
    invoke-virtual/range {v19 .. v19}, Lorg/xbill/DNS/ZoneTransferIn;->isCurrent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "up to date"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: xfrin [-i serial] [-k keyname/secret] [-s server] [-p port] [-f] zone"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 16
    return-void
.end method
