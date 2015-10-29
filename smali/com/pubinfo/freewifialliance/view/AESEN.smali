.class public Lcom/pubinfo/freewifialliance/view/AESEN;
.super Ljava/lang/Object;
.source "AESEN.java"


# instance fields
.field private final CIPHERMODEPADDING:Ljava/lang/String;

.field private final HASH_ITERATIONS:I

.field private IV:Ljavax/crypto/spec/IvParameterSpec;

.field private final KEY_GENERATION_ALG:Ljava/lang/String;

.field private final KEY_LENGTH:I

.field private humanPassphrase:[C

.field private iv:[B

.field private keyfactory:Ljavax/crypto/SecretKeyFactory;

.field private myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

.field private salt:[B

.field private sk:Ljavax/crypto/SecretKey;

.field private skforAES:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v3, "PBKDF2WithHmacSHA1"

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->KEY_GENERATION_ALG:Ljava/lang/String;

    .line 96
    const/16 v3, 0x2710

    iput v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->HASH_ITERATIONS:I

    .line 97
    const/16 v3, 0x100

    iput v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->KEY_LENGTH:I

    .line 99
    const/16 v3, 0x17

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    .line 101
    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->humanPassphrase:[C

    .line 106
    const/16 v3, 0x10

    new-array v3, v3, [B

    aput-byte v4, v3, v4

    aput-byte v5, v3, v5

    aput-byte v6, v3, v6

    aput-byte v7, v3, v7

    const/4 v4, 0x5

    const/4 v5, 0x5

    aput-byte v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x7

    aput-byte v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x8

    aput-byte v5, v3, v4

    const/16 v4, 0x9

    const/16 v5, 0x9

    aput-byte v5, v3, v4

    const/16 v4, 0xa

    const/16 v5, 0xa

    aput-byte v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0xb

    aput-byte v5, v3, v4

    const/16 v4, 0xc

    const/16 v5, 0xc

    aput-byte v5, v3, v4

    const/16 v4, 0xd

    const/16 v5, 0xd

    aput-byte v5, v3, v4

    const/16 v4, 0xe

    .line 107
    const/16 v5, 0xe

    aput-byte v5, v3, v4

    const/16 v4, 0xf

    const/16 v5, 0xf

    aput-byte v5, v3, v4

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->salt:[B

    .line 109
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->humanPassphrase:[C

    iget-object v5, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->salt:[B

    .line 110
    const/16 v6, 0x2710

    const/16 v7, 0x100

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    .line 111
    const-string v3, "AES/CBC/PKCS7Padding"

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->CIPHERMODEPADDING:Ljava/lang/String;

    .line 113
    iput-object v8, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 114
    iput-object v8, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->sk:Ljavax/crypto/SecretKey;

    .line 115
    iput-object v8, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 116
    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    .line 117
    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->iv:[B

    .line 124
    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 125
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->sk:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->sk:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 141
    .local v2, "skAsByteArray":[B
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "skAsByteArray="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 142
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 148
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->iv:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->IV:Ljavax/crypto/spec/IvParameterSpec;

    .line 150
    return-void

    .line 127
    .end local v2    # "skAsByteArray":[B
    :catch_0
    move-exception v1

    .line 128
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "no key factory support for PBEWITHSHAANDTWOFISH-CBC"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "ikse":Ljava/security/spec/InvalidKeySpecException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "invalid key spec for PBEWITHSHAANDTWOFISH-CBC"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    nop

    :array_0
    .array-data 2
        0x50s
        0x65s
        0x72s
        0x20s
        0x76s
        0x61s
        0x6cs
        0x6cs
        0x75s
        0x6ds
        0x20s
        0x64s
        0x75s
        0x63s
        0x65s
        0x73s
        0x20s
        0x4cs
        0x61s
        0x62s
        0x61s
        0x6es
        0x74s
    .end array-data

    .line 116
    nop

    :array_1
    .array-data 1
        0xat
        0x1t
        0xbt
        0x5t
        0x4t
        0xft
        0x7t
        0x9t
        0x17t
        0x3t
        0x1t
        0x6t
        0x8t
        0xct
        0xdt
        0x5bt
    .end array-data
.end method

.method private addPadding([B)[B
    .locals 4
    .param p1, "plain"    # [B

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "plainpad":[B
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v2, v3, 0x10

    .line 180
    .local v2, "shortage":I
    if-nez v2, :cond_0

    .line 181
    const/16 v2, 0x10

    .line 184
    :cond_0
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v1, v3, [B

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 188
    array-length v0, p1

    :goto_1
    array-length v3, p1

    add-int/2addr v3, v2

    if-lt v0, v3, :cond_2

    .line 191
    return-object v1

    .line 186
    :cond_1
    aget-byte v3, p1, v0

    aput-byte v3, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_2
    int-to-byte v3, v2

    aput-byte v3, v1, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3
    .param p1, "cmp"    # Ljava/lang/String;
    .param p2, "sk"    # Ljavax/crypto/SecretKey;
    .param p3, "IV"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p4, "ciphertext"    # [B

    .prologue
    .line 245
    :try_start_0
    new-instance v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 246
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 247
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 248
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 264
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :goto_0
    return-object v2

    .line 253
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 264
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 260
    :catch_1
    move-exception v1

    .line 262
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v2

    goto :goto_1

    .line 256
    :catch_3
    move-exception v2

    goto :goto_1

    .line 251
    :catch_4
    move-exception v2

    goto :goto_1

    .line 249
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private dropPadding([B)[B
    .locals 4
    .param p1, "plainpad"    # [B

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "plain":[B
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v0, p1, v3

    .line 202
    .local v0, "drop":I
    array-length v3, p1

    sub-int/2addr v3, v0

    new-array v2, v3, [B

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 207
    return-object v2

    .line 204
    :cond_0
    aget-byte v3, p1, v1

    aput-byte v3, v2, v1

    .line 205
    const/4 v3, 0x0

    aput-byte v3, p1, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 7
    .param p1, "cmp"    # Ljava/lang/String;
    .param p2, "sk"    # Ljavax/crypto/SecretKey;
    .param p3, "IV"    # Ljavax/crypto/spec/IvParameterSpec;
    .param p4, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    new-instance v4, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 214
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cmp="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    const-string v4, "BC"

    invoke-static {p1, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 217
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 219
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v4

    .line 239
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :goto_0
    return-object v4

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "no cipher getinstance support for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    .end local v2    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 223
    :catch_1
    move-exception v3

    .line 224
    .local v3, "nspe":Ljavax/crypto/NoSuchPaddingException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "no cipher getinstance support for padding "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    .end local v3    # "nspe":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 227
    .local v1, "e":Ljava/security/InvalidKeyException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "invalid key exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 230
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "invalid algorithm parameter exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 232
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .line 233
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "illegal block size exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 235
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .line 236
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "bad padding exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "ciphertext_base64"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1}, Lcom/pubinfo/freewifialliance/view/Base64Decoder;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 164
    .local v1, "s":[B
    new-instance v0, Ljava/lang/String;

    const-string v2, "AES/CBC/PKCS7Padding"

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->IV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/pubinfo/freewifialliance/view/AESEN;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v0, "decrypted":Ljava/lang/String;
    return-object v0
.end method

.method public encrypt([B)Ljava/lang/String;
    .locals 5
    .param p1, "plaintext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v2, "AES/CBC/PKCS7Padding"

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/AESEN;->IV:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/pubinfo/freewifialliance/view/AESEN;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object v1

    .line 157
    .local v1, "ciphertext":[B
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ciphertext="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "base64_ciphertext":Ljava/lang/String;
    return-object v0
.end method
