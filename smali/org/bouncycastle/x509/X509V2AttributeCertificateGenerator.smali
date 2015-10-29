.class public Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;
.super Ljava/lang/Object;


# instance fields
.field private acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

.field private extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v0, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/bouncycastle/x509/X509Attribute;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509Attribute;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->addAttribute(Lorg/bouncycastle/asn1/x509/Attribute;)V

    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;Z[B)V

    return-void
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->generateAttributeCertificateInfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    :try_start_0
    new-instance v7, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/x509/X509Util;->calculateSignature(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v2, "constructed invalid certificate"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v0

    return-object v0
.end method

.method public generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception creating certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509ExtensionsGenerator;->reset()V

    return-void
.end method

.method public setHolder(Lorg/bouncycastle/x509/AttributeCertificateHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p1, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setHolder(Lorg/bouncycastle/asn1/x509/Holder;)V

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/x509/AttributeCertificateIssuer;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p1, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-void
.end method

.method public setIssuerUniqueId([Z)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented (yet)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setEndDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V

    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setStartDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V

    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setSerialNumber(Lorg/bouncycastle/asn1/DERInteger;)V

    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v0, p1}, Lorg/bouncycastle/x509/X509Util;->getSigAlgID(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown signature type requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
