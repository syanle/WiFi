.class public Lcom/mapabc/mapapi/core/i;
.super Ljava/lang/Object;
.source "HttpTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)I
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 157
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 158
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 159
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 160
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 26
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 30
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_1

    sget-boolean v2, Lcom/mapabc/mapapi/core/c;->m:Z

    if-nez v2, :cond_1

    .line 32
    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 36
    :goto_0
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 38
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 39
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 40
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 41
    new-instance v1, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 43
    :catch_0
    move-exception v1

    .line 44
    :goto_1
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 45
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 47
    :goto_2
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 48
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 50
    :goto_3
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 51
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 53
    :goto_4
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 54
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 56
    :goto_5
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 57
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    return-object v0

    .line 55
    :catch_5
    move-exception v1

    goto :goto_5

    .line 52
    :catch_6
    move-exception v1

    goto :goto_4

    .line 49
    :catch_7
    move-exception v1

    goto :goto_3

    .line 46
    :catch_8
    move-exception v1

    goto :goto_2

    .line 43
    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 77
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    if-eqz p2, :cond_1

    sget-boolean v2, Lcom/mapabc/mapapi/core/c;->m:Z

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {v0, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 83
    :goto_0
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 85
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 86
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 90
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "Content-Length"

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 97
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 98
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 100
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    .line 101
    new-instance v1, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v1, v2}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 103
    :catch_0
    move-exception v1

    .line 104
    :goto_1
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 105
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 107
    :goto_2
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 108
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 110
    :goto_3
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 111
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 113
    :goto_4
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 114
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 116
    :goto_5
    invoke-static {v0}, Lcom/mapabc/mapapi/core/i;->a(Ljava/net/HttpURLConnection;)V

    .line 117
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    return-object v0

    .line 115
    :catch_5
    move-exception v1

    goto :goto_5

    .line 112
    :catch_6
    move-exception v1

    goto :goto_4

    .line 109
    :catch_7
    move-exception v1

    goto :goto_3

    .line 106
    :catch_8
    move-exception v1

    goto :goto_2

    .line 103
    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 63
    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 67
    :cond_0
    return-void
.end method

.method public static a(I)[B
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 166
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    const/4 v1, 0x2

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    const/4 v1, 0x1

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 169
    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 129
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 130
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 131
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    :try_start_1
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v2}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 138
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 143
    :cond_0
    if-eqz p0, :cond_1

    .line 145
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 147
    :cond_1
    throw v0

    .line 136
    :cond_2
    if-eqz v1, :cond_3

    .line 138
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 143
    :cond_3
    if-eqz p0, :cond_4

    .line 145
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 151
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :catch_2
    move-exception v0

    .line 147
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :catch_3
    move-exception v0

    .line 140
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :catch_4
    move-exception v0

    .line 147
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
