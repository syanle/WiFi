.class public Lcom/cat/parase/CountryCodeParser;
.super Ljava/lang/Object;
.source "CountryCodeParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CountryCodeparaser(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v5, "ld":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/Person;>;"
    const-string v7, "countrylist"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    .local v2, "jsonArray3":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 41
    .end local v1    # "i":I
    .end local v2    # "jsonArray3":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "ld":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/Person;>;"
    :goto_1
    return-object v5

    .line 30
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray3":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "ld":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/Person;>;"
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 31
    .local v4, "jsonObject3":Lorg/json/JSONObject;
    new-instance v6, Lcom/cat/data/Person;

    invoke-direct {v6}, Lcom/cat/data/Person;-><init>()V

    .line 32
    .local v6, "mb":Lcom/cat/data/Person;
    const-string v7, "country"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cat/data/Person;->setCountry(Ljava/lang/String;)V

    .line 33
    const-string v7, "countrycn"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cat/data/Person;->setCountrycn(Ljava/lang/String;)V

    .line 34
    const-string v7, "code"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cat/data/Person;->setCode(Ljava/lang/String;)V

    .line 36
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    .end local v2    # "jsonArray3":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonObject3":Lorg/json/JSONObject;
    .end local v5    # "ld":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/Person;>;"
    .end local v6    # "mb":Lcom/cat/data/Person;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    const-string v5, "JSONException"

    goto :goto_1
.end method
