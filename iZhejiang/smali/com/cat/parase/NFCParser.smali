.class public Lcom/cat/parase/NFCParser;
.super Ljava/lang/Object;
.source "NFCParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NFCparser(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "result"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "OK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v2, "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    const-string v11, "error"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 30
    .local v4, "jsonArray2":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_0

    .line 53
    .end local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 31
    .restart local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray2":Lorg/json/JSONArray;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 32
    .local v7, "jsonObject2":Lorg/json/JSONObject;
    new-instance v1, Lcom/cat/data/PublicError;

    invoke-direct {v1}, Lcom/cat/data/PublicError;-><init>()V

    .line 33
    .local v1, "er":Lcom/cat/data/PublicError;
    const-string v11, "code"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/cat/data/PublicError;->setCode(Ljava/lang/String;)V

    .line 34
    const-string v11, "message"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/cat/data/PublicError;->setMessage(Ljava/lang/String;)V

    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "er":Lcom/cat/data/PublicError;
    .end local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v7    # "jsonObject2":Lorg/json/JSONObject;
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v9, "ld":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/NFC;>;"
    const-string v11, "data"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 41
    .local v5, "jsonArray3":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_2

    move-object v2, v9

    .line 49
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 43
    .local v8, "jsonObject3":Lorg/json/JSONObject;
    new-instance v10, Lcom/cat/data/NFC;

    invoke-direct {v10}, Lcom/cat/data/NFC;-><init>()V

    .line 44
    .local v10, "mb":Lcom/cat/data/NFC;
    const-string v11, "appid"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/NFC;->setAppid(Ljava/lang/String;)V

    .line 45
    const-string v11, "seqid"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/NFC;->setSeqid(Ljava/lang/String;)V

    .line 46
    const-string v11, "random"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/NFC;->setRandom(Ljava/lang/String;)V

    .line 47
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 51
    .end local v3    # "i":I
    .end local v5    # "jsonArray3":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "jsonObject3":Lorg/json/JSONObject;
    .end local v9    # "ld":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/NFC;>;"
    .end local v10    # "mb":Lcom/cat/data/NFC;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    const-string v2, "JSONException"

    goto :goto_1
.end method
