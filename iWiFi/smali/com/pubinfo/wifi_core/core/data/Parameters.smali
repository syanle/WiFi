.class public Lcom/pubinfo/wifi_core/core/data/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"


# instance fields
.field key:Ljava/lang/String;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/data/Parameters;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/Parameters;->key:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/pubinfo/wifi_core/core/data/Parameters;->value:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/Parameters;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/Parameters;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/Parameters;->key:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/Parameters;->value:Ljava/lang/Object;

    .line 37
    return-void
.end method
