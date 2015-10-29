.class public Lcom/iwifi/sdk/data/SsidList;
.super Ljava/lang/Object;
.source "SsidList.java"


# instance fields
.field private code:Ljava/lang/String;

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
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/iwifi/sdk/data/SsidList;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iwifi/sdk/data/SsidList;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iwifi/sdk/data/SsidList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iwifi/sdk/data/SsidList;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/iwifi/sdk/data/SsidList;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/iwifi/sdk/data/SsidList;->code:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iwifi/sdk/data/SsidList;->data:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iwifi/sdk/data/SsidList;->msg:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/iwifi/sdk/data/SsidList;->result:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/iwifi/sdk/data/SsidList;->version:Ljava/lang/String;

    .line 21
    return-void
.end method
