.class Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$3;
.super Ljava/lang/Object;
.source "SsidFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cat/data/SsidData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$3;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cat/data/SsidData;Lcom/cat/data/SsidData;)I
    .locals 4
    .param p1, "lhs"    # Lcom/cat/data/SsidData;
    .param p2, "rhs"    # Lcom/cat/data/SsidData;

    .prologue
    .line 426
    invoke-virtual {p1}, Lcom/cat/data/SsidData;->getLevel()I

    move-result v0

    .line 427
    .local v0, "level1":I
    invoke-virtual {p2}, Lcom/cat/data/SsidData;->getLevel()I

    move-result v1

    .line 429
    .local v1, "level2":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 430
    const/4 v2, 0x1

    .line 432
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cat/data/SsidData;

    check-cast p2, Lcom/cat/data/SsidData;

    invoke-virtual {p0, p1, p2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$3;->compare(Lcom/cat/data/SsidData;Lcom/cat/data/SsidData;)I

    move-result v0

    return v0
.end method
