.class public Lcom/autonavi/aps/api/ApsRequest;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertApsRequestXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget v0, Lcom/autonavi/aps/api/Constant;->apsVerion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/autonavi/aps/api/ApsRequest;->setApsRequestProperty(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"GBK\" ?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<Cell_Req ver=\"1.0\"><HDR version=\"1.0\" cdma=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getCdma()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" gps=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getGps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" glong=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getGlong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" glat=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getGlat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" precision=\"\"><src>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</src><license>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getLicense()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</license><imei>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</imei ></HDR><DRR phnum=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getLine1number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" nettype=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNettype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" inftype=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getInftype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getCdma()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "<sid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</sid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "<nid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</nid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "<bid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getBid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</bid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "<lon>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getLon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</lon>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "<lat>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</lat>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "<signal>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getSignal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</signal><nb>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</nb><mmac>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getMainmac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</mmac><macs>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getMacs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</macs></DRR></Cell_Req>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_0
    const-string v1, "<mcc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getMcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</mcc><mnc>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</mnc><lac>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getLac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</lac><cellid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getCellid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</cellid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "aps"

    const-string v1, "aps request xml do not need convert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getBid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->n:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->n:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCdma()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->d:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCellid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->j:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->j:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getClienttime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getGaccuracy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getGlat()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->v:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->v:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getGlong()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->u:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->u:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getGps()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->t:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->t:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->c:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getInftype()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getMainmac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "2"

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->y:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->y:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "1"

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->y:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLac()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->k:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->k:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->f:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->a:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->a:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1number()Ljava/lang/String;
    .locals 4

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v0

    const-string v1, "line1number: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v1

    const-string v2, "line1number: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->w:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->w:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->w:Ljava/lang/String;

    return-object v0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v1

    const-string v2, "line1number: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->w:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->e:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMacs()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->r:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->r:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getMainmac()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->s:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->s:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->h:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->h:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->i:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->i:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getNb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->q:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->q:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getNettype()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nettype"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p0}, Lcom/autonavi/aps/api/ApsRequest;->getNetwork()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->x:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->x:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->x:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->x:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->o:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->o:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->m:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->m:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->l:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->l:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSignal()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->p:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->p:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->b:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/aps/api/ApsRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setApsRequestProperty(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    new-instance v2, Lcom/autonavi/aps/api/k;

    invoke-direct {v2, p0}, Lcom/autonavi/aps/api/k;-><init>(Lcom/autonavi/aps/api/ApsRequest;)V

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->n:Ljava/lang/String;

    return-void
.end method

.method public setCdma(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public setCellid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->j:Ljava/lang/String;

    return-void
.end method

.method public setClienttime(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    const-string p1, "0000-00-00-00-00-00"

    :cond_1
    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public setGaccuracy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->z:Ljava/lang/String;

    return-void
.end method

.method public setGlat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->v:Ljava/lang/String;

    return-void
.end method

.method public setGlong(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->u:Ljava/lang/String;

    return-void
.end method

.method public setGps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->t:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setLac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->k:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->f:Ljava/lang/String;

    return-void
.end method

.method public setLicense(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public setLon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->e:Ljava/lang/String;

    return-void
.end method

.method public setMacs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->r:Ljava/lang/String;

    return-void
.end method

.method public setMainmac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->s:Ljava/lang/String;

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->h:Ljava/lang/String;

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->i:Ljava/lang/String;

    return-void
.end method

.method public setNb(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/aps/api/ApsRequest;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/aps/api/ApsRequest;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->q:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->o:Ljava/lang/String;

    return-void
.end method

.method public setNid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->m:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->l:Ljava/lang/String;

    return-void
.end method

.method public setSignal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->p:Ljava/lang/String;

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/ApsRequest;->b:Ljava/lang/String;

    return-void
.end method
