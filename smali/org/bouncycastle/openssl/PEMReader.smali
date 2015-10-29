.class public Lorg/bouncycastle/openssl/PEMReader;
.super Lorg/bouncycastle/util/io/pem/PemReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openssl/PEMReader$1;,
        Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;,
        Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$KeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;,
        Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;,
        Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;,
        Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;,
        Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;
    }
.end annotation


# instance fields
.field private pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

.field private final parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "BC"

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;)V
    .locals 1

    const-string v0, "BC"

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p3}, Lorg/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMReader;->pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "CERTIFICATE REQUEST"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "NEW CERTIFICATE REQUEST"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "CERTIFICATE"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "X509 CERTIFICATE"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "X509 CRL"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$X509CRLParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PKCS7"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$PKCS7Parser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "ATTRIBUTE CERTIFICATE"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "EC PARAMETERS"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Lorg/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PUBLIC KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "RSA PUBLIC KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "RSA PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$RSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "DSA PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$DSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "EC PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "ENCRYPTED PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;

    invoke-direct {v2, p0, p3, p4}, Lorg/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PRIVATE KEY"

    new-instance v2, Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/bouncycastle/openssl/PEMReader$PrivateKeyParser;-><init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$400(Lorg/bouncycastle/openssl/PEMReader;)Lorg/bouncycastle/openssl/PasswordFinder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMReader;->pFinder:Lorg/bouncycastle/openssl/PasswordFinder;

    return-object v0
.end method


# virtual methods
.method public readObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/openssl/PEMReader;->readPemObject()Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/util/io/pem/PemObjectParser;

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/io/pem/PemObjectParser;->parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognised object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
