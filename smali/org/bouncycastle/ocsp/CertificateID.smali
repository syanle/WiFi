.class public Lorg/bouncycastle/ocsp/CertificateID;
.super Ljava/lang/Object;


# static fields
.field public static final HASH_SHA1:Ljava/lang/String; = "1.3.14.3.2.26"


# instance fields
.field private final id:Lorg/bouncycastle/asn1/ocsp/CertID;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    const-string v0, "BC"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/ocsp/CertificateID;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p3}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, p2, v1, p4}, Lorg/bouncycastle/ocsp/CertificateID;->createCertID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/DERInteger;Ljava/lang/String;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'id\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-void
.end method

.method private static createCertID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/DERInteger;Ljava/lang/String;)Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/bouncycastle/ocsp/OCSPUtil;->createDigestInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jce/X509Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-direct {v0, p0, v1, v2, p2}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/DERInteger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem creating ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static deriveCertificateID(Lorg/bouncycastle/ocsp/CertificateID;Ljava/math/BigInteger;)Lorg/bouncycastle/ocsp/CertificateID;
    .locals 6

    new-instance v0, Lorg/bouncycastle/ocsp/CertificateID;

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/CertID;

    iget-object v2, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/ocsp/CertificateID;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/ocsp/CertificateID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/ocsp/CertificateID;

    iget-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/CertID;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getHashAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerNameHash()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchesIssuer(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/ocsp/OCSPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lorg/bouncycastle/ocsp/CertificateID;->createCertID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/DERInteger;Ljava/lang/String;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ocsp/CertID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/ocsp/CertID;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/ocsp/CertificateID;->id:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method
