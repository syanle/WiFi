.class public Lcom/cat/util/stringcache/TAProcessStringHandler;
.super Lcom/ta/util/cache/TAProcessDataHandler;
.source "TAProcessStringHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ta/util/cache/TAProcessDataHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 12
    new-instance v1, Lcom/ta/TASyncHttpClient;

    invoke-direct {v1}, Lcom/ta/TASyncHttpClient;-><init>()V

    .line 13
    .local v1, "client":Lcom/ta/TASyncHttpClient;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ta/TASyncHttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    .local v2, "returnString":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 21
    .local v0, "bytes":[B
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v3

    goto :goto_0
.end method
