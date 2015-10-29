.class public Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;
.super Ljavax/net/SocketFactory;
.source "Socks5ProxySocketFactory.java"


# instance fields
.field private proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .prologue
    .line 19
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 21
    return-void
.end method

.method private fill(Ljava/io/InputStream;[BI)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buf"    # [B
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "s":I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 290
    return-void

    .line 283
    :cond_0
    sub-int v2, p3, v1

    invoke-virtual {p1, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 284
    .local v0, "i":I
    if-gtz v0, :cond_1

    .line 285
    new-instance v2, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v3, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const-string v4, "stream is closed"

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_1
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method private socks5ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 23
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/16 v16, 0x0

    .line 51
    .local v16, "socket":Ljava/net/Socket;
    const/4 v7, 0x0

    .line 52
    .local v7, "in":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 53
    .local v12, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v14

    .line 54
    .local v14, "proxy_host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v15

    .line 55
    .local v15, "proxy_port":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v18

    .line 56
    .local v18, "user":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, "passwd":Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/net/Socket;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v15}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 60
    .end local v16    # "socket":Ljava/net/Socket;
    .local v17, "socket":Ljava/net/Socket;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 61
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 63
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 65
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 66
    .local v3, "buf":[B
    const/4 v8, 0x0

    .line 84
    .local v8, "index":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .local v9, "index":I
    const/16 v19, 0x5

    aput-byte v19, v3, v8

    .line 86
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    const/16 v19, 0x2

    aput-byte v19, v3, v9

    .line 87
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    const/16 v19, 0x0

    aput-byte v19, v3, v8

    .line 88
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    const/16 v19, 0x2

    aput-byte v19, v3, v9

    .line 90
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v3, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 100
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v3, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->fill(Ljava/io/InputStream;[BI)V

    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, "check":Z
    const/16 v19, 0x1

    aget-byte v19, v3, v19
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v4, :cond_1

    .line 165
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :goto_1
    :try_start_3
    new-instance v19, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v20, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 169
    const-string v21, "fail in SOCKS5 proxy"

    .line 168
    invoke-direct/range {v19 .. v21}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v19
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 262
    .end local v3    # "buf":[B
    .end local v4    # "check":Z
    .end local v8    # "index":I
    :catch_0
    move-exception v5

    move-object/from16 v16, v17

    .line 263
    .end local v17    # "socket":Ljava/net/Socket;
    .local v5, "e":Ljava/lang/RuntimeException;
    .restart local v16    # "socket":Ljava/net/Socket;
    :goto_2
    throw v5

    .line 105
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "socket":Ljava/net/Socket;
    .restart local v3    # "buf":[B
    .restart local v4    # "check":Z
    .restart local v8    # "index":I
    .restart local v17    # "socket":Ljava/net/Socket;
    :pswitch_1
    const/4 v4, 0x1

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    if-eqz v18, :cond_0

    if-eqz v13, :cond_0

    .line 131
    const/4 v8, 0x0

    .line 132
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    const/16 v19, 0x1

    :try_start_4
    aput-byte v19, v3, v8

    .line 133
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v9

    .line 134
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v8, v19, 0x2

    .line 136
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 137
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    .line 138
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    .line 137
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    add-int v8, v9, v19

    .line 141
    .end local v9    # "index":I
    .restart local v8    # "index":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v3, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 155
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v3, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->fill(Ljava/io/InputStream;[BI)V

    .line 156
    const/16 v19, 0x1

    aget-byte v19, v3, v19

    if-nez v19, :cond_0

    .line 157
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 190
    :cond_1
    const/4 v8, 0x0

    .line 191
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    const/16 v19, 0x5

    aput-byte v19, v3, v8

    .line 192
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    const/16 v19, 0x1

    aput-byte v19, v3, v9

    .line 193
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    const/16 v19, 0x0

    aput-byte v19, v3, v8

    .line 195
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 196
    .local v6, "hostb":[B
    array-length v10, v6

    .line 197
    .local v10, "len":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    const/16 v19, 0x3

    aput-byte v19, v3, v9

    .line 198
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    int-to-byte v0, v10

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 199
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v6, v0, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    add-int/lit8 v8, v10, 0x5

    .line 201
    .end local v9    # "index":I
    .restart local v8    # "index":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    ushr-int/lit8 v19, p2, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v8

    .line 202
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v9

    .line 204
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v3, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 232
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v3, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->fill(Ljava/io/InputStream;[BI)V

    .line 234
    const/16 v19, 0x1

    aget-byte v19, v3, v19
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v19, :cond_3

    .line 236
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 239
    :goto_3
    :try_start_6
    new-instance v19, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v20, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 240
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "server returns "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x1

    aget-byte v22, v3, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 239
    invoke-direct/range {v19 .. v21}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v19
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 264
    .end local v3    # "buf":[B
    .end local v4    # "check":Z
    .end local v6    # "hostb":[B
    .end local v8    # "index":I
    .end local v10    # "len":I
    :catch_1
    move-exception v5

    move-object/from16 v16, v17

    .line 266
    .end local v17    # "socket":Ljava/net/Socket;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v16    # "socket":Ljava/net/Socket;
    :goto_4
    if-eqz v16, :cond_2

    .line 267
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 271
    :cond_2
    :goto_5
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "ProxySOCKS5: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "message":Ljava/lang/String;
    instance-of v0, v5, Ljava/lang/Throwable;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 273
    new-instance v19, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v20, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11, v5}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 243
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "message":Ljava/lang/String;
    .end local v16    # "socket":Ljava/net/Socket;
    .restart local v3    # "buf":[B
    .restart local v4    # "check":Z
    .restart local v6    # "hostb":[B
    .restart local v8    # "index":I
    .restart local v10    # "len":I
    .restart local v17    # "socket":Ljava/net/Socket;
    :cond_3
    const/16 v19, 0x3

    :try_start_8
    aget-byte v19, v3, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 260
    :goto_6
    :pswitch_3
    return-object v17

    .line 246
    :pswitch_4
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v3, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->fill(Ljava/io/InputStream;[BI)V

    goto :goto_6

    .line 250
    :pswitch_5
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v3, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->fill(Ljava/io/InputStream;[BI)V

    .line 252
    const/16 v19, 0x0

    aget-byte v19, v3, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v3, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->fill(Ljava/io/InputStream;[BI)V

    goto :goto_6

    .line 256
    :pswitch_6
    const/16 v19, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v3, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->fill(Ljava/io/InputStream;[BI)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .line 276
    .end local v3    # "buf":[B
    .end local v4    # "check":Z
    .end local v6    # "hostb":[B
    .end local v8    # "index":I
    .end local v10    # "len":I
    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v16    # "socket":Ljava/net/Socket;
    :cond_4
    new-instance v19, Ljava/io/IOException;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 166
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "message":Ljava/lang/String;
    .end local v16    # "socket":Ljava/net/Socket;
    .restart local v3    # "buf":[B
    .restart local v4    # "check":Z
    .restart local v8    # "index":I
    .restart local v17    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .line 237
    .restart local v6    # "hostb":[B
    .restart local v10    # "len":I
    :catch_3
    move-exception v19

    goto/16 :goto_3

    .line 269
    .end local v3    # "buf":[B
    .end local v4    # "check":Z
    .end local v6    # "hostb":[B
    .end local v8    # "index":I
    .end local v10    # "len":I
    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v16    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v19

    goto :goto_5

    .line 264
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    goto :goto_4

    .line 262
    :catch_6
    move-exception v5

    goto/16 :goto_2

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->socks5ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->socks5ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->socks5ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketFactory;->socks5ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
