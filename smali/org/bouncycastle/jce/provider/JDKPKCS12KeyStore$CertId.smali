.class Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertId"
.end annotation


# instance fields
.field id:[B

.field final synthetic this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # invokes: Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    invoke-static {p1, p2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->access$100(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->this$0:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    iget-object v1, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;->id:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
