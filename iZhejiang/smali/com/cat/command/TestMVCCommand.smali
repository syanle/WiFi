.class public Lcom/cat/command/TestMVCCommand;
.super Lcom/ta/mvc/command/TACommand;
.source "TestMVCCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ta/mvc/command/TACommand;-><init>()V

    return-void
.end method


# virtual methods
.method protected executeCommand()V
    .locals 12

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/cat/command/TestMVCCommand;->getRequest()Lcom/ta/mvc/common/TARequest;

    move-result-object v6

    .line 21
    .local v6, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v6}, Lcom/ta/mvc/common/TARequest;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 22
    .local v7, "strJson":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cat/entity/StudyEntity;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v3, "jo":Lorg/json/JSONObject;
    const-string v9, "students"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 27
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-lt v2, v9, :cond_0

    .line 42
    invoke-virtual {p0, v0}, Lcom/cat/command/TestMVCCommand;->sendSuccessMessage(Ljava/lang/Object;)V

    .line 45
    .end local v2    # "i":I
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 29
    .restart local v2    # "i":I
    .restart local v3    # "jo":Lorg/json/JSONObject;
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 30
    .local v5, "o":Lorg/json/JSONObject;
    new-instance v8, Lcom/cat/entity/StudyEntity;

    invoke-direct {v8}, Lcom/cat/entity/StudyEntity;-><init>()V

    .line 31
    .local v8, "studyEntity":Lcom/cat/entity/StudyEntity;
    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/cat/entity/StudyEntity;->setName(Ljava/lang/String;)V

    .line 32
    const-string v9, "age"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/cat/entity/StudyEntity;->setAge(I)V

    .line 33
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "name:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "name"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "age:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 35
    const-string v11, "age"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 34
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "i":I
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "o":Lorg/json/JSONObject;
    .end local v8    # "studyEntity":Lcom/cat/entity/StudyEntity;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-virtual {p0, v0}, Lcom/cat/command/TestMVCCommand;->sendSuccessMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v9

    .line 42
    invoke-virtual {p0, v0}, Lcom/cat/command/TestMVCCommand;->sendSuccessMessage(Ljava/lang/Object;)V

    .line 43
    throw v9
.end method
