.class public abstract Lcom/mapabc/mapapi/core/t;
.super Ljava/lang/Object;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final IOError:I = -0x3e7

.field public static final NoError:I = 0x0

.field public static final SocketError:I = -0x3e8


# instance fields
.field protected error:I

.field protected mAgent:Ljava/lang/String;

.field protected mKey:Ljava/lang/String;

.field protected maxTry:I

.field protected proxy:Ljava/net/Proxy;

.field protected recommandURL:Ljava/lang/String;

.field protected task:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected timeoutSeconds:I

.field protected waitSeconds:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput v2, p0, Lcom/mapabc/mapapi/core/t;->maxTry:I

    .line 380
    const/16 v0, 0x14

    iput v0, p0, Lcom/mapabc/mapapi/core/t;->timeoutSeconds:I

    .line 381
    iput v1, p0, Lcom/mapabc/mapapi/core/t;->waitSeconds:I

    .line 382
    iput v1, p0, Lcom/mapabc/mapapi/core/t;->error:I

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/t;->mKey:Ljava/lang/String;

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/t;->recommandURL:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/mapabc/mapapi/core/t;->proxy:Ljava/net/Proxy;

    .line 33
    iput-object p1, p0, Lcom/mapabc/mapapi/core/t;->task:Ljava/lang/Object;

    .line 34
    iput v2, p0, Lcom/mapabc/mapapi/core/t;->maxTry:I

    .line 35
    const/4 v0, 0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/t;->timeoutSeconds:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/t;->waitSeconds:I

    .line 37
    iput-object p5, p0, Lcom/mapabc/mapapi/core/t;->mAgent:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/mapabc/mapapi/core/t;->mKey:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput v2, p0, Lcom/mapabc/mapapi/core/t;->maxTry:I

    .line 380
    const/16 v0, 0x14

    iput v0, p0, Lcom/mapabc/mapapi/core/t;->timeoutSeconds:I

    .line 381
    iput v1, p0, Lcom/mapabc/mapapi/core/t;->waitSeconds:I

    .line 382
    iput v1, p0, Lcom/mapabc/mapapi/core/t;->error:I

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/t;->mKey:Ljava/lang/String;

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/t;->recommandURL:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/mapabc/mapapi/core/t;->proxy:Ljava/net/Proxy;

    .line 43
    iput v2, p0, Lcom/mapabc/mapapi/core/t;->maxTry:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/mapabc/mapapi/core/t;->timeoutSeconds:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/mapabc/mapapi/core/t;->waitSeconds:I

    .line 46
    iput-object p4, p0, Lcom/mapabc/mapapi/core/t;->mAgent:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/mapabc/mapapi/core/t;->mKey:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private GetDataMayThrow()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 110
    .line 114
    const/4 v0, 0x0

    move-object v1, v4

    move-object v5, v4

    move-object v2, v4

    move-object v3, v4

    .line 115
    :goto_0
    iget v6, p0, Lcom/mapabc/mapapi/core/t;->maxTry:I

    if-ge v0, v6, :cond_8

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/t;->getRequestType()Z

    move-result v6

    if-nez v6, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/t;->getUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mapabc/mapapi/core/t;->recommandURL:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/t;->makePostRequestBytes()[B

    move-result-object v6

    .line 122
    iget-object v7, p0, Lcom/mapabc/mapapi/core/t;->recommandURL:Ljava/lang/String;

    iget-object v8, p0, Lcom/mapabc/mapapi/core/t;->proxy:Ljava/net/Proxy;

    invoke-static {v7, v6, v8}, Lcom/mapabc/mapapi/core/i;->a(Ljava/lang/String;[BLjava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 129
    :goto_1
    invoke-virtual {p0, v3}, Lcom/mapabc/mapapi/core/t;->sendRequest(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/mapabc/mapapi/core/MapAbcException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 130
    :try_start_1
    invoke-direct {p0, v6}, Lcom/mapabc/mapapi/core/t;->parseResponse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    iget v0, p0, Lcom/mapabc/mapapi/core/t;->maxTry:I
    :try_end_1
    .catch Lcom/mapabc/mapapi/core/MapAbcException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v6, :cond_a

    .line 148
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v4

    .line 154
    :goto_2
    if-eqz v4, :cond_0

    .line 156
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 162
    :cond_0
    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v3, v4

    :cond_1
    :goto_3
    move-object v5, v4

    .line 164
    goto :goto_0

    .line 125
    :cond_2
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/t;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mapabc/mapapi/core/t;->makeXMLRequest()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mapabc/mapapi/core/t;->recommandURL:Ljava/lang/String;

    .line 127
    iget-object v6, p0, Lcom/mapabc/mapapi/core/t;->recommandURL:Ljava/lang/String;

    iget-object v7, p0, Lcom/mapabc/mapapi/core/t;->proxy:Ljava/net/Proxy;

    invoke-static {v6, v7}, Lcom/mapabc/mapapi/core/i;->a(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Lcom/mapabc/mapapi/core/MapAbcException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :catch_1
    move-exception v0

    .line 158
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :catch_2
    move-exception v6

    move-object v9, v6

    move-object v6, v2

    move-object v2, v9

    .line 134
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 135
    :try_start_5
    iget v7, p0, Lcom/mapabc/mapapi/core/t;->maxTry:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ge v0, v7, :cond_7

    .line 137
    :try_start_6
    iget v2, p0, Lcom/mapabc/mapapi/core/t;->waitSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    if-eqz v6, :cond_9

    .line 148
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move-object v2, v4

    .line 154
    :goto_5
    if-eqz v4, :cond_3

    .line 156
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 162
    :cond_3
    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v3, v4

    .line 164
    goto :goto_3

    .line 138
    :catch_3
    move-exception v0

    .line 139
    :try_start_9
    new-instance v1, Lcom/mapabc/mapapi/core/MapAbcException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 146
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_6
    if-eqz v2, :cond_4

    .line 148
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 154
    :cond_4
    if-eqz v4, :cond_5

    .line 156
    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 162
    :cond_5
    if-eqz v3, :cond_6

    .line 163
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_6
    throw v0

    .line 142
    :cond_7
    :try_start_c
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/t;->onExceptionOccur()Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    invoke-virtual {v2}, Lcom/mapabc/mapapi/core/MapAbcException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 149
    :catch_4
    move-exception v0

    .line 150
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :catch_5
    move-exception v0

    .line 158
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :catch_6
    move-exception v0

    .line 150
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :catch_7
    move-exception v0

    .line 158
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_8
    return-object v1

    .line 146
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 132
    :catch_8
    move-exception v2

    goto :goto_4

    :cond_9
    move-object v2, v6

    goto :goto_5

    :cond_a
    move-object v2, v6

    goto/16 :goto_2
.end method

.method private static getStreamData(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 226
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 231
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    .line 233
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 234
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    :try_start_1
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v2}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 242
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 247
    :cond_0
    if-eqz p0, :cond_1

    .line 249
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 251
    :cond_1
    throw v0

    .line 236
    :cond_2
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    if-eqz v1, :cond_3

    .line 242
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 247
    :cond_3
    if-eqz p0, :cond_4

    .line 249
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 255
    :cond_4
    return-object v0

    .line 243
    :catch_1
    move-exception v0

    .line 244
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :catch_2
    move-exception v0

    .line 251
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :catch_3
    move-exception v0

    .line 244
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :catch_4
    move-exception v0

    .line 251
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeXMLRequest()Ljava/lang/String;
    .locals 5

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/mapabc/mapapi/core/t;->getRequestLines()[Ljava/lang/String;

    move-result-object v1

    .line 79
    if-nez v1, :cond_0

    .line 80
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    if-eqz v1, :cond_1

    .line 84
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private parseResponse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, Lcom/mapabc/mapapi/core/t;->getStreamData(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mapabc/mapapi/core/t;->loadData(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    new-array v1, p2, [B

    .line 321
    const/4 v0, 0x0

    .line 322
    :goto_0
    if-ge v0, p2, :cond_0

    .line 323
    sub-int v2, p2, v0

    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public GetData()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/mapabc/mapapi/core/t;->task:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/mapabc/mapapi/core/t;->GetDataMayThrow()Ljava/lang/Object;

    move-result-object v0

    .line 106
    :cond_0
    return-object v0
.end method

.method protected get1BString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/t;->getByte(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mapabc/mapapi/core/t;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getByte(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method protected getBytes(Ljava/io/InputStream;)[B
    .locals 3

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    .line 264
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 269
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 273
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 275
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 276
    :catch_1
    move-exception v1

    .line 278
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/mapabc/mapapi/core/t;->error:I

    return v0
.end method

.method protected getInt(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 289
    new-array v0, v1, [B

    .line 290
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 292
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 294
    return v0
.end method

.method protected getIntString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/t;->getInt(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mapabc/mapapi/core/t;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getRequestLines()[Ljava/lang/String;
.end method

.method protected abstract getRequestType()Z
.end method

.method protected abstract getServiceCode()I
.end method

.method protected getShort(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 298
    new-array v0, v1, [B

    .line 299
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 301
    const/4 v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 302
    return v0
.end method

.method protected getString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/t;->getShort(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mapabc/mapapi/core/t;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getUrl()Ljava/lang/String;
.end method

.method public getmKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mapabc/mapapi/core/t;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract loadData(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation
.end method

.method protected makeContentLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    const-string p2, ""

    .line 216
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mapabc/mapapi/core/t;->makeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/mapabc/mapapi/core/t;->makeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0
.end method

.method protected makePostRequestBytes()[B
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected makeTag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    if-eqz p2, :cond_0

    const-string v0, "<%s>"

    .line 209
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    const-string v0, "</%s>"

    goto :goto_0
.end method

.method protected onExceptionOccur()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method protected protocalAssert(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 197
    :cond_0
    return-void
.end method

.method protected readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 334
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 336
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 337
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 338
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    :try_start_1
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v2}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 345
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 350
    :cond_0
    if-eqz p1, :cond_1

    .line 352
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 354
    :cond_1
    throw v0

    .line 343
    :cond_2
    if-eqz v1, :cond_3

    .line 345
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 350
    :cond_3
    if-eqz p1, :cond_4

    .line 352
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 359
    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_5

    .line 363
    :goto_1
    return-object v0

    .line 346
    :catch_1
    move-exception v0

    .line 347
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :catch_2
    move-exception v0

    .line 354
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :catch_3
    move-exception v0

    .line 347
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :catch_4
    move-exception v0

    .line 354
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :catch_5
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 363
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_1
.end method

.method protected sendRequest(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 173
    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 185
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :catch_1
    move-exception v0

    .line 179
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :catch_2
    move-exception v0

    .line 181
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :catch_3
    move-exception v0

    .line 183
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTask(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mapabc/mapapi/core/t;->task:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public setmKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/mapabc/mapapi/core/t;->mKey:Ljava/lang/String;

    .line 372
    return-void
.end method
