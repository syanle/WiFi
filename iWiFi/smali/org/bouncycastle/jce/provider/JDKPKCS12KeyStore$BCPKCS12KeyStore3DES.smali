.class public Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore3DES;
.super Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BCPKCS12KeyStore3DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    # getter for: Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;
    invoke-static {}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->access$200()Ljava/security/Provider;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore3DES;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore3DES;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;-><init>(Ljava/security/Provider;Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    return-void
.end method
