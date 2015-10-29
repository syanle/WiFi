.class public Lcom/pubinfo/freewifialliance/parser/HeartHitParser;
.super Ljava/lang/Object;
.source "HeartHitParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HeartHit(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/pubinfo/freewifialliance/data/CodeResult;

    invoke-direct {v0}, Lcom/pubinfo/freewifialliance/data/CodeResult;-><init>()V

    .line 17
    .local v0, "codeResult":Lcom/pubinfo/freewifialliance/data/CodeResult;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pubinfo/freewifialliance/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 20
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pubinfo/freewifialliance/data/CodeResult;->setResult(Ljava/lang/String;)V

    .line 22
    return-object v0
.end method
