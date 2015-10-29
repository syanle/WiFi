.class public abstract Lcom/mapabc/mapapi/core/s;
.super Lcom/mapabc/mapapi/core/t;
.source "ProtobufResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mapabc/mapapi/core/t",
        "<TT;TV;>;"
    }
.end annotation


# static fields
.field protected static final SERVER_RETURN_OK:Ljava/lang/String; = "000000"


# instance fields
.field protected serverReturnCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/net/Proxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/mapabc/mapapi/core/t;-><init>(Ljava/lang/Object;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/mapabc/mapapi/core/s;->initParams(Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getRequestType()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/mapabc/mapapi/core/o;->a()Lcom/mapabc/mapapi/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/o;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initPOIEntity(Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;)Lcom/mapabc/mapapi/core/s$a;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/mapabc/mapapi/core/s$a;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/s$a;-><init>()V

    .line 125
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasPguid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getPguid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->a:Ljava/lang/String;

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->b:Ljava/lang/String;

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->c:Ljava/lang/String;

    .line 134
    :cond_2
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasX()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getX()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->d:Ljava/lang/String;

    .line 137
    :cond_3
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasY()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getY()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->e:Ljava/lang/String;

    .line 140
    :cond_4
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasSrctype()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getSrctype()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->f:Ljava/lang/String;

    .line 143
    :cond_5
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->g:Ljava/lang/String;

    .line 146
    :cond_6
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 147
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->h:Ljava/lang/String;

    .line 149
    :cond_7
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasMatch()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 150
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getMatch()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->i:Ljava/lang/String;

    .line 152
    :cond_8
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 153
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->j:Ljava/lang/String;

    .line 155
    :cond_9
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasNewtype()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 156
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getNewtype()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->k:Ljava/lang/String;

    .line 158
    :cond_a
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasCitycode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 159
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getCitycode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->l:Ljava/lang/String;

    .line 161
    :cond_b
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasTypecode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 162
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTypecode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->m:Ljava/lang/String;

    .line 164
    :cond_c
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasGridcode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 165
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getGridcode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->n:Ljava/lang/String;

    .line 167
    :cond_d
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasBuscode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 168
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getBuscode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->o:Ljava/lang/String;

    .line 170
    :cond_e
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 171
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->p:Ljava/lang/String;

    .line 173
    :cond_f
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasXml()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 174
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getXml()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->q:Ljava/lang/String;

    .line 176
    :cond_10
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasImageid()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 177
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getImageid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->r:Ljava/lang/String;

    .line 179
    :cond_11
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasTel()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 180
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getTel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->s:Ljava/lang/String;

    .line 182
    :cond_12
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasLinkid()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 183
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getLinkid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->t:Ljava/lang/String;

    .line 185
    :cond_13
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasDistance()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 186
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDistance()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->u:Ljava/lang/String;

    .line 188
    :cond_14
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->hasDrivedistance()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 189
    invoke-virtual {p1}, Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;->getDrivedistance()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapabc/mapapi/core/s$a;->v:Ljava/lang/String;

    .line 191
    :cond_15
    return-object v0
.end method

.method protected abstract initParams(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract parseProtoBufResponse([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation
.end method

.method protected throwsProtoBufferMapAbcException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "000001"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u65e0\u67e5\u8be2\u7ed3\u679c-000001"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const-string v0, "000002"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u8c03\u7528\u670d\u52a1\u53d1\u751f\u5f02\u5e38-000002"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    const-string v0, "010001"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u975e\u6cd5\u5750\u6807\u683c\u5f0f-010001"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    const-string v0, "010002"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u5b57\u7b26\u96c6\u7f16\u7801\u9519\u8bef-010002"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    const-string v0, "010003"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "Apikey\u4e3a\u7a7a-010003"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_4
    const-string v0, "020000"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u4ea7\u54c1\u672a\u6388\u6743-020000"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_5
    const-string v0, "020001"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "Apikey\u4e0d\u6b63\u786e-020001"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_6
    const-string v0, "020002"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "Api\u8d26\u53f7\u4e0d\u5b58\u5728-020002"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_7
    const-string v0, "020003"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 65
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u6ca1\u6709\u670d\u52a1\u8bbf\u95ee\u6743\u9650-020003"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_8
    const-string v0, "020004"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "IP\u9a8c\u8bc1\u5931\u8d25-020004"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_9
    const-string v0, "020005"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 69
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u57ce\u5e02\u9a8c\u8bc1\u5931\u8d25-020005"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_a
    const-string v0, "020006"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u57fa\u7840\u6a21\u578b\u9a8c\u8bc1\u5931\u8d25-020006"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_b
    const-string v0, "020007"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 73
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u7f51\u5361\u5730\u5740\u4e0d\u5339\u914d-020007"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_c
    const-string v0, "020008"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 75
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "license\u914d\u7f6e\u9519\u8bef-020008"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_d
    const-string v0, "020009"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 77
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u57ce\u5e02\u53f7\u4e0d\u5339\u914d-020009"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_e
    const-string v0, "020010"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 79
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u5934\u6587\u4ef6\u4e0d\u5339\u914d-020010"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_f
    const-string v0, "020011"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 81
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u8bf7\u6c42\u6570\u8d85\u51fa\u6700\u5927\u8303\u56f4-020011"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_10
    const-string v0, "030001"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 83
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u7f13\u5b58\u670d\u52a1\u5668\u5f02\u5e38-030001"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_11
    const-string v0, "040001"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 85
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u67e5\u8be2\u670d\u52a1\u8fde\u63a5\u5f02\u5e38-040001"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_12
    const-string v0, "040002"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 87
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u67e5\u8be2\u670d\u52a1\u8fd4\u56de\u683c\u5f0f\u89e3\u6790\u5f02\u5e38-040002"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_13
    const-string v0, "050001"

    iget-object v1, p0, Lcom/mapabc/mapapi/core/s;->serverReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 89
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u5f53\u524d\u683c\u5f0f\u4e0d\u652f\u6301-050001"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_14
    new-instance v0, Lcom/mapabc/mapapi/core/MapAbcException;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/mapabc/mapapi/core/MapAbcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
