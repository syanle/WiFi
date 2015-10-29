.class Lcom/ta/common/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/common/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "storage"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    if-eqz p1, :cond_3

    .line 39
    iget-object v4, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_2

    :cond_0
    move v1, v2

    .line 56
    :cond_1
    return v1

    .line 39
    :cond_2
    aget-object v0, v4, v3

    .line 41
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_3
    iget-object v4, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 50
    .restart local v0    # "element":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    :try_start_0
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 77
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_3

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 96
    :cond_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 83
    goto :goto_1

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    move v1, v0

    .line 92
    goto :goto_1

    .line 88
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 102
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    if-eqz p1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 121
    :cond_0
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 108
    goto :goto_1

    .line 104
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    move v1, v0

    .line 117
    goto :goto_1

    .line 113
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 128
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 129
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    iget-object v0, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "contents"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ta/common/Arrays$ArrayList;, "Lcom/ta/common/Arrays$ArrayList<TE;>;"
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/ta/common/Arrays$ArrayList;->size()I

    move-result v1

    .line 149
    .local v1, "size":I
    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 152
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "contents":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .line 154
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "contents":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/ta/common/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 157
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 159
    :cond_1
    return-object p1
.end method
