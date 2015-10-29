.class final Lcom/autonavi/aps/api/e;
.super Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    invoke-static {}, Lcom/autonavi/aps/api/APS;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/aps/api/APS;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autonavi/aps/api/APS;->a(Landroid/telephony/CellLocation;Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    :cond_1
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-static {v0}, Lcom/autonavi/aps/api/APS;->a(I)V

    invoke-static {}, Lcom/autonavi/aps/api/APS;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/autonavi/aps/api/APS;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/autonavi/aps/api/APS;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/api/GsmCellBean;

    invoke-static {}, Lcom/autonavi/aps/api/APS;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/GsmCellBean;->setSignal(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/autonavi/aps/api/APS;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/aps/api/APS;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/autonavi/aps/api/APS;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/api/CdmaCellBean;

    invoke-static {}, Lcom/autonavi/aps/api/APS;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/CdmaCellBean;->setSignal(I)V

    goto :goto_0
.end method
