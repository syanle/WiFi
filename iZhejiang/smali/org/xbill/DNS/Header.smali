.class public Lorg/xbill/DNS/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final LENGTH:I = 0xc

.field private static random:Ljava/util/Random;


# instance fields
.field private counts:[I

.field private flags:I

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Header;->random:Ljava/util/Random;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lorg/xbill/DNS/Header;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0}, Lorg/xbill/DNS/Header;->init()V

    .line 40
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Header;->setID(I)V

    .line 41
    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 3
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Header;-><init>(I)V

    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Header;->flags:I

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/Header;->counts:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 58
    return-void

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Header;->counts:[I

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    aput v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Header;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 68
    return-void
.end method

.method private static checkFlag(I)V
    .locals 3
    .param p0, "bit"    # I

    .prologue
    .line 92
    invoke-static {p0}, Lorg/xbill/DNS/Header;->validFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid flag bit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/Header;->counts:[I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/Header;->flags:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Header;->id:I

    .line 31
    return-void
.end method

.method private static validFlag(I)Z
    .locals 1
    .param p0, "bit"    # I

    .prologue
    .line 87
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    invoke-static {p0}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 279
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    .line 280
    .local v0, "h":Lorg/xbill/DNS/Header;
    iget v1, p0, Lorg/xbill/DNS/Header;->id:I

    iput v1, v0, Lorg/xbill/DNS/Header;->id:I

    .line 281
    iget v1, p0, Lorg/xbill/DNS/Header;->flags:I

    iput v1, v0, Lorg/xbill/DNS/Header;->flags:I

    .line 282
    iget-object v1, p0, Lorg/xbill/DNS/Header;->counts:[I

    iget-object v2, v0, Lorg/xbill/DNS/Header;->counts:[I

    iget-object v3, p0, Lorg/xbill/DNS/Header;->counts:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    return-object v0
.end method

.method decCount(I)V
    .locals 2
    .param p1, "field"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lorg/xbill/DNS/Header;->counts:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DNS section count cannot be decremented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Header;->counts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 229
    return-void
.end method

.method public getCount(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lorg/xbill/DNS/Header;->counts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFlag(I)Z
    .locals 3
    .param p1, "bit"    # I

    .prologue
    const/4 v0, 0x1

    .line 124
    invoke-static {p1}, Lorg/xbill/DNS/Header;->checkFlag(I)V

    .line 126
    iget v1, p0, Lorg/xbill/DNS/Header;->flags:I

    rsub-int/lit8 v2, p1, 0xf

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFlags()[Z
    .locals 3

    .prologue
    .line 131
    const/16 v2, 0x10

    new-array v0, v2, [Z

    .line 132
    .local v0, "array":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 135
    return-object v0

    .line 133
    :cond_0
    invoke-static {v1}, Lorg/xbill/DNS/Header;->validFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 132
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getID()I
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lorg/xbill/DNS/Header;->id:I

    if-ltz v0, :cond_0

    .line 144
    iget v0, p0, Lorg/xbill/DNS/Header;->id:I

    .line 148
    :goto_0
    return v0

    .line 145
    :cond_0
    monitor-enter p0

    .line 146
    :try_start_0
    iget v0, p0, Lorg/xbill/DNS/Header;->id:I

    if-gez v0, :cond_1

    .line 147
    sget-object v0, Lorg/xbill/DNS/Header;->random:Ljava/util/Random;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/Header;->id:I

    .line 148
    :cond_1
    iget v0, p0, Lorg/xbill/DNS/Header;->id:I

    monitor-exit p0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOpcode()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/xbill/DNS/Header;->flags:I

    shr-int/lit8 v0, v0, 0xb

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getRcode()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/xbill/DNS/Header;->flags:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method incCount(I)V
    .locals 2
    .param p1, "field"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lorg/xbill/DNS/Header;->counts:[I

    aget v0, v0, p1

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DNS section count cannot be incremented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Header;->counts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 221
    return-void
.end method

.method public printFlags()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 246
    :cond_0
    invoke-static {v0}, Lorg/xbill/DNS/Header;->validFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-static {v0}, Lorg/xbill/DNS/Flags;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setCount(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 209
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-le p2, v0, :cond_1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DNS section count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Header;->counts:[I

    aput p2, v0, p1

    .line 213
    return-void
.end method

.method public setFlag(I)V
    .locals 3
    .param p1, "bit"    # I

    .prologue
    .line 102
    invoke-static {p1}, Lorg/xbill/DNS/Header;->checkFlag(I)V

    .line 104
    iget v0, p0, Lorg/xbill/DNS/Header;->flags:I

    const/4 v1, 0x1

    rsub-int/lit8 v2, p1, 0xf

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/Header;->flags:I

    .line 105
    return-void
.end method

.method public setID(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 157
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DNS message ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iput p1, p0, Lorg/xbill/DNS/Header;->id:I

    .line 161
    return-void
.end method

.method public setOpcode(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 191
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DNS Opcode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string v2, "is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    iget v0, p0, Lorg/xbill/DNS/Header;->flags:I

    const v1, 0x87ff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/Header;->flags:I

    .line 195
    iget v0, p0, Lorg/xbill/DNS/Header;->flags:I

    shl-int/lit8 v1, p1, 0xb

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/Header;->flags:I

    .line 196
    return-void
.end method

.method public setRcode(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 169
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DNS Rcode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iget v0, p0, Lorg/xbill/DNS/Header;->flags:I

    and-int/lit8 v0, v0, -0x10

    iput v0, p0, Lorg/xbill/DNS/Header;->flags:I

    .line 173
    iget v0, p0, Lorg/xbill/DNS/Header;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/xbill/DNS/Header;->flags:I

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toStringWithRcode(I)Ljava/lang/String;
    .locals 4
    .param p1, "newrcode"    # I

    .prologue
    .line 255
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, ";; ->>HEADER<<- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "opcode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Opcode;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ";; flags: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xbill/DNS/Header;->printFlags()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 266
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/xbill/DNS/Section;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 73
    iget v1, p0, Lorg/xbill/DNS/Header;->flags:I

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/Header;->counts:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 76
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Header;->counts:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toWire()[B
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 81
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 82
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public unsetFlag(I)V
    .locals 3
    .param p1, "bit"    # I

    .prologue
    .line 113
    invoke-static {p1}, Lorg/xbill/DNS/Header;->checkFlag(I)V

    .line 115
    iget v0, p0, Lorg/xbill/DNS/Header;->flags:I

    const/4 v1, 0x1

    rsub-int/lit8 v2, p1, 0xf

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/Header;->flags:I

    .line 116
    return-void
.end method
