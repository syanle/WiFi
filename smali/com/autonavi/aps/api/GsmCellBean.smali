.class public Lcom/autonavi/aps/api/GsmCellBean;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/autonavi/aps/api/GsmCellBean;->e:I

    return-void
.end method


# virtual methods
.method public getCellid()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/GsmCellBean;->d:I

    return v0
.end method

.method public getLac()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/GsmCellBean;->c:I

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/api/GsmCellBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/aps/api/GsmCellBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSignal()I
    .locals 1

    iget v0, p0, Lcom/autonavi/aps/api/GsmCellBean;->e:I

    return v0
.end method

.method public setCellid(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/aps/api/GsmCellBean;->d:I

    return-void
.end method

.method public setLac(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/aps/api/GsmCellBean;->c:I

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/GsmCellBean;->a:Ljava/lang/String;

    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/aps/api/GsmCellBean;->b:Ljava/lang/String;

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/aps/api/GsmCellBean;->e:I

    return-void
.end method
