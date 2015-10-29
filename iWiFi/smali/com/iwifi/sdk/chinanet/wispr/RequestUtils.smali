.class public Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;
.super Ljava/lang/Object;
.source "RequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;,
        Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;,
        Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;
    }
.end annotation


# instance fields
.field public final ENCODING:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public httpEntity:Lorg/apache/http/HttpEntity;

.field requestMethod:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->ENCODING:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->url:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->requestMethod:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    .line 74
    return-void
.end method


# virtual methods
.method public getResultInfos()Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;

    invoke-direct {v0, p0}, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;-><init>(Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;)V

    return-object v0
.end method

.method public setEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "postContent"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->httpEntity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEntity(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "forms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->httpEntity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEntity([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 95
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;->httpEntity:Lorg/apache/http/HttpEntity;

    .line 96
    return-void
.end method
