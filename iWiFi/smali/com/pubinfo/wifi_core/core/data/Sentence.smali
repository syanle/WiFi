.class public Lcom/pubinfo/wifi_core/core/data/Sentence;
.super Ljava/lang/Object;
.source "Sentence.java"


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/pubinfo/wifi_core/core/data/Sentence;->name:Ljava/lang/String;

    .line 10
    iput p1, p0, Lcom/pubinfo/wifi_core/core/data/Sentence;->index:I

    .line 11
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/pubinfo/wifi_core/core/data/Sentence;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/data/Sentence;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/pubinfo/wifi_core/core/data/Sentence;->index:I

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/data/Sentence;->name:Ljava/lang/String;

    .line 19
    return-void
.end method
