.class public Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;
.super Ljavax/net/SocketFactory;
.source "Socks4ProxySocketFactory.java"


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
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 21
    return-void
.end method

.method private socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 28
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/16 v19, 0x0

    .line 47
    .local v19, "socket":Ljava/net/Socket;
    const/4 v9, 0x0

    .line 48
    .local v9, "in":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 49
    .local v14, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v16

    .line 50
    .local v16, "proxy_host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v17

    .line 51
    .local v17, "proxy_port":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v23

    .line 52
    .local v23, "user":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v15

    .line 55
    .local v15, "passwd":Ljava/lang/String;
    :try_start_0
    new-instance v20, Ljava/net/Socket;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 56
    .end local v19    # "socket":Ljava/net/Socket;
    .local v20, "socket":Ljava/net/Socket;
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 57
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 58
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 60
    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v5, v0, [B

    .line 61
    .local v5, "buf":[B
    const/4 v10, 0x0

    .line 82
    .local v10, "index":I
    const/4 v10, 0x0

    .line 83
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    const/16 v24, 0x4

    aput-byte v24, v5, v10

    .line 84
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    const/16 v24, 0x1

    aput-byte v24, v5, v11

    .line 86
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .restart local v11    # "index":I
    ushr-int/lit8 v24, p2, 0x8

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v5, v10

    .line 87
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v5, v11
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 90
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 91
    .local v4, "addr":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 92
    .local v6, "byteAddress":[B
    const/4 v8, 0x0

    .local v8, "i":I
    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    :goto_0
    :try_start_3
    array-length v0, v6

    move/from16 v24, v0
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v0, v24

    if-lt v8, v0, :cond_1

    .line 100
    if-eqz v23, :cond_0

    .line 101
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v5, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    add-int v10, v11, v24

    .end local v11    # "index":I
    .restart local v10    # "index":I
    move v11, v10

    .line 104
    .end local v10    # "index":I
    .restart local v11    # "index":I
    :cond_0
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    const/16 v24, 0x0

    aput-byte v24, v5, v11

    .line 105
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v5, v0, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    const/4 v12, 0x6

    .line 133
    .local v12, "len":I
    const/16 v18, 0x0

    .line 134
    .local v18, "s":I
    :goto_1
    move/from16 v0, v18

    if-lt v0, v12, :cond_3

    .line 142
    const/16 v24, 0x0

    aget-byte v24, v5, v24

    if-eqz v24, :cond_5

    .line 143
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 144
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "server returns VN "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    aget-byte v27, v5, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 143
    invoke-direct/range {v24 .. v26}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v24
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 157
    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v5    # "buf":[B
    .end local v6    # "byteAddress":[B
    .end local v8    # "i":I
    .end local v10    # "index":I
    .end local v12    # "len":I
    .end local v18    # "s":I
    :catch_0
    move-exception v7

    move-object/from16 v19, v20

    .line 158
    .end local v20    # "socket":Ljava/net/Socket;
    .local v7, "e":Ljava/lang/RuntimeException;
    .restart local v19    # "socket":Ljava/net/Socket;
    :goto_2
    throw v7

    .line 93
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "socket":Ljava/net/Socket;
    .restart local v4    # "addr":Ljava/net/InetAddress;
    .restart local v5    # "buf":[B
    .restart local v6    # "byteAddress":[B
    .restart local v8    # "i":I
    .restart local v11    # "index":I
    .restart local v20    # "socket":Ljava/net/Socket;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    :try_start_5
    aget-byte v24, v6, v8

    aput-byte v24, v5, v11
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 92
    add-int/lit8 v8, v8, 0x1

    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_0

    .line 95
    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v6    # "byteAddress":[B
    .end local v8    # "i":I
    .end local v11    # "index":I
    .restart local v10    # "index":I
    :catch_1
    move-exception v22

    .line 96
    .local v22, "uhe":Ljava/net/UnknownHostException;
    :goto_3
    :try_start_6
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 97
    invoke-virtual/range {v22 .. v22}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v26

    .line 96
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 159
    .end local v5    # "buf":[B
    .end local v10    # "index":I
    .end local v22    # "uhe":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v7

    move-object/from16 v19, v20

    .line 161
    .end local v20    # "socket":Ljava/net/Socket;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v19    # "socket":Ljava/net/Socket;
    :goto_4
    if-eqz v19, :cond_2

    .line 162
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 165
    :cond_2
    :goto_5
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v24

    .line 135
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v19    # "socket":Ljava/net/Socket;
    .restart local v4    # "addr":Ljava/net/InetAddress;
    .restart local v5    # "buf":[B
    .restart local v6    # "byteAddress":[B
    .restart local v8    # "i":I
    .restart local v10    # "index":I
    .restart local v12    # "len":I
    .restart local v18    # "s":I
    .restart local v20    # "socket":Ljava/net/Socket;
    :cond_3
    sub-int v24, v12, v18

    :try_start_8
    move/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v9, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 136
    if-gtz v8, :cond_4

    .line 137
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 138
    const-string v26, "stream is closed"

    .line 137
    invoke-direct/range {v24 .. v26}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v24

    .line 140
    :cond_4
    add-int v18, v18, v8

    goto :goto_1

    .line 146
    :cond_5
    const/16 v24, 0x1

    aget-byte v24, v5, v24
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const/16 v25, 0x5a

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 148
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 151
    :goto_6
    :try_start_a
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ProxySOCKS4: server returns CD "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x1

    aget-byte v25, v5, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 152
    .local v13, "message":Ljava/lang/String;
    new-instance v24, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v25, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v13}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v24

    .line 154
    .end local v13    # "message":Ljava/lang/String;
    :cond_6
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 155
    .local v21, "temp":[B
    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v9, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 156
    return-object v20

    .line 149
    .end local v21    # "temp":[B
    :catch_3
    move-exception v24

    goto :goto_6

    .line 163
    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v5    # "buf":[B
    .end local v6    # "byteAddress":[B
    .end local v8    # "i":I
    .end local v10    # "index":I
    .end local v12    # "len":I
    .end local v18    # "s":I
    .end local v20    # "socket":Ljava/net/Socket;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v19    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v24

    goto :goto_5

    .line 159
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    goto :goto_4

    .line 157
    :catch_6
    move-exception v7

    goto/16 :goto_2

    .line 95
    .end local v19    # "socket":Ljava/net/Socket;
    .restart local v4    # "addr":Ljava/net/InetAddress;
    .restart local v5    # "buf":[B
    .restart local v6    # "byteAddress":[B
    .restart local v8    # "i":I
    .restart local v11    # "index":I
    .restart local v20    # "socket":Ljava/net/Socket;
    :catch_7
    move-exception v22

    move v10, v11

    .end local v11    # "index":I
    .restart local v10    # "index":I
    goto/16 :goto_3
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
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

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
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

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
    .line 35
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

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
    .line 40
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketFactory;->socks4ProxifiedSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
