.class public Lcom/ta/util/cache/TACacheEntity;
.super Lcom/ta/common/TABaseEntity;
.source "TACacheEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ta/common/TABaseEntity;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private asyncEntity:Lcom/ta/util/cache/TAAsyncEntity;

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/ta/util/cache/TACacheEntity;, "Lcom/ta/util/cache/TACacheEntity<TT;>;"
    invoke-direct {p0}, Lcom/ta/common/TABaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsyncEntity()Lcom/ta/util/cache/TAAsyncEntity;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/ta/util/cache/TACacheEntity;, "Lcom/ta/util/cache/TACacheEntity<TT;>;"
    iget-object v0, p0, Lcom/ta/util/cache/TACacheEntity;->asyncEntity:Lcom/ta/util/cache/TAAsyncEntity;

    return-object v0
.end method

.method public getT()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/ta/util/cache/TACacheEntity;, "Lcom/ta/util/cache/TACacheEntity<TT;>;"
    iget-object v0, p0, Lcom/ta/util/cache/TACacheEntity;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public setAsyncEntity(Lcom/ta/util/cache/TAAsyncEntity;)V
    .locals 0
    .param p1, "asyncEntity"    # Lcom/ta/util/cache/TAAsyncEntity;

    .prologue
    .line 43
    .local p0, "this":Lcom/ta/util/cache/TACacheEntity;, "Lcom/ta/util/cache/TACacheEntity<TT;>;"
    iput-object p1, p0, Lcom/ta/util/cache/TACacheEntity;->asyncEntity:Lcom/ta/util/cache/TAAsyncEntity;

    .line 44
    return-void
.end method

.method public setT(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/ta/util/cache/TACacheEntity;, "Lcom/ta/util/cache/TACacheEntity<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/ta/util/cache/TACacheEntity;->t:Ljava/lang/Object;

    .line 34
    return-void
.end method
