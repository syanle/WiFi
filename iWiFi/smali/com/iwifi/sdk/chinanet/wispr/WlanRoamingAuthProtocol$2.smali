.class Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$2;
.super Ljava/lang/Object;
.source "WlanRoamingAuthProtocol.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$2;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP response may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    :cond_0
    const-string v4, "location"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 159
    .local v2, "locationHeader":Lorg/apache/http/Header;
    if-nez v2, :cond_1

    .line 161
    new-instance v4, Lorg/apache/http/ProtocolException;

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received redirect response "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    const-string v6, " but no location header"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-direct {v4, v5}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "location":Ljava/lang/String;
    const-string v4, "HttpUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Redirect requested to location \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v3, "uri":Ljava/net/URI;
    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$2;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$1(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;Ljava/lang/String;)V

    .line 175
    return-object v3

    .line 171
    .end local v3    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/net/URISyntaxException;
    new-instance v4, Lorg/apache/http/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid redirect URI: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "HTTP response may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 134
    .local v2, "statusCode":I
    const-string v5, "HttpUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isRedirectRequested : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    packed-switch v2, :pswitch_data_0

    .line 147
    :cond_1
    :goto_0
    :pswitch_0
    return v3

    .line 140
    :pswitch_1
    const-string v5, "http.request"

    .line 139
    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpRequest;

    .line 141
    .local v1, "request":Lorg/apache/http/HttpRequest;
    invoke-interface {v1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "method":Ljava/lang/String;
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 143
    const-string v5, "HEAD"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    move v3, v4

    .line 142
    goto :goto_0

    .end local v0    # "method":Ljava/lang/String;
    .end local v1    # "request":Lorg/apache/http/HttpRequest;
    :pswitch_2
    move v3, v4

    .line 145
    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
