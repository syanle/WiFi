.class Lcom/ta/common/ArrayDeque$DescendingIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/common/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Lcom/ta/common/ArrayDeque;


# direct methods
.method private constructor <init>(Lcom/ta/common/ArrayDeque;)V
    .locals 1

    .prologue
    .line 742
    iput-object p1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->this$0:Lcom/ta/common/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    # getter for: Lcom/ta/common/ArrayDeque;->tail:I
    invoke-static {p1}, Lcom/ta/common/ArrayDeque;->access$2(Lcom/ta/common/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    .line 750
    # getter for: Lcom/ta/common/ArrayDeque;->head:I
    invoke-static {p1}, Lcom/ta/common/ArrayDeque;->access$1(Lcom/ta/common/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->fence:I

    .line 751
    const/4 v0, -0x1

    iput v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ta/common/ArrayDeque;Lcom/ta/common/ArrayDeque$DescendingIterator;)V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/ta/common/ArrayDeque$DescendingIterator;-><init>(Lcom/ta/common/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 755
    iget v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    iget v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 760
    iget v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    iget v2, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_0

    .line 761
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 762
    :cond_0
    iget v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->this$0:Lcom/ta/common/ArrayDeque;

    # getter for: Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v2}, Lcom/ta/common/ArrayDeque;->access$3(Lcom/ta/common/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    .line 763
    iget-object v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->this$0:Lcom/ta/common/ArrayDeque;

    # getter for: Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/ta/common/ArrayDeque;->access$3(Lcom/ta/common/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v0, v1, v2

    .line 764
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->this$0:Lcom/ta/common/ArrayDeque;

    # getter for: Lcom/ta/common/ArrayDeque;->head:I
    invoke-static {v1}, Lcom/ta/common/ArrayDeque;->access$1(Lcom/ta/common/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->fence:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 765
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 766
    :cond_2
    iget v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    iput v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->lastRet:I

    .line 767
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 772
    iget v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->lastRet:I

    if-gez v0, :cond_0

    .line 773
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->this$0:Lcom/ta/common/ArrayDeque;

    iget v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->lastRet:I

    # invokes: Lcom/ta/common/ArrayDeque;->delete(I)Z
    invoke-static {v0, v1}, Lcom/ta/common/ArrayDeque;->access$4(Lcom/ta/common/ArrayDeque;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    iget v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->this$0:Lcom/ta/common/ArrayDeque;

    # getter for: Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/ta/common/ArrayDeque;->access$3(Lcom/ta/common/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->cursor:I

    .line 777
    iget-object v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->this$0:Lcom/ta/common/ArrayDeque;

    # getter for: Lcom/ta/common/ArrayDeque;->head:I
    invoke-static {v0}, Lcom/ta/common/ArrayDeque;->access$1(Lcom/ta/common/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->fence:I

    .line 779
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/ta/common/ArrayDeque$DescendingIterator;->lastRet:I

    .line 780
    return-void
.end method
