.class public Lcom/iwifi/sdk/parser/GetCodeResultParser;
.super Ljava/lang/Object;
.source "GetCodeResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCodeResultList(Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 17
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 20
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 21
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method public static GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "type_result"    # Ljava/lang/String;
    .param p2, "type_msg"    # Ljava/lang/String;
    .param p3, "type_data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 29
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 32
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 33
    :cond_0
    if-eqz p2, :cond_1

    .line 34
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 38
    :cond_2
    return-object v0
.end method

.method public static GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "type_result"    # Ljava/lang/String;
    .param p2, "type_msg"    # Ljava/lang/String;
    .param p3, "type_data"    # Ljava/lang/String;
    .param p4, "type_data1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 44
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 47
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 48
    :cond_0
    if-eqz p4, :cond_1

    .line 49
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData1(Ljava/lang/String;)V

    .line 50
    :cond_1
    if-eqz p2, :cond_2

    .line 51
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 52
    :cond_2
    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 55
    :cond_3
    return-object v0
.end method

.method public static GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "type_result"    # Ljava/lang/String;
    .param p2, "type_msg"    # Ljava/lang/String;
    .param p3, "type_data"    # Ljava/lang/String;
    .param p4, "type_data1"    # Ljava/lang/String;
    .param p5, "type_data2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 61
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 64
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 65
    :cond_0
    if-eqz p4, :cond_1

    .line 66
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData1(Ljava/lang/String;)V

    .line 67
    :cond_1
    if-eqz p5, :cond_2

    .line 68
    invoke-virtual {v1, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData2(Ljava/lang/String;)V

    .line 69
    :cond_2
    if-eqz p2, :cond_3

    .line 70
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 71
    :cond_3
    if-eqz p1, :cond_4

    .line 72
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 74
    :cond_4
    return-object v0
.end method

.method public static GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "type_result"    # Ljava/lang/String;
    .param p2, "type_msg"    # Ljava/lang/String;
    .param p3, "type_data"    # Ljava/lang/String;
    .param p4, "type_data1"    # Ljava/lang/String;
    .param p5, "type_data2"    # Ljava/lang/String;
    .param p6, "type_data3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 80
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 83
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 84
    :cond_0
    if-eqz p4, :cond_1

    .line 85
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData1(Ljava/lang/String;)V

    .line 86
    :cond_1
    if-eqz p5, :cond_2

    .line 87
    invoke-virtual {v1, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData2(Ljava/lang/String;)V

    .line 88
    :cond_2
    if-eqz p6, :cond_3

    .line 89
    invoke-virtual {v1, p6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData3(Ljava/lang/String;)V

    .line 90
    :cond_3
    if-eqz p2, :cond_4

    .line 91
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 92
    :cond_4
    if-eqz p1, :cond_5

    .line 93
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 95
    :cond_5
    return-object v0
.end method

.method public static GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "jsonObject":Lorg/json/JSONObject;
    return-object v0
.end method
