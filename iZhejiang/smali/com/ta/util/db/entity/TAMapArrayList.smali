.class public Lcom/ta/util/db/entity/TAMapArrayList;
.super Ljava/util/ArrayList;
.source "TAMapArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/ta/util/db/entity/TAHashMap",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/ta/util/db/entity/TAHashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ta/util/db/entity/TAHashMap",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<TT;>;"
    .local p1, "taHashMap":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    if-eqz p1, :cond_0

    .line 29
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/ta/util/db/entity/TAHashMap;

    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAMapArrayList;->add(Lcom/ta/util/db/entity/TAHashMap;)Z

    move-result v0

    return v0
.end method
