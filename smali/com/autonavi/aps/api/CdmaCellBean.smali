.class public Lcom/autonavi/aps/api/CdmaCellBean;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->h:I

    return-void
.end method


# virtual methods
.method public getBid()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->g:I

    return v0
.end method

.method public getLat()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->a:I

    return v0
.end method

.method public getLon()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->b:I

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->f:I

    return v0
.end method

.method public getSid()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->e:I

    return v0
.end method

.method public getSignal()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->h:I

    return v0
.end method

.method public setBid(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/aps/api/CdmaCellBean;->g:I

    return-void
.end method

.method public setLat(I)V
    .locals 1

    const v0, 0x7fffffff

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/autonavi/aps/api/CdmaCellBean;->a:I

    :cond_0
    return-void
.end method

.method public setLon(I)V
    .locals 2

    iget v0, p0, Lcom/autonavi/aps/api/CdmaCellBean;->a:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    iput p1, p0, Lcom/autonavi/aps/api/CdmaCellBean;->b:I

    :cond_0
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/CdmaCellBean;->c:Ljava/lang/String;

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/CdmaCellBean;->d:Ljava/lang/String;

    return-void
.end method

.method public setNid(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/aps/api/CdmaCellBean;->f:I

    return-void
.end method

.method public setSid(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/aps/api/CdmaCellBean;->e:I

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/aps/api/CdmaCellBean;->h:I

    return-void
.end method
