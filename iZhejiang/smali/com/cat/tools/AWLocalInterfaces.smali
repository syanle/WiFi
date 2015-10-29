.class public Lcom/cat/tools/AWLocalInterfaces;
.super Ljava/lang/Object;
.source "AWLocalInterfaces.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseContent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "result"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "OK"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v2, "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    const-string v11, "error"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 53
    .local v4, "jsonArray2":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_0

    .line 77
    .end local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 54
    .restart local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray2":Lorg/json/JSONArray;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 55
    .local v7, "jsonObject2":Lorg/json/JSONObject;
    new-instance v1, Lcom/cat/data/PublicError;

    invoke-direct {v1}, Lcom/cat/data/PublicError;-><init>()V

    .line 57
    .local v1, "er":Lcom/cat/data/PublicError;
    const-string v11, "code"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/cat/data/PublicError;->setCode(Ljava/lang/String;)V

    .line 58
    const-string v11, "message"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/cat/data/PublicError;->setMessage(Ljava/lang/String;)V

    .line 59
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "er":Lcom/cat/data/PublicError;
    .end local v2    # "error":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonArray2":Lorg/json/JSONArray;
    .end local v7    # "jsonObject2":Lorg/json/JSONObject;
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v9, "ld":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UpLoadData;>;"
    const-string v11, "data"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 65
    .local v5, "jsonArray3":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_2

    move-object v2, v9

    .line 73
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 67
    .local v8, "jsonObject3":Lorg/json/JSONObject;
    new-instance v10, Lcom/cat/data/UpLoadData;

    invoke-direct {v10}, Lcom/cat/data/UpLoadData;-><init>()V

    .line 69
    .local v10, "mb":Lcom/cat/data/UpLoadData;
    const-string v11, "faceimg"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/cat/data/UpLoadData;->setFaceimg(Ljava/lang/String;)V

    .line 71
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 75
    .end local v3    # "i":I
    .end local v5    # "jsonArray3":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "jsonObject3":Lorg/json/JSONObject;
    .end local v9    # "ld":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UpLoadData;>;"
    .end local v10    # "mb":Lcom/cat/data/UpLoadData;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    const-string v2, "JSONException"

    goto :goto_1
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "authid"    # Ljava/lang/String;
    .param p2, "memberid"    # Ljava/lang/String;
    .param p3, "tempFilePath"    # Ljava/lang/String;
    .param p4, "termac"    # Ljava/lang/String;
    .param p5, "appkey"    # Ljava/lang/String;
    .param p6, "secret"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v5, "tempFile":Ljava/io/File;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v3, "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    const-string v6, "faceimg"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v6, "authid"

    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v6, "memberid"

    invoke-virtual {v4, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v6, "faceimg"

    const-string v7, "faceimg.jpg"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const/4 v1, 0x0

    .line 34
    .local v1, "content":Ljava/lang/String;
    const-string v0, "&faceimg=faceimg.jpg"

    .line 37
    .local v0, "bodyparam":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 38
    const-string v7, "upload.html"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-static {v4, v3, v6, p7}, Lcom/cat/tools/PostFile;->upload(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
