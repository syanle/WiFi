.class public Lcom/iwifi/sdk/tools/DataObject;
.super Ljava/lang/Object;
.source "DataObject.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/iwifi/sdk/tools/DataObject;->key:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/iwifi/sdk/tools/DataObject;->value:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iwifi/sdk/tools/DataObject;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/iwifi/sdk/tools/DataObject;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/iwifi/sdk/tools/DataObject;->key:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iwifi/sdk/tools/DataObject;->value:Ljava/lang/String;

    .line 86
    return-void
.end method
