.class public Lorg/bouncycastle/math/ec/ECPoint$F2m;
.super Lorg/bouncycastle/math/ec/ECPoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    :cond_3
    iput-boolean p4, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    return-void
.end method

.method private static checkPoints(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/ECPoint;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only points on the same curve can be added or subtracted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)V

    check-cast p1, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public addSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getY()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    new-instance p1, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {p1, v2, v0, v1, v3}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object v0, p1

    goto/16 :goto_0
.end method

.method declared-synchronized assertECMultiplier()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lorg/bouncycastle/math/ec/WNafMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/WNafMultiplier;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEncoded()[B
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v6, [B

    :goto_0
    return-object v0

    :cond_0
    # getter for: Lorg/bouncycastle/math/ec/ECPoint;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;
    invoke-static {}, Lorg/bouncycastle/math/ec/ECPoint;->access$000()Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/bouncycastle/math/ec/ECFieldElement;)I

    move-result v1

    # getter for: Lorg/bouncycastle/math/ec/ECPoint;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;
    invoke-static {}, Lorg/bouncycastle/math/ec/ECPoint;->access$000()Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v2

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [B

    const/4 v3, 0x2

    aput-byte v3, v0, v5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getY()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    aput-byte v3, v0, v5

    :cond_1
    invoke-static {v2, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    # getter for: Lorg/bouncycastle/math/ec/ECPoint;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;
    invoke-static {}, Lorg/bouncycastle/math/ec/ECPoint;->access$000()Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getY()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v3

    add-int v0, v1, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v4, 0x4

    aput-byte v4, v0, v5

    invoke-static {v2, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0x1

    invoke-static {v3, v5, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getY()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->getX()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)V

    check-cast p1, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public subtractSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/bouncycastle/math/ec/ECPoint$F2m;)Lorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    sget-object v3, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    new-instance v2, Lorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-boolean v4, p0, Lorg/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v2

    goto :goto_0
.end method
