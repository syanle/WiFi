.class public Lcom/pubinfo/freewifialliance/data/CodeResult;
.super Ljava/lang/Object;
.source "CodeResult.java"


# instance fields
.field private data:Ljava/lang/String;

.field private msg:Ljava/lang/String;

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
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/CodeResult;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/CodeResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/CodeResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/CodeResult;->data:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/CodeResult;->msg:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/CodeResult;->result:Ljava/lang/String;

    .line 22
    return-void
.end method
