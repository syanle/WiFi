.class public Lcom/umeng/socialize/net/u;
.super Lcom/umeng/socialize/net/a/e;
.source "ShareMultiResponse.java"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/a/e;-><init>(Lorg/json/JSONObject;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 28
    invoke-super {p0}, Lcom/umeng/socialize/net/a/e;->a()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/u;->a:Ljava/util/Map;

    .line 30
    invoke-static {}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getDefaultPlatform()[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 44
    :cond_0
    return-void

    .line 32
    :cond_1
    aget-object v3, v1, v0

    .line 33
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    iget-object v5, p0, Lcom/umeng/socialize/net/u;->l:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 36
    :try_start_0
    iget-object v5, p0, Lcom/umeng/socialize/net/u;->l:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 37
    const-string v5, "st"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 38
    iget-object v5, p0, Lcom/umeng/socialize/net/u;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v3

    goto :goto_1
.end method
