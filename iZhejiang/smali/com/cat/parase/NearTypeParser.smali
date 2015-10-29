.class public Lcom/cat/parase/NearTypeParser;
.super Ljava/lang/Object;
.source "NearTypeParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Neartypeparaser(Ljava/lang/String;)Ljava/lang/Object;
    .locals 24
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string v22, "result"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "OK"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v8, "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    const-string v22, "error"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 32
    .local v10, "jsonArray2":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_0

    .line 81
    .end local v8    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v9    # "i":I
    .end local v10    # "jsonArray2":Lorg/json/JSONArray;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v8

    .line 33
    .restart local v8    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .restart local v9    # "i":I
    .restart local v10    # "jsonArray2":Lorg/json/JSONArray;
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 34
    .local v16, "jsonObject2":Lorg/json/JSONObject;
    new-instance v7, Lcom/cat/data/PublicError;

    invoke-direct {v7}, Lcom/cat/data/PublicError;-><init>()V

    .line 35
    .local v7, "er":Lcom/cat/data/PublicError;
    const-string v22, "code"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/cat/data/PublicError;->setCode(Ljava/lang/String;)V

    .line 36
    const-string v22, "message"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/cat/data/PublicError;->setMessage(Ljava/lang/String;)V

    .line 37
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 41
    .end local v7    # "er":Lcom/cat/data/PublicError;
    .end local v8    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v9    # "i":I
    .end local v10    # "jsonArray2":Lorg/json/JSONArray;
    .end local v16    # "jsonObject2":Lorg/json/JSONObject;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v3, "Md":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v4, "Td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TopData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "Bd":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/BottomData;>;"
    const-string v22, "data"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 45
    .local v14, "jsonData":Lorg/json/JSONObject;
    const-string v22, "mapdata"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 46
    .local v11, "jsonArray3":Lorg/json/JSONArray;
    const-string v22, "topdata"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 47
    .local v12, "jsonArray4":Lorg/json/JSONArray;
    const-string v22, "buttomdata"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 48
    .local v13, "jsonArray5":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_2

    .line 56
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_3

    .line 66
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v9, v0, :cond_4

    .line 74
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/cat/data/ComData;->setMapData(Ljava/util/List;)V

    .line 75
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/cat/data/ComData;->setTopData(Ljava/util/List;)V

    .line 76
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/cat/data/ComData;->setBottomData(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const-string v8, "OK"

    goto/16 :goto_1

    .line 49
    :cond_2
    :try_start_1
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 50
    .local v17, "jsonObject3":Lorg/json/JSONObject;
    new-instance v20, Lcom/cat/data/MapData;

    invoke-direct/range {v20 .. v20}, Lcom/cat/data/MapData;-><init>()V

    .line 51
    .local v20, "md":Lcom/cat/data/MapData;
    const-string v22, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cat/data/MapData;->setId(Ljava/lang/String;)V

    .line 52
    const-string v22, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cat/data/MapData;->setName(Ljava/lang/String;)V

    .line 53
    const-string v22, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/cat/data/MapData;->setValue(Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 57
    .end local v17    # "jsonObject3":Lorg/json/JSONObject;
    .end local v20    # "md":Lcom/cat/data/MapData;
    :cond_3
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/json/JSONObject;

    .line 58
    .local v18, "jsonObject4":Lorg/json/JSONObject;
    new-instance v21, Lcom/cat/data/TopData;

    invoke-direct/range {v21 .. v21}, Lcom/cat/data/TopData;-><init>()V

    .line 59
    .local v21, "td":Lcom/cat/data/TopData;
    const-string v22, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/cat/data/TopData;->setId(Ljava/lang/String;)V

    .line 60
    const-string v22, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/cat/data/TopData;->setName(Ljava/lang/String;)V

    .line 61
    const-string v22, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/cat/data/TopData;->setValue(Ljava/lang/String;)V

    .line 62
    const-string v22, "iconid"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/cat/data/TopData;->setIconid(Ljava/lang/String;)V

    .line 63
    const-string v22, "url"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/cat/data/TopData;->setUrl(Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 67
    .end local v18    # "jsonObject4":Lorg/json/JSONObject;
    .end local v21    # "td":Lcom/cat/data/TopData;
    :cond_4
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 68
    .local v19, "jsonObject5":Lorg/json/JSONObject;
    new-instance v5, Lcom/cat/data/BottomData;

    invoke-direct {v5}, Lcom/cat/data/BottomData;-><init>()V

    .line 69
    .local v5, "bd":Lcom/cat/data/BottomData;
    const-string v22, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cat/data/BottomData;->setId(Ljava/lang/String;)V

    .line 70
    const-string v22, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cat/data/BottomData;->setName(Ljava/lang/String;)V

    .line 71
    const-string v22, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/cat/data/BottomData;->setValue(Ljava/lang/String;)V

    .line 72
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 79
    .end local v2    # "Bd":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/BottomData;>;"
    .end local v3    # "Md":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapData;>;"
    .end local v4    # "Td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TopData;>;"
    .end local v5    # "bd":Lcom/cat/data/BottomData;
    .end local v9    # "i":I
    .end local v11    # "jsonArray3":Lorg/json/JSONArray;
    .end local v12    # "jsonArray4":Lorg/json/JSONArray;
    .end local v13    # "jsonArray5":Lorg/json/JSONArray;
    .end local v14    # "jsonData":Lorg/json/JSONObject;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .end local v19    # "jsonObject5":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 80
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 81
    const-string v8, "JSONException"

    goto/16 :goto_1
.end method
