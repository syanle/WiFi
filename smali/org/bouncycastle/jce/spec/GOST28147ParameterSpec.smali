.class public Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iv:[B

.field private sBox:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;)V

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;-><init>([B)V

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getSbox()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;->sBox:[B

    return-object v0
.end method
