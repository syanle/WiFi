.class public Lorg/apache/qpid/management/common/sasl/PlainSaslClient;
.super Ljava/lang/Object;
.source "PlainSaslClient.java"

# interfaces
.implements Lorg/apache/harmony/javax/security/sasl/SaslClient;


# static fields
.field private static SEPARATOR:B


# instance fields
.field private authenticationID:Ljava/lang/String;

.field private authorizationID:Ljava/lang/String;

.field private cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private completed:Z

.field private password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-byte v0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 3
    .param p1, "authorizationID"    # Ljava/lang/String;
    .param p2, "cbh"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    .line 40
    iput-object p2, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    .line 41
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->getUserInfo()[Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "userInfo":[Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    .line 43
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    .line 44
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    .line 45
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    if-nez v1, :cond_1

    .line 47
    :cond_0
    new-instance v1, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v2, "PLAIN: authenticationID and password must be specified"

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_1
    return-void
.end method

.method private clearPassword()V
    .locals 3

    .prologue
    .line 151
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    if-eqz v1, :cond_0

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    .line 159
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 155
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getUserInfo()[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    const-string v6, "PLAIN authentication id: "

    .line 176
    .local v6, "userPrompt":Ljava/lang/String;
    const-string v3, "PLAIN password: "

    .line 177
    .local v3, "pwPrompt":Ljava/lang/String;
    new-instance v1, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;

    const-string v8, "PLAIN authentication id: "

    invoke-direct {v1, v8}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "nameCb":Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    new-instance v2, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;

    const-string v8, "PLAIN password: "

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 179
    .local v2, "passwordCb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    iget-object v8, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->cbh:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    const/4 v9, 0x2

    new-array v9, v9, [Lorg/apache/harmony/javax/security/auth/callback/Callback;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-interface {v8, v9}, Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;->handle([Lorg/apache/harmony/javax/security/auth/callback/Callback;)V

    .line 180
    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/callback/NameCallback;->getName()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "userid":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v5

    .line 183
    .local v5, "pwchars":[C
    if-eqz v5, :cond_0

    .line 185
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([C)V

    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 186
    .local v4, "pwbytes":[B
    invoke-virtual {v2}, Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 192
    :goto_0
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v8

    .line 190
    .end local v4    # "pwbytes":[B
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "pwbytes":[B
    goto :goto_0

    .line 194
    .end local v1    # "nameCb":Lorg/apache/harmony/javax/security/auth/callback/NameCallback;
    .end local v2    # "passwordCb":Lorg/apache/harmony/javax/security/auth/callback/PasswordCallback;
    .end local v3    # "pwPrompt":Ljava/lang/String;
    .end local v4    # "pwbytes":[B
    .end local v5    # "pwchars":[C
    .end local v6    # "userPrompt":Ljava/lang/String;
    .end local v7    # "userid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v9, "Cannot get password"

    invoke-direct {v8, v9, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Lorg/apache/harmony/javax/security/auth/callback/UnsupportedCallbackException;
    new-instance v8, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v9, "Cannot get userid/password"

    invoke-direct {v8, v9, v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method


# virtual methods
.method public dispose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 164
    return-void
.end method

.method public evaluateChallenge([B)[B
    .locals 9
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 53
    iget-boolean v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v7, :cond_0

    .line 55
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "PLAIN: authentication already completed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 58
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    .line 62
    :try_start_0
    iget-object v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    if-nez v7, :cond_2

    const/4 v1, 0x0

    .line 63
    .local v1, "authzid":[B
    :goto_0
    iget-object v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authenticationID:Ljava/lang/String;

    const-string v8, "UTF8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 66
    .local v0, "authnid":[B
    iget-object v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v7, v7

    .line 67
    array-length v8, v0

    .line 66
    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    .line 69
    if-eqz v1, :cond_1

    array-length v6, v1

    .line 66
    :cond_1
    add-int/2addr v6, v7

    .line 65
    new-array v3, v6, [B

    .line 71
    .local v3, "response":[B
    const/4 v4, 0x0

    .line 72
    .local v4, "size":I
    if-eqz v1, :cond_3

    .line 73
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    array-length v4, v1

    move v5, v4

    .line 76
    .end local v4    # "size":I
    .local v5, "size":I
    :goto_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "size":I
    .restart local v4    # "size":I
    sget-byte v6, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    aput-byte v6, v3, v5

    .line 77
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v6, v0

    add-int/2addr v4, v6

    .line 79
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "size":I
    .restart local v5    # "size":I
    sget-byte v6, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->SEPARATOR:B

    aput-byte v6, v3, v4

    .line 80
    iget-object v6, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->password:[B

    array-length v8, v8

    invoke-static {v6, v7, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 82
    return-object v3

    .line 62
    .end local v0    # "authnid":[B
    .end local v1    # "authzid":[B
    .end local v3    # "response":[B
    .end local v5    # "size":I
    :cond_2
    iget-object v7, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->authorizationID:Ljava/lang/String;

    const-string v8, "UTF8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v7, "PLAIN: Cannot get UTF-8 encoding of ids"

    invoke-direct {v6, v7, v2}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "authnid":[B
    .restart local v1    # "authzid":[B
    .restart local v3    # "response":[B
    .restart local v4    # "size":I
    :cond_3
    move v5, v4

    .end local v4    # "size":I
    .restart local v5    # "size":I
    goto :goto_1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->clearPassword()V

    .line 169
    return-void
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "PLAIN"

    return-object v0
.end method

.method public getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propName"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "javax.security.sasl.qop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "auth"

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasInitialResponse()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    return v0
.end method

.method public unwrap([BII)[B
    .locals 2
    .param p1, "incoming"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: this mechanism supports neither integrity nor privacy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap([BII)[B
    .locals 2
    .param p1, "outgoing"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/apache/qpid/management/common/sasl/PlainSaslClient;->completed:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: this mechanism supports neither integrity nor privacy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PLAIN: authentication not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
