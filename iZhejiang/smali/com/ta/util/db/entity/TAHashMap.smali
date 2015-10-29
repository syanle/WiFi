.class public Lcom/ta/util/db/entity/TAHashMap;
.super Ljava/util/HashMap;
.source "TAHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBlob(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aget-char v0, v0, v1

    return v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/entity/TAHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    if-eqz p1, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/ta/util/db/entity/TAHashMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/ta/util/db/entity/TAHashMap;->hasValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
