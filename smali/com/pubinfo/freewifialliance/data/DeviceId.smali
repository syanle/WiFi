.class public Lcom/pubinfo/freewifialliance/data/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# instance fields
.field private dev_id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDev_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/DeviceId;->dev_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/DeviceId;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/DeviceId;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setDev_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "dev_id"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/DeviceId;->dev_id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/DeviceId;->message:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/DeviceId;->result:Ljava/lang/String;

    .line 38
    return-void
.end method
