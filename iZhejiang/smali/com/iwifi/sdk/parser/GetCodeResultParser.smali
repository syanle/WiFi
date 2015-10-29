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

.method public static GetCodeResultList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/data/CodeResult;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "type_result"    # Ljava/lang/String;
    .param p2, "type_msg"    # Ljava/lang/String;
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
    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 33
    :cond_0
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 36
    :cond_1
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
    .line 41
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 42
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 45
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 46
    :cond_0
    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 51
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
    .line 56
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 57
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 60
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 61
    :cond_0
    if-eqz p4, :cond_1

    .line 62
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData1(Ljava/lang/String;)V

    .line 63
    :cond_1
    if-eqz p2, :cond_2

    .line 64
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 65
    :cond_2
    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 68
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
    .line 73
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 74
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 78
    :cond_0
    if-eqz p4, :cond_1

    .line 79
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData1(Ljava/lang/String;)V

    .line 80
    :cond_1
    if-eqz p5, :cond_2

    .line 81
    invoke-virtual {v1, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData2(Ljava/lang/String;)V

    .line 82
    :cond_2
    if-eqz p2, :cond_3

    .line 83
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 84
    :cond_3
    if-eqz p1, :cond_4

    .line 85
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 87
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
    .line 92
    new-instance v0, Lcom/iwifi/sdk/data/CodeResult;

    invoke-direct {v0}, Lcom/iwifi/sdk/data/CodeResult;-><init>()V

    .line 93
    .local v0, "codeResult":Lcom/iwifi/sdk/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 97
    :cond_0
    if-eqz p4, :cond_1

    .line 98
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData1(Ljava/lang/String;)V

    .line 99
    :cond_1
    if-eqz p5, :cond_2

    .line 100
    invoke-virtual {v1, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData2(Ljava/lang/String;)V

    .line 101
    :cond_2
    if-eqz p6, :cond_3

    .line 102
    invoke-virtual {v1, p6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setData3(Ljava/lang/String;)V

    .line 103
    :cond_3
    if-eqz p2, :cond_4

    .line 104
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 105
    :cond_4
    if-eqz p1, :cond_5

    .line 106
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 108
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
    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "jsonObject":Lorg/json/JSONObject;
    return-object v0
.end method
