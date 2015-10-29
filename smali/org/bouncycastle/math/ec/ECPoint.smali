.class public abstract Lorg/bouncycastle/math/ec/ECPoint;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/ECPoint$F2m;,
        Lorg/bouncycastle/math/ec/ECPoint$Fp;
    }
.end annotation


# static fields
.field private static converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field curve:Lorg/bouncycastle/math/ec/ECCurve;

.field protected multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

.field protected preCompInfo:Lorg/bouncycastle/math/ec/PreCompInfo;

.field protected withCompression:Z

.field x:Lorg/bouncycastle/math/ec/ECFieldElement;

.field y:Lorg/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/ECPoint;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->preCompInfo:Lorg/bouncycastle/math/ec/PreCompInfo;

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECPoint;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iput-object p3, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method static synthetic access$000()Lorg/bouncycastle/asn1/x9/X9IntegerConverter;
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/ECPoint;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    return-object v0
.end method


# virtual methods
.method public abstract add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
.end method

.method declared-synchronized assertECMultiplier()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/math/ec/FpNafMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/FpNafMultiplier;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/math/ec/ECPoint;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public abstract getEncoded()[B
.end method

.method public getX()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getY()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public isCompressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return v0
.end method

.method public isInfinity()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The multiplicator cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->assertECMultiplier()V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->preCompInfo:Lorg/bouncycastle/math/ec/PreCompInfo;

    invoke-interface {v0, p0, p1, v1}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public abstract negate()Lorg/bouncycastle/math/ec/ECPoint;
.end method

.method setPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECPoint;->preCompInfo:Lorg/bouncycastle/math/ec/PreCompInfo;

    return-void
.end method

.method public abstract subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
.end method

.method public abstract twice()Lorg/bouncycastle/math/ec/ECPoint;
.end method
