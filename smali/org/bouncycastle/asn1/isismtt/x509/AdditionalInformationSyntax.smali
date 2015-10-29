.class public Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;
.super Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private information:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->information:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInformation()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->information:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/AdditionalInformationSyntax;->information:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
