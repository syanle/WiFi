.class public Lorg/bouncycastle/asn1/tsp/TimeStampResp;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

.field timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TimeStampResp;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in \'TimeStampResp\' factory : "

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
.method public getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
