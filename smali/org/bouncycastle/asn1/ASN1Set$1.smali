.class final Lorg/bouncycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/ASN1Set;->parser()Lorg/bouncycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field private index:I

.field private final max:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/ASN1Set;

.field final synthetic val$outer:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->this$0:Lorg/bouncycastle/asn1/ASN1Set;

    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->val$outer:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->this$0:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->max:I

    return-void
.end method


# virtual methods
.method public getDERObject()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->val$outer:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getLoadedObject()Lorg/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->val$outer:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/DEREncodable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->index:I

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->max:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->this$0:Lorg/bouncycastle/asn1/ASN1Set;

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->index:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->parser()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    goto :goto_0
.end method
