.class public Lcom/qihoo/linker/logcollector/upload/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qihoo/linker/logcollector/upload/HttpManager$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final END_MP_BOUNDARY:Ljava/lang/String;

.field private static final LINEND:Ljava/lang/String; = "\r\n"

.field private static final MP_BOUNDARY:Ljava/lang/String;

.field private static final SET_CONNECTION_TIMEOUT:I = 0x1388

.field private static final SET_SOCKET_TIMEOUT:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/qihoo/linker/logcollector/upload/HttpManager;->getBoundry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo/linker/logcollector/upload/HttpManager;->BOUNDARY:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qihoo/linker/logcollector/upload/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo/linker/logcollector/upload/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qihoo/linker/logcollector/upload/HttpManager;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qihoo/linker/logcollector/upload/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBoundry()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x1a

    const-wide/16 v8, 0x3

    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, "_sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, "t":I
    :goto_0
    const/16 v4, 0xc

    if-lt v1, v4, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 256
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 257
    .local v2, "time":J
    rem-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 258
    long-to-int v4, v2

    int-to-char v4, v4

    rem-int/lit8 v4, v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 255
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    rem-long v4, v2, v8

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 260
    const-wide/16 v4, 0x41

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 262
    :cond_2
    const-wide/16 v4, 0x61

    rem-long v6, v2, v10

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 11

    .prologue
    .line 173
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 174
    .local v6, "trustStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 175
    new-instance v5, Lcom/qihoo/linker/logcollector/upload/HttpManager$MySSLSocketFactory;

    invoke-direct {v5, v6}, Lcom/qihoo/linker/logcollector/upload/HttpManager$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 176
    .local v5, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v7, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v5, v7}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 177
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 179
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    const/16 v7, 0x2710

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 180
    const/16 v7, 0x2710

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 182
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 183
    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 185
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 186
    .local v4, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    .line 187
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 186
    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 188
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 190
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 194
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    const/16 v7, 0x1388

    .line 193
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 195
    const/16 v7, 0x4e20

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 196
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v1

    .line 198
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private static readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 10
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 143
    const/4 v5, 0x0

    .line 144
    .local v5, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 148
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 149
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .local v0, "content":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 151
    .local v4, "readBytes":I
    const/16 v8, 0x200

    new-array v7, v8, [B

    .line 152
    .local v7, "sBuffer":[B
    :goto_0
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_0

    .line 155
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v6, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    move-object v5, v6

    .line 165
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "readBytes":I
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "sBuffer":[B
    :goto_1
    return-object v6

    .line 153
    .restart local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "readBytes":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v7    # "sBuffer":[B
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 158
    .end local v0    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "readBytes":I
    .end local v7    # "sBuffer":[B
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    move-object v6, v5

    .line 165
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    goto :goto_1

    .line 161
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static uploadFile(Ljava/lang/String;Lcom/qihoo/linker/logcollector/upload/HttpParameters;Ljava/io/File;)Ljava/lang/String;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "params"    # Lcom/qihoo/linker/logcollector/upload/HttpParameters;
    .param p2, "logFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/qihoo/linker/logcollector/upload/HttpManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 65
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 67
    .local v13, "post":Lorg/apache/http/client/methods/HttpPost;
    const/4 v2, 0x0

    .line 69
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    .line 71
    .local v11, "logFileInputStream":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 75
    .local v15, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_0

    .line 78
    :try_start_1
    const-string v10, ""

    .line 79
    .local v10, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/qihoo/linker/logcollector/upload/HttpParameters;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v9, v0, :cond_4

    .line 91
    .end local v9    # "i":I
    .end local v10    # "key":Ljava/lang/String;
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v18, "temp":Ljava/lang/StringBuilder;
    sget-object v19, Lcom/qihoo/linker/logcollector/upload/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v19, "content-disposition: form-data; name=\"logfile\"; filename=\""

    .line 93
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 95
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v19, "Content-Type: application/octet-stream; charset=utf-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .end local v11    # "logFileInputStream":Ljava/io/FileInputStream;
    .local v12, "logFileInputStream":Ljava/io/FileInputStream;
    const/16 v19, 0x2000

    :try_start_2
    move/from16 v0, v19

    new-array v4, v0, [B

    .line 101
    .local v4, "buffer":[B
    :goto_1
    invoke-virtual {v12, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 102
    .local v6, "count":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    .line 108
    const-string v19, "\r\n\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 109
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/qihoo/linker/logcollector/upload/HttpManager;->END_MP_BOUNDARY:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 111
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 112
    .local v8, "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v13, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 113
    invoke-interface {v5, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 114
    .local v14, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    .line 115
    .local v16, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 116
    .local v17, "statusCode":I
    const/16 v19, 0xc8

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 117
    invoke-static {v14}, Lcom/qihoo/linker/logcollector/upload/HttpManager;->readHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v15

    .line 123
    :cond_1
    if-eqz v3, :cond_2

    .line 125
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 130
    :cond_2
    if-eqz v12, :cond_3

    .line 132
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 139
    :cond_3
    return-object v15

    .line 80
    .end local v4    # "buffer":[B
    .end local v6    # "count":I
    .end local v8    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v12    # "logFileInputStream":Ljava/io/FileInputStream;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "status":Lorg/apache/http/StatusLine;
    .end local v17    # "statusCode":I
    .end local v18    # "temp":Ljava/lang/StringBuilder;
    .restart local v9    # "i":I
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v11    # "logFileInputStream":Ljava/io/FileInputStream;
    :cond_4
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/qihoo/linker/logcollector/upload/HttpParameters;->getKey(I)Ljava/lang/String;

    move-result-object v10

    .line 81
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0xa

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 82
    .restart local v18    # "temp":Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    sget-object v19, Lcom/qihoo/linker/logcollector/upload/HttpManager;->MP_BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v19, "content-disposition: form-data; name=\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 85
    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/qihoo/linker/logcollector/upload/HttpParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 105
    .end local v9    # "i":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "logFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "count":I
    .restart local v12    # "logFileInputStream":Ljava/io/FileInputStream;
    :cond_5
    const/16 v19, 0x0

    :try_start_6
    move/from16 v0, v19

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_1

    .line 120
    .end local v4    # "buffer":[B
    .end local v6    # "count":I
    :catch_0
    move-exception v7

    move-object v11, v12

    .end local v12    # "logFileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "logFileInputStream":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 121
    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "temp":Ljava/lang/StringBuilder;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v7, "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 122
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 123
    :goto_3
    if-eqz v2, :cond_6

    .line 125
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 130
    :cond_6
    if-eqz v11, :cond_7

    .line 132
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 137
    :cond_7
    throw v19

    .line 126
    :catch_1
    move-exception v7

    .line 127
    .restart local v7    # "e":Ljava/io/IOException;
    throw v7

    .line 133
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 134
    .restart local v7    # "e":Ljava/io/IOException;
    throw v7

    .line 126
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "logFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "count":I
    .restart local v8    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v12    # "logFileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "status":Lorg/apache/http/StatusLine;
    .restart local v17    # "statusCode":I
    .restart local v18    # "temp":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v7

    .line 127
    .restart local v7    # "e":Ljava/io/IOException;
    throw v7

    .line 133
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 134
    .restart local v7    # "e":Ljava/io/IOException;
    throw v7

    .line 122
    .end local v4    # "buffer":[B
    .end local v6    # "count":I
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "formEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v12    # "logFileInputStream":Ljava/io/FileInputStream;
    .end local v14    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "status":Lorg/apache/http/StatusLine;
    .end local v17    # "statusCode":I
    .end local v18    # "temp":Ljava/lang/StringBuilder;
    .restart local v11    # "logFileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v19

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "logFileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "logFileInputStream":Ljava/io/FileInputStream;
    .restart local v18    # "temp":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v19

    move-object v11, v12

    .end local v12    # "logFileInputStream":Ljava/io/FileInputStream;
    .restart local v11    # "logFileInputStream":Ljava/io/FileInputStream;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 120
    .end local v18    # "temp":Ljava/lang/StringBuilder;
    :catch_5
    move-exception v7

    goto :goto_2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v7

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method
