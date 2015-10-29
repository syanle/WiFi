.class public Lcom/pubinfo/freewifialliance/parser/GetDeviceIdParser;
.super Ljava/lang/Object;
.source "GetDeviceIdParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDeviceIdList(Ljava/lang/String;)Lcom/pubinfo/freewifialliance/data/DeviceId;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/pubinfo/freewifialliance/data/DeviceId;

    invoke-direct {v0}, Lcom/pubinfo/freewifialliance/data/DeviceId;-><init>()V

    .line 18
    .local v0, "codeResult":Lcom/pubinfo/freewifialliance/data/DeviceId;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "dev_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pubinfo/freewifialliance/data/DeviceId;->setDev_id(Ljava/lang/String;)V

    .line 21
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pubinfo/freewifialliance/data/DeviceId;->setMessage(Ljava/lang/String;)V

    .line 22
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pubinfo/freewifialliance/data/DeviceId;->setResult(Ljava/lang/String;)V

    .line 24
    return-object v0
.end method
