.class public Lcom/anysoft/webservicetest/encoder/DBEncrypt;
.super Ljava/lang/Object;
.source "DBEncrypt.java"


# instance fields
.field private properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deEncryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "originalPassword"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->dCode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deEncryptUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "originalUsername"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->dCode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dCode([B)Ljava/lang/String;
    .locals 8
    .param p1, "result"    # [B

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 78
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 79
    .local v1, "deCipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-static {}, Lcom/anysoft/webservicetest/encoder/Key;->loadKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 80
    new-instance v0, Lcom/anysoft/webservicetest/encoder/BASE64Decoder;

    invoke-direct {v0}, Lcom/anysoft/webservicetest/encoder/BASE64Decoder;-><init>()V

    .line 81
    .local v0, "d":Lcom/anysoft/webservicetest/encoder/BASE64Decoder;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v6}, Lcom/anysoft/webservicetest/encoder/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object p1

    .line 82
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 83
    .local v5, "strByte":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    move-object v3, v4

    .line 88
    .end local v0    # "d":Lcom/anysoft/webservicetest/encoder/BASE64Decoder;
    .end local v1    # "deCipher":Ljavax/crypto/Cipher;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "strByte":[B
    .restart local v3    # "s":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public eCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "needEncrypt"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v5, 0x0

    check-cast v5, [B

    .line 61
    .local v5, "result":[B
    :try_start_0
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 62
    .local v3, "enCipher":Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/anysoft/webservicetest/encoder/Key;->loadKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 63
    .local v4, "key":Ljavax/crypto/SecretKey;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 65
    new-instance v0, Lcom/anysoft/webservicetest/encoder/BASE64Encoder;

    invoke-direct {v0}, Lcom/anysoft/webservicetest/encoder/BASE64Encoder;-><init>()V

    .line 66
    .local v0, "b":Lcom/anysoft/webservicetest/encoder/BASE64Encoder;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v5, v1}, Lcom/anysoft/webservicetest/encoder/BASE64Encoder;->encode([BLjava/io/OutputStream;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 72
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    return-object v6

    .line 69
    .end local v0    # "b":Lcom/anysoft/webservicetest/encoder/BASE64Encoder;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "enCipher":Ljavax/crypto/Cipher;
    .end local v4    # "key":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "System doesn\'t support DES algorithm."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->getProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getObjectType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljava/util/Properties;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method public isSingleton()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public setProperties(Ljava/util/Properties;)V
    .locals 6
    .param p1, "inProperties"    # Ljava/util/Properties;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->properties:Ljava/util/Properties;

    .line 38
    iget-object v4, p0, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->properties:Ljava/util/Properties;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "originalUsername":Ljava/lang/String;
    iget-object v4, p0, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->properties:Ljava/util/Properties;

    const-string v5, "password"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "originalPassword":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 41
    invoke-direct {p0, v3}, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->deEncryptUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "newUsername":Ljava/lang/String;
    iget-object v4, p0, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->properties:Ljava/util/Properties;

    const-string v5, "user"

    invoke-virtual {v4, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v1    # "newUsername":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 45
    invoke-direct {p0, v2}, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->deEncryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "newPassword":Ljava/lang/String;
    iget-object v4, p0, Lcom/anysoft/webservicetest/encoder/DBEncrypt;->properties:Ljava/util/Properties;

    const-string v5, "password"

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0    # "newPassword":Ljava/lang/String;
    :cond_1
    return-void
.end method
