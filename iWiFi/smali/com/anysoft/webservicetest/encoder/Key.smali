.class public Lcom/anysoft/webservicetest/encoder/Key;
.super Ljava/lang/Object;
.source "Key.java"


# static fields
.field private static encryptKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "7EV/Zzutjzg="

    sput-object v0, Lcom/anysoft/webservicetest/encoder/Key;->encryptKey:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static loadKey()Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Lcom/anysoft/webservicetest/encoder/BASE64Decoder;

    invoke-direct {v1}, Lcom/anysoft/webservicetest/encoder/BASE64Decoder;-><init>()V

    .line 36
    .local v1, "d":Lcom/anysoft/webservicetest/encoder/BASE64Decoder;
    sget-object v4, Lcom/anysoft/webservicetest/encoder/Key;->encryptKey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/anysoft/webservicetest/encoder/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v0

    .line 37
    .local v0, "b":[B
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 38
    .local v2, "dks":Ljavax/crypto/spec/DESKeySpec;
    const-string v4, "DES"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 39
    .local v3, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    return-object v4
.end method
