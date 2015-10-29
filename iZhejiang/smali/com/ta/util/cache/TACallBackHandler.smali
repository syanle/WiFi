.class public Lcom/ta/util/cache/TACallBackHandler;
.super Ljava/lang/Object;
.source "TACallBackHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lcom/ta/util/cache/TACallBackHandler;, "Lcom/ta/util/cache/TACallBackHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/ta/util/cache/TACallBackHandler;, "Lcom/ta/util/cache/TACallBackHandler<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onStart(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/ta/util/cache/TACallBackHandler;, "Lcom/ta/util/cache/TACallBackHandler<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 0
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/ta/util/cache/TACallBackHandler;, "Lcom/ta/util/cache/TACallBackHandler<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method
