.class final Lcom/autonavi/aps/api/k;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Ljava/lang/StringBuffer;

.field private synthetic b:Lcom/autonavi/aps/api/ApsRequest;


# direct methods
.method constructor <init>(Lcom/autonavi/aps/api/ApsRequest;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "license"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setLicense(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "gaccuracy"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setGaccuracy(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "src"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setSrc(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "imei"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setImei(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "lac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setLac(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "cellid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setCellid(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "mnc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setMnc(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "mcc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setMcc(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "sid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setSid(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "nid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setNid(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "bid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setBid(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "network"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setNetwork(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setGps(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "cdma"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setCdma(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "glat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setGlat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "glong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setGlong(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "lat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setLat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "lon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setLon(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "nb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setNb(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "signal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setSignal(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "macs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setMacs(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v0, "mainmac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setMainmac(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "clienttime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->b:Lcom/autonavi/aps/api/ApsRequest;

    iget-object v1, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->setClienttime(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/autonavi/aps/api/k;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
