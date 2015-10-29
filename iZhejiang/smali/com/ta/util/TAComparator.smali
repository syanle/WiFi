.class public Lcom/ta/util/TAComparator;
.super Ljava/lang/Object;
.source "TAComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final ASC_SORT_TYPE:I = 0x1

.field public static final DES_SORT_TYPE:I = 0x2


# instance fields
.field private sortFlag:I

.field private sortType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/ta/util/TAComparator;, "Lcom/ta/util/TAComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/ta/util/TAComparator;->sortType:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/ta/util/TAComparator;->sortFlag:I

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "sortType"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/ta/util/TAComparator;, "Lcom/ta/util/TAComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/ta/util/TAComparator;->sortType:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/ta/util/TAComparator;->sortFlag:I

    .line 58
    iput p1, p0, Lcom/ta/util/TAComparator;->sortType:I

    .line 59
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "sortType"    # I
    .param p2, "sortFlag"    # I

    .prologue
    .line 69
    .local p0, "this":Lcom/ta/util/TAComparator;, "Lcom/ta/util/TAComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/ta/util/TAComparator;->sortType:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/ta/util/TAComparator;->sortFlag:I

    .line 71
    iput p1, p0, Lcom/ta/util/TAComparator;->sortType:I

    .line 72
    iput p2, p0, Lcom/ta/util/TAComparator;->sortFlag:I

    .line 73
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/ta/util/TAComparator;, "Lcom/ta/util/TAComparator<TT;>;"
    .local p1, "object1":Ljava/lang/Object;, "TT;"
    .local p2, "object2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 80
    .local v0, "compareValue1":I
    const/4 v1, 0x0

    .line 83
    .local v1, "compareValue2":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ta/util/TAComparator;->getCompareValue(Ljava/lang/Object;)I

    move-result v0

    .line 84
    invoke-virtual {p0, p2}, Lcom/ta/util/TAComparator;->getCompareValue(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 92
    :goto_0
    iget v3, p0, Lcom/ta/util/TAComparator;->sortType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 94
    sub-int v3, v1, v0

    .line 97
    :goto_1
    return v3

    .line 85
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    const/4 v0, 0x0

    .line 90
    const/4 v1, 0x0

    goto :goto_0

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    sub-int v3, v0, v1

    goto :goto_1
.end method

.method public getCompareValue(Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/ta/util/TAComparator;, "Lcom/ta/util/TAComparator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 106
    .local v1, "compareValue":I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 107
    .local v5, "fields":[Ljava/lang/reflect/Field;
    if-eqz v5, :cond_0

    array-length v8, v5

    if-lez v8, :cond_0

    .line 109
    array-length v9, v5

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v9, :cond_1

    :cond_0
    move v2, v1

    .line 142
    .end local v1    # "compareValue":I
    .local v2, "compareValue":I
    :goto_1
    return v2

    .line 109
    .end local v2    # "compareValue":I
    .restart local v1    # "compareValue":I
    :cond_1
    aget-object v3, v5, v8

    .line 111
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v10, Lcom/ta/annotation/TACompareAnnotation;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 114
    const-class v10, Lcom/ta/annotation/TACompareAnnotation;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/ta/annotation/TACompareAnnotation;

    .line 115
    .local v7, "taCompareInject":Lcom/ta/annotation/TACompareAnnotation;
    invoke-interface {v7}, Lcom/ta/annotation/TACompareAnnotation;->sortFlag()I

    move-result v6

    .line 116
    .local v6, "flag":I
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 119
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 135
    :cond_2
    :goto_2
    iget v10, p0, Lcom/ta/util/TAComparator;->sortFlag:I

    if-ne v6, v10, :cond_6

    move v2, v1

    .line 137
    .end local v1    # "compareValue":I
    .restart local v2    # "compareValue":I
    goto :goto_1

    .line 120
    .end local v2    # "compareValue":I
    .restart local v1    # "compareValue":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 122
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 123
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 125
    const/4 v1, 0x1

    .line 126
    goto :goto_2

    .line 128
    :cond_4
    const/4 v1, 0x0

    .line 130
    goto :goto_2

    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 132
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    .local v4, "fieldValueString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 109
    .end local v4    # "fieldValueString":Ljava/lang/String;
    .end local v6    # "flag":I
    .end local v7    # "taCompareInject":Lcom/ta/annotation/TACompareAnnotation;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getSortType()I
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lcom/ta/util/TAComparator;, "Lcom/ta/util/TAComparator<TT;>;"
    iget v0, p0, Lcom/ta/util/TAComparator;->sortType:I

    return v0
.end method

.method public setSortType(I)V
    .locals 0
    .param p1, "sortType"    # I

    .prologue
    .line 152
    .local p0, "this":Lcom/ta/util/TAComparator;, "Lcom/ta/util/TAComparator<TT;>;"
    iput p1, p0, Lcom/ta/util/TAComparator;->sortType:I

    .line 153
    return-void
.end method
