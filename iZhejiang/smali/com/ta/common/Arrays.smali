.class public Lcom/ta/common/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/common/Arrays$ArrayList;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/ta/common/Arrays;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ta/common/Arrays;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/ta/common/Arrays$ArrayList;

    invoke-direct {v0, p0}, Lcom/ta/common/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .prologue
    .line 198
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/common/Arrays;->binarySearch([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .locals 5
    .param p0, "array"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # B

    .prologue
    .line 227
    array-length v4, p0

    invoke-static {p1, p2, v4}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 228
    move v1, p1

    .line 229
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 231
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 247
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 233
    :cond_1
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 234
    .local v2, "mid":I
    aget-byte v3, p0, v2

    .line 236
    .local v3, "midVal":B
    if-ge v3, p3, :cond_2

    .line 238
    add-int/lit8 v1, v2, 0x1

    .line 239
    goto :goto_0

    :cond_2
    if-le v3, p3, :cond_0

    .line 241
    add-int/lit8 v0, v2, -0x1

    .line 242
    goto :goto_0
.end method

.method public static binarySearch([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .prologue
    .line 265
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/common/Arrays;->binarySearch([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .locals 5
    .param p0, "array"    # [C
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # C

    .prologue
    .line 294
    array-length v4, p0

    invoke-static {p1, p2, v4}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 295
    move v1, p1

    .line 296
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 298
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 314
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 300
    :cond_1
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 301
    .local v2, "mid":I
    aget-char v3, p0, v2

    .line 303
    .local v3, "midVal":C
    if-ge v3, p3, :cond_2

    .line 305
    add-int/lit8 v1, v2, 0x1

    .line 306
    goto :goto_0

    :cond_2
    if-le v3, p3, :cond_0

    .line 308
    add-int/lit8 v0, v2, -0x1

    .line 309
    goto :goto_0
.end method

.method public static binarySearch([DD)I
    .locals 2
    .param p0, "array"    # [D
    .param p1, "value"    # D

    .prologue
    .line 332
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/ta/common/Arrays;->binarySearch([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .locals 11
    .param p0, "array"    # [D
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # D

    .prologue
    .line 361
    array-length v9, p0

    invoke-static {p1, p2, v9}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 362
    move v1, p1

    .line 363
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 365
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 396
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 367
    :cond_1
    add-int v9, v1, v0

    ushr-int/lit8 v2, v9, 0x1

    .line 368
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 370
    .local v3, "midVal":D
    cmpg-double v9, v3, p3

    if-gez v9, :cond_2

    .line 372
    add-int/lit8 v1, v2, 0x1

    .line 373
    goto :goto_0

    :cond_2
    cmpl-double v9, v3, p3

    if-lez v9, :cond_3

    .line 375
    add-int/lit8 v0, v2, -0x1

    .line 376
    goto :goto_0

    :cond_3
    const-wide/16 v9, 0x0

    cmpl-double v9, v3, v9

    if-eqz v9, :cond_4

    cmpl-double v9, v3, p3

    if-eqz v9, :cond_0

    .line 381
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 382
    .local v5, "midValBits":J
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 384
    .local v7, "valueBits":J
    cmp-long v9, v5, v7

    if-gez v9, :cond_5

    .line 386
    add-int/lit8 v1, v2, 0x1

    .line 387
    goto :goto_0

    :cond_5
    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 389
    add-int/lit8 v0, v2, -0x1

    .line 390
    goto :goto_0
.end method

.method public static binarySearch([FF)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "value"    # F

    .prologue
    .line 414
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/common/Arrays;->binarySearch([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .locals 7
    .param p0, "array"    # [F
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # F

    .prologue
    .line 443
    array-length v6, p0

    invoke-static {p1, p2, v6}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 444
    move v1, p1

    .line 445
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 447
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 478
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 449
    :cond_1
    add-int v6, v1, v0

    ushr-int/lit8 v2, v6, 0x1

    .line 450
    .local v2, "mid":I
    aget v3, p0, v2

    .line 452
    .local v3, "midVal":F
    cmpg-float v6, v3, p3

    if-gez v6, :cond_2

    .line 454
    add-int/lit8 v1, v2, 0x1

    .line 455
    goto :goto_0

    :cond_2
    cmpl-float v6, v3, p3

    if-lez v6, :cond_3

    .line 457
    add-int/lit8 v0, v2, -0x1

    .line 458
    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_4

    cmpl-float v6, v3, p3

    if-eqz v6, :cond_0

    .line 463
    :cond_4
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 464
    .local v4, "midValBits":I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 466
    .local v5, "valueBits":I
    if-ge v4, v5, :cond_5

    .line 468
    add-int/lit8 v1, v2, 0x1

    .line 469
    goto :goto_0

    :cond_5
    if-le v4, v5, :cond_0

    .line 471
    add-int/lit8 v0, v2, -0x1

    .line 472
    goto :goto_0
.end method

.method public static binarySearch([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 496
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/common/Arrays;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # I

    .prologue
    .line 525
    array-length v4, p0

    invoke-static {p1, p2, v4}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 526
    move v1, p1

    .line 527
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 529
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 545
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 531
    :cond_1
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 532
    .local v2, "mid":I
    aget v3, p0, v2

    .line 534
    .local v3, "midVal":I
    if-ge v3, p3, :cond_2

    .line 536
    add-int/lit8 v1, v2, 0x1

    .line 537
    goto :goto_0

    :cond_2
    if-le v3, p3, :cond_0

    .line 539
    add-int/lit8 v0, v2, -0x1

    .line 540
    goto :goto_0
.end method

.method public static binarySearch([JIIJ)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # J

    .prologue
    .line 592
    array-length v5, p0

    invoke-static {p1, p2, v5}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 593
    move v1, p1

    .line 594
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 596
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 612
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 598
    :cond_1
    add-int v5, v1, v0

    ushr-int/lit8 v2, v5, 0x1

    .line 599
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 601
    .local v3, "midVal":J
    cmp-long v5, v3, p3

    if-gez v5, :cond_2

    .line 603
    add-int/lit8 v1, v2, 0x1

    .line 604
    goto :goto_0

    :cond_2
    cmp-long v5, v3, p3

    if-lez v5, :cond_0

    .line 606
    add-int/lit8 v0, v2, -0x1

    .line 607
    goto :goto_0
.end method

.method public static binarySearch([JJ)I
    .locals 2
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    .line 563
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/ta/common/Arrays;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 668
    array-length v4, p0

    invoke-static {p1, p2, v4}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 669
    move v1, p1

    .line 670
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 672
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 689
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 674
    :cond_1
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 676
    .local v2, "mid":I
    aget-object v4, p0, v2

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 678
    .local v3, "midValCmp":I
    if-gez v3, :cond_2

    .line 680
    add-int/lit8 v1, v2, 0x1

    .line 681
    goto :goto_0

    :cond_2
    if-lez v3, :cond_0

    .line 683
    add-int/lit8 v0, v2, -0x1

    .line 684
    goto :goto_0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 750
    .local p3, "value":Ljava/lang/Object;, "TT;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_1

    .line 752
    invoke-static {p0, p1, p2, p3}, Lcom/ta/common/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v2

    .line 775
    :cond_0
    :goto_0
    return v2

    .line 755
    :cond_1
    array-length v4, p0

    invoke-static {p1, p2, v4}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 756
    move v1, p1

    .line 757
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 759
    .local v0, "hi":I
    :goto_1
    if-le v1, v0, :cond_2

    .line 775
    xor-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 761
    :cond_2
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 762
    .local v2, "mid":I
    aget-object v4, p0, v2

    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 764
    .local v3, "midValCmp":I
    if-gez v3, :cond_3

    .line 766
    add-int/lit8 v1, v2, 0x1

    .line 767
    goto :goto_1

    :cond_3
    if-lez v3, :cond_0

    .line 769
    add-int/lit8 v0, v2, -0x1

    .line 770
    goto :goto_1
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 634
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/common/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/ta/common/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .locals 5
    .param p0, "array"    # [S
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # S

    .prologue
    .line 822
    array-length v4, p0

    invoke-static {p1, p2, v4}, Lcom/ta/common/Arrays;->checkBinarySearchBounds(III)V

    .line 823
    move v1, p1

    .line 824
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 826
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 842
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 828
    :cond_1
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 829
    .local v2, "mid":I
    aget-short v3, p0, v2

    .line 831
    .local v3, "midVal":S
    if-ge v3, p3, :cond_2

    .line 833
    add-int/lit8 v1, v2, 0x1

    .line 834
    goto :goto_0

    :cond_2
    if-le v3, p3, :cond_0

    .line 836
    add-int/lit8 v0, v2, -0x1

    .line 837
    goto :goto_0
.end method

.method public static binarySearch([SS)I
    .locals 2
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .prologue
    .line 793
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/common/Arrays;->binarySearch([SIIS)I

    move-result v0

    return v0
.end method

.method private static checkBinarySearchBounds(III)V
    .locals 1
    .param p0, "startIndex"    # I
    .param p1, "endIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 848
    if-le p0, p1, :cond_0

    .line 850
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 852
    :cond_0
    if-ltz p0, :cond_1

    if-le p1, p2, :cond_2

    .line 854
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 856
    :cond_2
    return-void
.end method

.method public static copyOf([BI)[B
    .locals 1
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .prologue
    .line 2271
    if-gez p1, :cond_0

    .line 2273
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2275
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 1
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .prologue
    .line 2296
    if-gez p1, :cond_0

    .line 2298
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2300
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 1
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    .prologue
    .line 2321
    if-gez p1, :cond_0

    .line 2323
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2325
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([FI)[F
    .locals 1
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    .prologue
    .line 2346
    if-gez p1, :cond_0

    .line 2348
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2350
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 1
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .prologue
    .line 2371
    if-gez p1, :cond_0

    .line 2373
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2375
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 1
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .prologue
    .line 2396
    if-gez p1, :cond_0

    .line 2398
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2400
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 2446
    if-nez p0, :cond_0

    .line 2448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2450
    :cond_0
    if-gez p1, :cond_1

    .line 2452
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2454
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2482
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    if-gez p1, :cond_0

    .line 2484
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2486
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/ta/common/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([SI)[S
    .locals 1
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .prologue
    .line 2421
    if-gez p1, :cond_0

    .line 2423
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2425
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([SII)[S

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 1
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .prologue
    .line 2246
    if-gez p1, :cond_0

    .line 2248
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 2250
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/ta/common/Arrays;->copyOfRange([ZII)[Z

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2551
    if-le p1, p2, :cond_0

    .line 2553
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2555
    :cond_0
    array-length v1, p0

    .line 2556
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2558
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2560
    :cond_2
    sub-int v3, p2, p1

    .line 2561
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2562
    .local v0, "copyLength":I
    new-array v2, v3, [B

    .line 2563
    .local v2, "result":[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2564
    return-object v2
.end method

.method public static copyOfRange([CII)[C
    .locals 5
    .param p0, "original"    # [C
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2590
    if-le p1, p2, :cond_0

    .line 2592
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2594
    :cond_0
    array-length v1, p0

    .line 2595
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2597
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2599
    :cond_2
    sub-int v3, p2, p1

    .line 2600
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2601
    .local v0, "copyLength":I
    new-array v2, v3, [C

    .line 2602
    .local v2, "result":[C
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2603
    return-object v2
.end method

.method public static copyOfRange([DII)[D
    .locals 5
    .param p0, "original"    # [D
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2629
    if-le p1, p2, :cond_0

    .line 2631
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2633
    :cond_0
    array-length v1, p0

    .line 2634
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2636
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2638
    :cond_2
    sub-int v3, p2, p1

    .line 2639
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2640
    .local v0, "copyLength":I
    new-array v2, v3, [D

    .line 2641
    .local v2, "result":[D
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2642
    return-object v2
.end method

.method public static copyOfRange([FII)[F
    .locals 5
    .param p0, "original"    # [F
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2668
    if-le p1, p2, :cond_0

    .line 2670
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2672
    :cond_0
    array-length v1, p0

    .line 2673
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2675
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2677
    :cond_2
    sub-int v3, p2, p1

    .line 2678
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2679
    .local v0, "copyLength":I
    new-array v2, v3, [F

    .line 2680
    .local v2, "result":[F
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2681
    return-object v2
.end method

.method public static copyOfRange([III)[I
    .locals 5
    .param p0, "original"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2707
    if-le p1, p2, :cond_0

    .line 2709
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2711
    :cond_0
    array-length v1, p0

    .line 2712
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2714
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2716
    :cond_2
    sub-int v3, p2, p1

    .line 2717
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2718
    .local v0, "copyLength":I
    new-array v2, v3, [I

    .line 2719
    .local v2, "result":[I
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2720
    return-object v2
.end method

.method public static copyOfRange([JII)[J
    .locals 5
    .param p0, "original"    # [J
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2746
    if-le p1, p2, :cond_0

    .line 2748
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2750
    :cond_0
    array-length v1, p0

    .line 2751
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2753
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2755
    :cond_2
    sub-int v3, p2, p1

    .line 2756
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2757
    .local v0, "copyLength":I
    new-array v2, v3, [J

    .line 2758
    .local v2, "result":[J
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2759
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 2825
    array-length v1, p0

    .line 2827
    .local v1, "originalLength":I
    if-le p1, p2, :cond_0

    .line 2829
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2831
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2833
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2835
    :cond_2
    sub-int v3, p2, p1

    .line 2836
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2837
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2838
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 2837
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2839
    .local v2, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2840
    return-object v2
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 2870
    .local p3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    if-le p1, p2, :cond_0

    .line 2872
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2874
    :cond_0
    array-length v1, p0

    .line 2875
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2877
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2879
    :cond_2
    sub-int v3, p2, p1

    .line 2880
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2881
    .local v0, "copyLength":I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2883
    .local v2, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2884
    return-object v2
.end method

.method public static copyOfRange([SII)[S
    .locals 5
    .param p0, "original"    # [S
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2785
    if-le p1, p2, :cond_0

    .line 2787
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2789
    :cond_0
    array-length v1, p0

    .line 2790
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2792
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2794
    :cond_2
    sub-int v3, p2, p1

    .line 2795
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2796
    .local v0, "copyLength":I
    new-array v2, v3, [S

    .line 2797
    .local v2, "result":[S
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2798
    return-object v2
.end method

.method public static copyOfRange([ZII)[Z
    .locals 5
    .param p0, "original"    # [Z
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2512
    if-le p1, p2, :cond_0

    .line 2514
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2516
    :cond_0
    array-length v1, p0

    .line 2517
    .local v1, "originalLength":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 2519
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2521
    :cond_2
    sub-int v3, p2, p1

    .line 2522
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2523
    .local v0, "copyLength":I
    new-array v2, v3, [Z

    .line 2524
    .local v2, "result":[Z
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2525
    return-object v2
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1656
    if-ne p0, p1, :cond_1

    .line 1673
    :cond_0
    :goto_0
    return v3

    .line 1660
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 1662
    goto :goto_0

    .line 1664
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1666
    aget-object v0, p0, v2

    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1668
    .local v1, "e2":Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/ta/common/Arrays;->deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    .line 1670
    goto :goto_0

    .line 1664
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static deepEqualsElements(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1680
    if-ne p0, p1, :cond_1

    .line 1682
    const/4 v2, 0x1

    .line 1739
    .end local p0    # "e1":Ljava/lang/Object;
    .end local p1    # "e2":Ljava/lang/Object;
    .local v0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v2

    .line 1685
    .end local v0    # "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1690
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1691
    .restart local v0    # "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1693
    .restart local v1    # "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_0

    .line 1698
    if-nez v0, :cond_2

    .line 1700
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1706
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1708
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1711
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1713
    check-cast p0, [I

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [I

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_0

    .line 1715
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_4
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1717
    check-cast p0, [C

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [C

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->equals([C[C)Z

    move-result v2

    goto :goto_0

    .line 1719
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1721
    check-cast p0, [Z

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [Z

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->equals([Z[Z)Z

    move-result v2

    goto :goto_0

    .line 1723
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1725
    check-cast p0, [B

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [B

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_0

    .line 1727
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_7
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1729
    check-cast p0, [J

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [J

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->equals([J[J)Z

    move-result v2

    goto/16 :goto_0

    .line 1731
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_8
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1733
    check-cast p0, [F

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [F

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->equals([F[F)Z

    move-result v2

    goto/16 :goto_0

    .line 1735
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_9
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1737
    check-cast p0, [D

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [D

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_0

    .line 1739
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_a
    check-cast p0, [S

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [S

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/ta/common/Arrays;->equals([S[S)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1262
    if-nez p0, :cond_1

    move v2, v3

    .line 1272
    :cond_0
    return v2

    .line 1266
    :cond_1
    const/4 v2, 0x1

    .line 1267
    .local v2, "hashCode":I
    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 1269
    .local v0, "element":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->deepHashCodeElement(Ljava/lang/Object;)I

    move-result v1

    .line 1270
    .local v1, "elementHashCode":I
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static deepHashCodeElement(Ljava/lang/Object;)I
    .locals 2
    .param p0, "element"    # Ljava/lang/Object;

    .prologue
    .line 1278
    if-nez p0, :cond_0

    .line 1280
    const/4 v1, 0x0

    .line 1325
    .end local p0    # "element":Ljava/lang/Object;
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v1

    .line 1283
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1285
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 1287
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1293
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1295
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 1297
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1299
    check-cast p0, [I

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_0

    .line 1301
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1303
    check-cast p0, [C

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->hashCode([C)I

    move-result v1

    goto :goto_0

    .line 1305
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1307
    check-cast p0, [Z

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->hashCode([Z)I

    move-result v1

    goto :goto_0

    .line 1309
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1311
    check-cast p0, [B

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_0

    .line 1313
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1315
    check-cast p0, [J

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_0

    .line 1317
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1319
    check-cast p0, [F

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->hashCode([F)I

    move-result v1

    goto :goto_0

    .line 1321
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1323
    check-cast p0, [D

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->hashCode([D)I

    move-result v1

    goto/16 :goto_0

    .line 1325
    .restart local p0    # "element":Ljava/lang/Object;
    :cond_9
    check-cast p0, [S

    .end local p0    # "element":Ljava/lang/Object;
    invoke-static {p0}, Lcom/ta/common/Arrays;->hashCode([S)I

    move-result v1

    goto/16 :goto_0
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 2083
    if-nez p0, :cond_0

    .line 2085
    const-string v1, "null"

    .line 2091
    :goto_0
    return-object v1

    .line 2088
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2090
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2089
    invoke-static {p0, v1, v0}, Lcom/ta/common/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 2091
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "origArrays"    # [Ljava/lang/Object;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 2111
    if-nez p0, :cond_0

    .line 2113
    const-string v6, "null"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    :goto_0
    return-void

    .line 2117
    :cond_0
    const/16 v6, 0x5b

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2119
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p0

    if-lt v3, v6, :cond_1

    .line 2197
    const/16 v6, 0x5d

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2121
    :cond_1
    if-eqz v3, :cond_2

    .line 2123
    const-string v6, ", "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    :cond_2
    aget-object v0, p0, v3

    .line 2127
    .local v0, "elem":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 2130
    const-string v6, "null"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    .end local v0    # "elem":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2134
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2135
    .local v1, "elemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2140
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 2141
    .local v2, "elemElemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2144
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2146
    check-cast v0, [Z

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2147
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_4
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2149
    check-cast v0, [B

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2150
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_5
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2152
    check-cast v0, [C

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2153
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_6
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2155
    check-cast v0, [D

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2156
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_7
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2158
    check-cast v0, [F

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2159
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_8
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2161
    check-cast v0, [I

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2162
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_9
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2164
    check-cast v0, [J

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2165
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_a
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2167
    check-cast v0, [S

    .end local v0    # "elem":Ljava/lang/Object;
    invoke-static {v0}, Lcom/ta/common/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2171
    .restart local v0    # "elem":Ljava/lang/Object;
    :cond_b
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2176
    :cond_c
    sget-boolean v6, Lcom/ta/common/Arrays;->$assertionsDisabled:Z

    if-nez v6, :cond_d

    instance-of v6, v0, [Ljava/lang/Object;

    if-nez v6, :cond_d

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2177
    :cond_d
    invoke-static {p1, v0}, Lcom/ta/common/Arrays;->deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2179
    const-string v6, "[...]"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_e
    move-object v4, v0

    .line 2182
    check-cast v4, [Ljava/lang/Object;

    .line 2183
    .local v4, "newArray":[Ljava/lang/Object;
    array-length v6, p1

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    .line 2185
    .local v5, "newOrigArrays":[Ljava/lang/Object;
    array-length v6, p1

    .line 2184
    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2186
    array-length v6, p1

    aput-object v4, v5, v6

    .line 2188
    invoke-static {v4, v5, p2}, Lcom/ta/common/Arrays;->deepToStringImpl([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto/16 :goto_2

    .line 2193
    .end local v2    # "elemElemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "newArray":[Ljava/lang/Object;
    .end local v5    # "newOrigArrays":[Ljava/lang/Object;
    :cond_f
    aget-object v6, p0, v3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private static deepToStringImplContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "origArrays"    # [Ljava/lang/Object;
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2214
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 2225
    :cond_0
    :goto_0
    return v1

    .line 2218
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 2220
    .local v0, "element":Ljava/lang/Object;
    if-ne v0, p1, :cond_2

    .line 2222
    const/4 v1, 0x1

    goto :goto_0

    .line 2218
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static equals([B[B)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1341
    if-ne p0, p1, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return v1

    .line 1345
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1347
    goto :goto_0

    .line 1349
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1351
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1353
    goto :goto_0

    .line 1349
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([C[C)Z
    .locals 5
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1403
    if-ne p0, p1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return v1

    .line 1407
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1409
    goto :goto_0

    .line 1411
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1413
    aget-char v3, p0, v0

    aget-char v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1415
    goto :goto_0

    .line 1411
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([D[D)Z
    .locals 7
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1532
    if-ne p0, p1, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return v1

    .line 1536
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1538
    goto :goto_0

    .line 1540
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1542
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 1543
    aget-wide v5, p1, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 1542
    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 1545
    goto :goto_0

    .line 1540
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([F[F)Z
    .locals 5
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1498
    if-ne p0, p1, :cond_1

    .line 1514
    :cond_0
    :goto_0
    return v1

    .line 1502
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1504
    goto :goto_0

    .line 1506
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1508
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 1509
    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 1508
    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1511
    goto :goto_0

    .line 1506
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([I[I)Z
    .locals 5
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1434
    if-ne p0, p1, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return v1

    .line 1438
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1440
    goto :goto_0

    .line 1442
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1444
    aget v3, p0, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1446
    goto :goto_0

    .line 1442
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([J[J)Z
    .locals 7
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1465
    if-ne p0, p1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v1

    .line 1469
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1471
    goto :goto_0

    .line 1473
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1475
    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 1477
    goto :goto_0

    .line 1473
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1596
    if-ne p0, p1, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return v3

    .line 1600
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v5, p0

    array-length v6, p1

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 1602
    goto :goto_0

    .line 1604
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1606
    aget-object v0, p0, v2

    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v2

    .line 1607
    .local v1, "e2":Ljava/lang/Object;
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_4
    move v3, v4

    .line 1609
    goto :goto_0

    .line 1607
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1604
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static equals([S[S)Z
    .locals 5
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1372
    if-ne p0, p1, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return v1

    .line 1376
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1378
    goto :goto_0

    .line 1380
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1382
    aget-short v3, p0, v0

    aget-short v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1384
    goto :goto_0

    .line 1380
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([Z[Z)Z
    .locals 5
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1564
    if-ne p0, p1, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return v1

    .line 1568
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1570
    goto :goto_0

    .line 1572
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1574
    aget-boolean v3, p0, v0

    aget-boolean v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1576
    goto :goto_0

    .line 1572
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fill([BB)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .prologue
    .line 868
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 872
    return-void

    .line 870
    :cond_0
    aput-byte p1, p0, v0

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 888
    return-void

    .line 886
    :cond_0
    aput p1, p0, v0

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 916
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 920
    return-void

    .line 918
    :cond_0
    aput-object p1, p0, v0

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fill([ZZ)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "value"    # Z

    .prologue
    .line 900
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 904
    return-void

    .line 902
    :cond_0
    aput-boolean p1, p0, v0

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashCode([B)I
    .locals 5
    .param p0, "array"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1069
    if-nez p0, :cond_1

    move v1, v2

    .line 1079
    :cond_0
    return v1

    .line 1073
    :cond_1
    const/4 v1, 0x1

    .line 1074
    .local v1, "hashCode":I
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 1077
    .local v0, "element":B
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 1074
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hashCode([C)I
    .locals 5
    .param p0, "array"    # [C

    .prologue
    const/4 v2, 0x0

    .line 1037
    if-nez p0, :cond_1

    move v1, v2

    .line 1047
    :cond_0
    return v1

    .line 1041
    :cond_1
    const/4 v1, 0x1

    .line 1042
    .local v1, "hashCode":I
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v0, p0, v2

    .line 1045
    .local v0, "element":C
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 1042
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hashCode([D)I
    .locals 10
    .param p0, "array"    # [D

    .prologue
    const/4 v5, 0x0

    .line 1172
    if-nez p0, :cond_1

    move v2, v5

    .line 1187
    :cond_0
    return v2

    .line 1176
    :cond_1
    const/4 v2, 0x1

    .line 1178
    .local v2, "hashCode":I
    array-length v6, p0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-wide v0, p0, v5

    .line 1180
    .local v0, "element":D
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 1185
    .local v3, "v":J
    mul-int/lit8 v7, v2, 0x1f

    const/16 v8, 0x20

    ushr-long v8, v3, v8

    xor-long/2addr v8, v3

    long-to-int v8, v8

    add-int v2, v7, v8

    .line 1178
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 6
    .param p0, "array"    # [F

    .prologue
    const/4 v2, 0x0

    .line 1137
    if-nez p0, :cond_1

    move v1, v2

    .line 1150
    :cond_0
    return v1

    .line 1141
    :cond_1
    const/4 v1, 0x1

    .line 1142
    .local v1, "hashCode":I
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 1148
    .local v0, "element":F
    mul-int/lit8 v4, v1, 0x1f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v1, v4, v5

    .line 1142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 5
    .param p0, "array"    # [I

    .prologue
    const/4 v2, 0x0

    .line 973
    if-nez p0, :cond_1

    move v1, v2

    .line 983
    :cond_0
    return v1

    .line 977
    :cond_1
    const/4 v1, 0x1

    .line 978
    .local v1, "hashCode":I
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 981
    .local v0, "element":I
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 978
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 8
    .param p0, "array"    # [J

    .prologue
    const/4 v3, 0x0

    .line 1101
    if-nez p0, :cond_1

    move v2, v3

    .line 1115
    :cond_0
    return v2

    .line 1105
    :cond_1
    const/4 v2, 0x1

    .line 1106
    .local v2, "hashCode":I
    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 1112
    .local v0, "elementValue":J
    mul-int/lit8 v5, v2, 0x1f

    .line 1113
    const/16 v6, 0x20

    ushr-long v6, v0, v6

    xor-long/2addr v6, v0

    long-to-int v6, v6

    .line 1112
    add-int v2, v5, v6

    .line 1106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1212
    if-nez p0, :cond_1

    move v2, v3

    .line 1230
    :cond_0
    return v2

    .line 1216
    :cond_1
    const/4 v2, 0x1

    .line 1217
    .local v2, "hashCode":I
    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 1221
    .local v0, "element":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 1223
    const/4 v1, 0x0

    .line 1228
    .local v1, "elementHashCode":I
    :goto_1
    mul-int/lit8 v5, v2, 0x1f

    add-int v2, v5, v1

    .line 1217
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1226
    .end local v1    # "elementHashCode":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .restart local v1    # "elementHashCode":I
    goto :goto_1
.end method

.method public static hashCode([S)I
    .locals 5
    .param p0, "array"    # [S

    .prologue
    const/4 v2, 0x0

    .line 1005
    if-nez p0, :cond_1

    move v1, v2

    .line 1015
    :cond_0
    return v1

    .line 1009
    :cond_1
    const/4 v1, 0x1

    .line 1010
    .local v1, "hashCode":I
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-short v0, p0, v2

    .line 1013
    .local v0, "element":S
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 1010
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static hashCode([Z)I
    .locals 6
    .param p0, "array"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 941
    if-nez p0, :cond_1

    move v1, v2

    .line 951
    :cond_0
    return v1

    .line 945
    :cond_1
    const/4 v1, 0x1

    .line 946
    .local v1, "hashCode":I
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-boolean v0, p0, v3

    .line 949
    .local v0, "element":Z
    mul-int/lit8 v5, v1, 0x1f

    if-eqz v0, :cond_2

    const/16 v2, 0x4cf

    :goto_1
    add-int v1, v5, v2

    .line 946
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 949
    :cond_2
    const/16 v2, 0x4d5

    goto :goto_1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 1805
    if-nez p0, :cond_0

    .line 1807
    const-string v2, "null"

    .line 1822
    :goto_0
    return-object v2

    .line 1809
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1811
    const-string v2, "[]"

    goto :goto_0

    .line 1813
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1814
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1815
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1816
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 1821
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1822
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1818
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [C

    .prologue
    .line 1839
    if-nez p0, :cond_0

    .line 1841
    const-string v2, "null"

    .line 1856
    :goto_0
    return-object v2

    .line 1843
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1845
    const-string v2, "[]"

    goto :goto_0

    .line 1847
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1848
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1849
    const/4 v2, 0x0

    aget-char v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1850
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 1855
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1856
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1852
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1850
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString([D)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [D

    .prologue
    .line 1873
    if-nez p0, :cond_0

    .line 1875
    const-string v2, "null"

    .line 1890
    :goto_0
    return-object v2

    .line 1877
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1879
    const-string v2, "[]"

    goto :goto_0

    .line 1881
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1882
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1883
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1884
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 1889
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1886
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1887
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1884
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 1907
    if-nez p0, :cond_0

    .line 1909
    const-string v2, "null"

    .line 1924
    :goto_0
    return-object v2

    .line 1911
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1913
    const-string v2, "[]"

    goto :goto_0

    .line 1915
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1916
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1917
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1918
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 1923
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1924
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1920
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1918
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 1941
    if-nez p0, :cond_0

    .line 1943
    const-string v2, "null"

    .line 1958
    :goto_0
    return-object v2

    .line 1945
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1947
    const-string v2, "[]"

    goto :goto_0

    .line 1949
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1950
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1951
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1952
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 1957
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1958
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1954
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1952
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [J

    .prologue
    .line 1975
    if-nez p0, :cond_0

    .line 1977
    const-string v2, "null"

    .line 1992
    :goto_0
    return-object v2

    .line 1979
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1981
    const-string v2, "[]"

    goto :goto_0

    .line 1983
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1984
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1985
    const/4 v2, 0x0

    aget-wide v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1986
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 1991
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1992
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1988
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1986
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 2043
    if-nez p0, :cond_0

    .line 2045
    const-string v2, "null"

    .line 2060
    :goto_0
    return-object v2

    .line 2047
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2049
    const-string v2, "[]"

    goto :goto_0

    .line 2051
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2052
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2053
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2054
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 2059
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2060
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2056
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2054
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString([S)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [S

    .prologue
    .line 2009
    if-nez p0, :cond_0

    .line 2011
    const-string v2, "null"

    .line 2026
    :goto_0
    return-object v2

    .line 2013
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 2015
    const-string v2, "[]"

    goto :goto_0

    .line 2017
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2018
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2019
    const/4 v2, 0x0

    aget-short v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2020
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 2025
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2026
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2022
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    aget-short v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2020
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toString([Z)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Z

    .prologue
    .line 1771
    if-nez p0, :cond_0

    .line 1773
    const-string v2, "null"

    .line 1788
    :goto_0
    return-object v2

    .line 1775
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 1777
    const-string v2, "[]"

    goto :goto_0

    .line 1779
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1780
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1781
    const/4 v2, 0x0

    aget-boolean v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1782
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 1787
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1788
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1784
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    aget-boolean v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1782
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
