.class public Lcom/cat/parase/PublicParser;
.super Ljava/lang/Object;
.source "PublicParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Publicparaser(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "result"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "OK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    const-string v7, "error"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 29
    .local v4, "jsonArray2":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_0

    .line 43
    .end local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 30
    .restart local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray2":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 31
    .local v6, "jsonObject2":Lorg/json/JSONObject;
    new-instance v1, Lcom/cat/data/PublicError;

    invoke-direct {v1}, Lcom/cat/data/PublicError;-><init>()V

    .line 33
    .local v1, "er":Lcom/cat/data/PublicError;
    const-string v7, "code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/cat/data/PublicError;->setCode(Ljava/lang/String;)V

    .line 34
    const-string v7, "message"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/cat/data/PublicError;->setMessage(Ljava/lang/String;)V

    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "er":Lcom/cat/data/PublicError;
    .end local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v6    # "jsonObject2":Lorg/json/JSONObject;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 41
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 43
    const-string v2, "JSONException"

    goto :goto_1
.end method
