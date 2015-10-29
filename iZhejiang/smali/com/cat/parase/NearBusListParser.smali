.class public Lcom/cat/parase/NearBusListParser;
.super Ljava/lang/Object;
.source "NearBusListParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Nearbuslistparaser(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 13
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "result"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "OK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v3, "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    const-string v11, "error"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 30
    .local v5, "jsonArray2":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v4, v11, :cond_0

    .line 107
    .end local v3    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v4    # "i":I
    .end local v5    # "jsonArray2":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 31
    .restart local v3    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .restart local v4    # "i":I
    .restart local v5    # "jsonArray2":Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 32
    .local v8, "jsonObject2":Lorg/json/JSONObject;
    new-instance v2, Lcom/cat/data/PublicError;

    invoke-direct {v2}, Lcom/cat/data/PublicError;-><init>()V

    .line 33
    .local v2, "er":Lcom/cat/data/PublicError;
    const-string v11, "code"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/cat/data/PublicError;->setCode(Ljava/lang/String;)V

    .line 34
    const-string v11, "message"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/cat/data/PublicError;->setMessage(Ljava/lang/String;)V

    .line 35
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "er":Lcom/cat/data/PublicError;
    .end local v3    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v4    # "i":I
    .end local v5    # "jsonArray2":Lorg/json/JSONArray;
    .end local v8    # "jsonObject2":Lorg/json/JSONObject;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, "Mc":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapCustom;>;"
    const-string v11, "data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 41
    .local v6, "jsonArray3":Lorg/json/JSONArray;
    if-nez p1, :cond_4

    .line 42
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v4, v11, :cond_3

    .end local v4    # "i":I
    :cond_2
    move-object v3, v0

    .line 103
    goto :goto_1

    .line 43
    .restart local v4    # "i":I
    :cond_3
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 44
    .local v9, "jsonObject3":Lorg/json/JSONObject;
    new-instance v10, Lcom/cat/data/MapCustom;

    invoke-direct {v10}, Lcom/cat/data/MapCustom;-><init>()V

    .line 46
    .local v10, "mc":Lcom/cat/data/MapCustom;
    const-string v11, "name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setName(Ljava/lang/String;)V

    .line 47
    const-string v11, "lat"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setLat(Ljava/lang/String;)V

    .line 48
    const-string v11, "lng"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setLng(Ljava/lang/String;)V

    .line 50
    const-string v11, "business_url"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 49
    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setBusiness_url(Ljava/lang/String;)V

    .line 51
    const-string v11, "goods"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setGoods(Ljava/lang/String;)V

    .line 52
    const-string v11, "type"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setType(Ljava/lang/String;)V

    .line 67
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 69
    .end local v4    # "i":I
    .end local v9    # "jsonObject3":Lorg/json/JSONObject;
    .end local v10    # "mc":Lcom/cat/data/MapCustom;
    :cond_4
    const/4 v11, 0x1

    if-ne p1, v11, :cond_2

    .line 70
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 71
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 72
    .restart local v9    # "jsonObject3":Lorg/json/JSONObject;
    new-instance v10, Lcom/cat/data/MapCustom;

    invoke-direct {v10}, Lcom/cat/data/MapCustom;-><init>()V

    .line 74
    .restart local v10    # "mc":Lcom/cat/data/MapCustom;
    const-string v11, "name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setName(Ljava/lang/String;)V

    .line 75
    const-string v11, "address"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setAddress(Ljava/lang/String;)V

    .line 76
    const-string v11, "s_photo_url"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setS_photo_url(Ljava/lang/String;)V

    .line 77
    const-string v11, "distance"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setDistance(Ljava/lang/String;)V

    .line 81
    const-string v11, "business_url"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 80
    invoke-virtual {v10, v11}, Lcom/cat/data/MapCustom;->setBusiness_url(Ljava/lang/String;)V

    .line 96
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 105
    .end local v0    # "Mc":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapCustom;>;"
    .end local v4    # "i":I
    .end local v6    # "jsonArray3":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "jsonObject3":Lorg/json/JSONObject;
    .end local v10    # "mc":Lcom/cat/data/MapCustom;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    const-string v3, "JSONException"

    goto/16 :goto_1
.end method
