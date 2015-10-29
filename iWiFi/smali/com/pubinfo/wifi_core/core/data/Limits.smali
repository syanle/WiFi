.class public Lcom/pubinfo/wifi_core/core/data/Limits;
.super Ljava/lang/Object;
.source "Limits.java"


# instance fields
.field private id:Ljava/lang/String;

.field private limitsno:Ljava/lang/String;

.field private week:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/Limits;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitsno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/Limits;->limitsno:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/Limits;->week:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/Limits;->id:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setLimitsno(Ljava/lang/String;)V
    .locals 0
    .param p1, "limitsno"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/Limits;->limitsno:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0
    .param p1, "week"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/Limits;->week:Ljava/lang/String;

    .line 25
    return-void
.end method
