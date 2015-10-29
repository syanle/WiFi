.class public Lcom/pubinfo/freewifialliance/data/SsidList;
.super Ljava/lang/Object;
.source "SsidList.java"


# instance fields
.field private data:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/SsidList;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/SsidList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/SsidList;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/SsidList;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/SsidList;->data:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/SsidList;->msg:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/SsidList;->result:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/SsidList;->version:Ljava/lang/String;

    .line 43
    return-void
.end method
