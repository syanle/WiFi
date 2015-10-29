.class Lorg/xbill/DNS/Mnemonic;
.super Ljava/lang/Object;
.source "Mnemonic.java"


# static fields
.field static final CASE_LOWER:I = 0x3

.field static final CASE_SENSITIVE:I = 0x1

.field static final CASE_UPPER:I = 0x2

.field private static cachedInts:[Ljava/lang/Integer;


# instance fields
.field private description:Ljava/lang/String;

.field private max:I

.field private numericok:Z

.field private prefix:Ljava/lang/String;

.field private strings:Ljava/util/HashMap;

.field private values:Ljava/util/HashMap;

.field private wordcase:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v1, 0x40

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/xbill/DNS/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/xbill/DNS/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 31
    return-void

    .line 20
    :cond_0
    sget-object v1, Lorg/xbill/DNS/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "wordcase"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/xbill/DNS/Mnemonic;->description:Ljava/lang/String;

    .line 51
    iput p2, p0, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    .line 54
    const v0, 0x7fffffff

    iput v0, p0, Lorg/xbill/DNS/Mnemonic;->max:I

    .line 55
    return-void
.end method

.method private parseNumeric(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "val":I
    if-ltz v0, :cond_0

    iget v1, p0, Lorg/xbill/DNS/Mnemonic;->max:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v0, v1, :cond_0

    .line 120
    .end local v0    # "val":I
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v1

    .line 120
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 104
    iget v0, p0, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 108
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 106
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    iget v0, p0, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static toInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 85
    if-ltz p0, :cond_0

    sget-object v0, Lorg/xbill/DNS/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 86
    sget-object v0, Lorg/xbill/DNS/Mnemonic;->cachedInts:[Ljava/lang/Integer;

    aget-object v0, v0, p0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 2
    .param p1, "val"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    .line 131
    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    .local v0, "value":Ljava/lang/Integer;
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 133
    iget-object v1, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public addAlias(ILjava/lang/String;)V
    .locals 2
    .param p1, "val"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    .line 146
    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 147
    .local v0, "value":Ljava/lang/Integer;
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 148
    iget-object v1, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public addAll(Lorg/xbill/DNS/Mnemonic;)V
    .locals 3
    .param p1, "source"    # Lorg/xbill/DNS/Mnemonic;

    .prologue
    .line 160
    iget v0, p0, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    iget v1, p1, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    if-eq v0, v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/xbill/DNS/Mnemonic;->description:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v2, ": wordcases do not match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 164
    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method public check(I)V
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 95
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Mnemonic;->max:I

    if-le p1, v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xbill/DNS/Mnemonic;->description:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    const-string v2, "is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    return-void
.end method

.method public getText(I)Ljava/lang/String;
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    .line 175
    iget-object v1, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 181
    :goto_0
    return-object v1

    .line 178
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 181
    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v2, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 193
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Mnemonic;->parseNumeric(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, "val":I
    if-gez v0, :cond_0

    .line 204
    .end local v0    # "val":I
    :cond_2
    iget-boolean v2, p0, Lorg/xbill/DNS/Mnemonic;->numericok:Z

    if-eqz v2, :cond_3

    .line 205
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Mnemonic;->parseNumeric(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 207
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setMaximum(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/xbill/DNS/Mnemonic;->max:I

    .line 61
    return-void
.end method

.method public setNumericAllowed(Z)V
    .locals 0
    .param p1, "numeric"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/xbill/DNS/Mnemonic;->numericok:Z

    .line 78
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    .line 70
    return-void
.end method
