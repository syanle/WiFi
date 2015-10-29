.class public Lcom/ta/common/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Lcom/ta/common/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/common/ArrayDeque$DeqIterator;,
        Lcom/ta/common/ArrayDeque$DescendingIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/ta/common/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient head:I

.field private transient tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/ta/common/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ta/common/ArrayDeque;->$assertionsDisabled:Z

    .line 945
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 201
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    .prologue
    .line 211
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 213
    invoke-direct {p0, p1}, Lcom/ta/common/ArrayDeque;->allocateElements(I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 229
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ta/common/ArrayDeque;->allocateElements(I)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/ta/common/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 231
    return-void
.end method

.method static synthetic access$1(Lcom/ta/common/ArrayDeque;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    return v0
.end method

.method static synthetic access$2(Lcom/ta/common/ArrayDeque;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/ta/common/ArrayDeque;->tail:I

    return v0
.end method

.method static synthetic access$3(Lcom/ta/common/ArrayDeque;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ta/common/ArrayDeque;I)Z
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/ta/common/ArrayDeque;->delete(I)Z

    move-result v0

    return v0
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    .prologue
    .line 134
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    .line 137
    .local v0, "initialCapacity":I
    if-lt p1, v0, :cond_0

    .line 139
    move v0, p1

    .line 140
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 141
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 142
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 143
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 144
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 147
    if-gez v0, :cond_0

    .line 148
    ushr-int/lit8 v0, v0, 0x1

    .line 150
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 151
    return-void
.end method

.method private checkInvariants()V
    .locals 3

    .prologue
    .line 587
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    sget-boolean v0, Lcom/ta/common/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 588
    :cond_0
    sget-boolean v0, Lcom/ta/common/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    iget v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 590
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    .line 590
    iget-object v2, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 591
    :cond_3
    sget-boolean v0, Lcom/ta/common/ArrayDeque;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 592
    :cond_4
    return-void
.end method

.method private copyElements([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/4 v4, 0x0

    .line 183
    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    iget v2, p0, Lcom/ta/common/ArrayDeque;->tail:I

    if-ge v1, v2, :cond_1

    .line 185
    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/ta/common/ArrayDeque;->head:I

    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->size()I

    move-result v3

    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :cond_0
    :goto_0
    return-object p1

    .line 186
    :cond_1
    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    iget v2, p0, Lcom/ta/common/ArrayDeque;->tail:I

    if-le v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/ta/common/ArrayDeque;->head:I

    sub-int v0, v1, v2

    .line 189
    .local v0, "headPortionLen":I
    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/ta/common/ArrayDeque;->head:I

    invoke-static {v1, v2, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/ta/common/ArrayDeque;->tail:I

    invoke-static {v1, v4, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private delete(I)Z
    .locals 10
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 607
    invoke-direct {p0}, Lcom/ta/common/ArrayDeque;->checkInvariants()V

    .line 608
    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 609
    .local v1, "elements":[Ljava/lang/Object;
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .line 610
    .local v4, "mask":I
    iget v3, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 611
    .local v3, "h":I
    iget v5, p0, Lcom/ta/common/ArrayDeque;->tail:I

    .line 612
    .local v5, "t":I
    sub-int v8, p1, v3

    and-int v2, v8, v4

    .line 613
    .local v2, "front":I
    sub-int v8, v5, p1

    and-int v0, v8, v4

    .line 616
    .local v0, "back":I
    sub-int v8, v5, v3

    and-int/2addr v8, v4

    if-lt v2, v8, :cond_0

    .line 617
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 620
    :cond_0
    if-ge v2, v0, :cond_2

    .line 622
    if-gt v3, p1, :cond_1

    .line 624
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    :goto_0
    const/4 v7, 0x0

    aput-object v7, v1, v3

    .line 632
    add-int/lit8 v7, v3, 0x1

    and-int/2addr v7, v4

    iput v7, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 647
    :goto_1
    return v6

    .line 627
    :cond_1
    invoke-static {v1, v6, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    aget-object v7, v1, v4

    aput-object v7, v1, v6

    .line 629
    add-int/lit8 v7, v3, 0x1

    sub-int v8, v4, v3

    invoke-static {v1, v3, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 636
    :cond_2
    if-ge p1, v5, :cond_3

    .line 638
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/ta/common/ArrayDeque;->tail:I

    :goto_2
    move v6, v7

    .line 647
    goto :goto_1

    .line 642
    :cond_3
    add-int/lit8 v8, p1, 0x1

    sub-int v9, v4, p1

    invoke-static {v1, v8, v1, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 643
    aget-object v8, v1, v6

    aput-object v8, v1, v4

    .line 644
    invoke-static {v1, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Lcom/ta/common/ArrayDeque;->tail:I

    goto :goto_2
.end method

.method private doubleCapacity()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/4 v7, 0x0

    .line 159
    sget-boolean v5, Lcom/ta/common/ArrayDeque;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/ta/common/ArrayDeque;->head:I

    iget v6, p0, Lcom/ta/common/ArrayDeque;->tail:I

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 160
    :cond_0
    iget v3, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 161
    .local v3, "p":I
    iget-object v5, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 162
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 163
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 164
    .local v2, "newCapacity":I
    if-gez v2, :cond_1

    .line 165
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 166
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 167
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v5, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v7, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 170
    iput v7, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 171
    iput v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    .line 172
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 973
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 976
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 977
    .local v1, "size":I
    invoke-direct {p0, v1}, Lcom/ta/common/ArrayDeque;->allocateElements(I)V

    .line 978
    const/4 v2, 0x0

    iput v2, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 979
    iput v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    .line 982
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 984
    return-void

    .line 983
    :cond_0
    iget-object v2, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 959
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 962
    iget-object v2, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 963
    .local v1, "mask":I
    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/ta/common/ArrayDeque;->tail:I

    if-ne v0, v2, :cond_0

    .line 965
    return-void

    .line 964
    :cond_0
    iget-object v2, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 963
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/ta/common/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 250
    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    iget v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/ta/common/ArrayDeque;->doubleCapacity()V

    .line 252
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 270
    iget v0, p0, Lcom/ta/common/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ta/common/ArrayDeque;->tail:I

    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    if-ne v0, v1, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/ta/common/ArrayDeque;->doubleCapacity()V

    .line 272
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 834
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 835
    .local v0, "h":I
    iget v3, p0, Lcom/ta/common/ArrayDeque;->tail:I

    .line 836
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    .line 838
    const/4 v4, 0x0

    iput v4, p0, Lcom/ta/common/ArrayDeque;->tail:I

    iput v4, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 839
    move v1, v0

    .line 840
    .local v1, "i":I
    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 843
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 844
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 845
    if-ne v1, v3, :cond_0

    .line 847
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1
    return-void
.end method

.method public clone()Lcom/ta/common/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ta/common/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 932
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/common/ArrayDeque;

    .line 933
    .local v1, "result":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    iget-object v2, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v3}, Lcom/ta/common/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    return-object v1

    .line 936
    .end local v1    # "result":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->clone()Lcom/ta/common/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 794
    if-nez p1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v3

    .line 796
    :cond_1
    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 797
    .local v1, "mask":I
    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 799
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 801
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    const/4 v3, 0x1

    goto :goto_0

    .line 803
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    new-instance v0, Lcom/ta/common/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ta/common/ArrayDeque$DescendingIterator;-><init>(Lcom/ta/common/ArrayDeque;Lcom/ta/common/ArrayDeque$DescendingIterator;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/ta/common/ArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 357
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 358
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 359
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/ta/common/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 369
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 370
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 371
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 670
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    iget v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    new-instance v0, Lcom/ta/common/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ta/common/ArrayDeque$DeqIterator;-><init>(Lcom/ta/common/ArrayDeque;Lcom/ta/common/ArrayDeque$DeqIterator;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/ta/common/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/ta/common/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/ta/common/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    iget-object v0, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 330
    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 331
    .local v0, "h":I
    iget-object v3, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v1, v3, v0

    .line 332
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    move-object v1, v2

    .line 336
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    .line 334
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 335
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/ta/common/ArrayDeque;->head:I

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/4 v2, 0x0

    .line 341
    iget v3, p0, Lcom/ta/common/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v1, v3, v4

    .line 342
    .local v1, "t":I
    iget-object v3, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 343
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    move-object v0, v2

    .line 347
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 345
    .restart local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v3, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 346
    iput v1, p0, Lcom/ta/common/ArrayDeque;->tail:I

    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/ta/common/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 566
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 825
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Lcom/ta/common/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 312
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 313
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 398
    if-nez p1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v3

    .line 400
    :cond_1
    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 401
    .local v1, "mask":I
    iget v0, p0, Lcom/ta/common/ArrayDeque;->head:I

    .line 403
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 407
    invoke-direct {p0, v0}, Lcom/ta/common/ArrayDeque;->delete(I)Z

    .line 408
    const/4 v3, 0x1

    goto :goto_0

    .line 410
    :cond_2
    add-int/lit8 v4, v0, 0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 324
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 325
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 429
    if-nez p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v3

    .line 431
    :cond_1
    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .line 432
    .local v1, "mask":I
    iget v4, p0, Lcom/ta/common/ArrayDeque;->tail:I

    add-int/lit8 v4, v4, -0x1

    and-int v0, v4, v1

    .line 434
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v4, v0

    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 438
    invoke-direct {p0, v0}, Lcom/ta/common/ArrayDeque;->delete(I)Z

    .line 439
    const/4 v3, 0x1

    goto :goto_0

    .line 441
    :cond_2
    add-int/lit8 v4, v0, -0x1

    and-int v0, v4, v1

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 660
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    iget v0, p0, Lcom/ta/common/ArrayDeque;->tail:I

    iget v1, p0, Lcom/ta/common/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ta/common/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 865
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/ta/common/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 911
    .local p0, "this":Lcom/ta/common/ArrayDeque;, "Lcom/ta/common/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Lcom/ta/common/ArrayDeque;->size()I

    move-result v0

    .line 912
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 913
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 914
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 913
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .line 915
    .restart local p1    # "a":[Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Lcom/ta/common/ArrayDeque;->copyElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 916
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 917
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 918
    :cond_1
    return-object p1
.end method
