.class Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublicKeyParser"
.end annotation


# instance fields
.field private provider:Ljava/lang/String;

.field final synthetic this$0:Lorg/bouncycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;->this$0:Lorg/bouncycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;->provider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DSA"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "RSA"

    aput-object v4, v2, v3

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    :try_start_0
    aget-object v3, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;->provider:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMReader$PublicKeyParser;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2
.end method
