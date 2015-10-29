.class public Lcom/iwifi/sdk/data/SdkKeyResult;
.super Ljava/lang/Object;
.source "SdkKeyResult.java"


# instance fields
.field private code:Ljava/lang/String;

.field private data:Ljava/lang/String;

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
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iwifi/sdk/data/SdkKeyResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/iwifi/sdk/data/SdkKeyResult;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iwifi/sdk/data/SdkKeyResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/iwifi/sdk/data/SdkKeyResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iwifi/sdk/data/SdkKeyResult;->code:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iwifi/sdk/data/SdkKeyResult;->data:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/iwifi/sdk/data/SdkKeyResult;->message:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/iwifi/sdk/data/SdkKeyResult;->result:Ljava/lang/String;

    .line 24
    return-void
.end method
