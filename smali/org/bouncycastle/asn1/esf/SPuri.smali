.class public Lorg/bouncycastle/asn1/esf/SPuri;
.super Ljava/lang/Object;


# instance fields
.field private uri:Lorg/bouncycastle/asn1/DERIA5String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DERIA5String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/DERIA5String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SPuri;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/esf/SPuri;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/esf/SPuri;

    check-cast p0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/SPuri;-><init>(Lorg/bouncycastle/asn1/DERIA5String;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in \'SPuri\' factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getUri()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERIA5String;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
