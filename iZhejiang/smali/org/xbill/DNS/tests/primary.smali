.class public Lorg/xbill/DNS/tests/primary;
.super Ljava/lang/Object;
.source "primary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 18
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v12, 0x0

    .line 19
    .local v12, "time":Z
    const/4 v3, 0x0

    .line 20
    .local v3, "axfr":Z
    const/4 v8, 0x0

    .line 21
    .local v8, "iterator":Z
    const/4 v1, 0x0

    .line 23
    .local v1, "arg":I
    move-object/from16 v0, p0

    array-length v14, v0

    const/4 v15, 0x2

    if-ge v14, v15, :cond_0

    .line 24
    invoke-static {}, Lorg/xbill/DNS/tests/primary;->usage()V

    .line 26
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    array-length v14, v0

    sub-int/2addr v14, v1

    const/4 v15, 0x2

    if-gt v14, v15, :cond_3

    .line 36
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "arg":I
    .local v2, "arg":I
    aget-object v14, p0, v1

    sget-object v15, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v14, v15}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v9

    .line 37
    .local v9, "origin":Lorg/xbill/DNS/Name;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arg":I
    .restart local v1    # "arg":I
    aget-object v6, p0, v2

    .line 39
    .local v6, "file":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 40
    .local v10, "start":J
    new-instance v13, Lorg/xbill/DNS/Zone;

    invoke-direct {v13, v9, v6}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 41
    .local v13, "zone":Lorg/xbill/DNS/Zone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 42
    .local v4, "end":J
    if-eqz v3, :cond_8

    .line 43
    invoke-virtual {v13}, Lorg/xbill/DNS/Zone;->AXFR()Ljava/util/Iterator;

    move-result-object v7

    .line 44
    .local v7, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_7

    .line 55
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_1
    :goto_2
    if-eqz v12, :cond_2

    .line 56
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "; Load time: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v16, v4, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_2
    return-void

    .line 27
    .end local v4    # "end":J
    .end local v6    # "file":Ljava/lang/String;
    .end local v9    # "origin":Lorg/xbill/DNS/Name;
    .end local v10    # "start":J
    .end local v13    # "zone":Lorg/xbill/DNS/Zone;
    :cond_3
    const/4 v14, 0x0

    aget-object v14, p0, v14

    const-string v15, "-t"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 28
    const/4 v12, 0x1

    .line 33
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_5
    const/4 v14, 0x0

    aget-object v14, p0, v14

    const-string v15, "-a"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 30
    const/4 v3, 0x1

    goto :goto_3

    .line 31
    :cond_6
    const/4 v14, 0x0

    aget-object v14, p0, v14

    const-string v15, "-i"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 32
    const/4 v8, 0x1

    goto :goto_3

    .line 45
    .restart local v4    # "end":J
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v7    # "it":Ljava/util/Iterator;
    .restart local v9    # "origin":Lorg/xbill/DNS/Name;
    .restart local v10    # "start":J
    .restart local v13    # "zone":Lorg/xbill/DNS/Zone;
    :cond_7
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_8
    if-eqz v8, :cond_9

    .line 48
    invoke-virtual {v13}, Lorg/xbill/DNS/Zone;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 49
    .restart local v7    # "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 50
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_4

    .line 53
    .end local v7    # "it":Ljava/util/Iterator;
    :cond_9
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v13}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static usage()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: primary [-t] [-a | -i] origin file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 14
    return-void
.end method
