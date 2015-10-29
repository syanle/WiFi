.class public Lorg/apache/harmony/javax/security/sasl/Sasl;
.super Ljava/lang/Object;
.source "Sasl.java"


# static fields
.field private static final CLIENTFACTORYSRV:Ljava/lang/String; = "SaslClientFactory"

.field public static final MAX_BUFFER:Ljava/lang/String; = "javax.security.sasl.maxbuffer"

.field public static final POLICY_FORWARD_SECRECY:Ljava/lang/String; = "javax.security.sasl.policy.forward"

.field public static final POLICY_NOACTIVE:Ljava/lang/String; = "javax.security.sasl.policy.noactive"

.field public static final POLICY_NOANONYMOUS:Ljava/lang/String; = "javax.security.sasl.policy.noanonymous"

.field public static final POLICY_NODICTIONARY:Ljava/lang/String; = "javax.security.sasl.policy.nodictionary"

.field public static final POLICY_NOPLAINTEXT:Ljava/lang/String; = "javax.security.sasl.policy.noplaintext"

.field public static final POLICY_PASS_CREDENTIALS:Ljava/lang/String; = "javax.security.sasl.policy.credentials"

.field public static final QOP:Ljava/lang/String; = "javax.security.sasl.qop"

.field public static final RAW_SEND_SIZE:Ljava/lang/String; = "javax.security.sasl.rawsendsize"

.field public static final REUSE:Ljava/lang/String; = "javax.security.sasl.reuse"

.field private static final SERVERFACTORYSRV:Ljava/lang/String; = "SaslServerFactory"

.field public static final SERVER_AUTH:Ljava/lang/String; = "javax.security.sasl.server.authentication"

.field public static final STRENGTH:Ljava/lang/String; = "javax.security.sasl.strength"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .locals 14
    .param p0, "mechanisms"    # [Ljava/lang/String;
    .param p1, "authanticationID"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "serverName"    # Ljava/lang/String;
    .param p5, "cbh"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;",
            ")",
            "Lorg/apache/harmony/javax/security/sasl/SaslClient;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 171
    .local p4, "prop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p0, :cond_0

    .line 172
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "auth.33"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    const-string v1, "SaslClientFactory"

    invoke-static {v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->findFactories(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v12

    .line 175
    .local v12, "res":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const/4 v13, 0x0

    .line 202
    :goto_0
    return-object v13

    .line 179
    :cond_1
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 180
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 202
    const/4 v13, 0x0

    goto :goto_0

    .line 181
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;

    .line 182
    .local v0, "fact":Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;->getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "mech":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 184
    .local v7, "is":Z
    if-eqz v10, :cond_4

    .line 185
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v1, v10

    if-lt v9, v1, :cond_5

    .line 194
    .end local v9    # "j":I
    :cond_4
    if-eqz v7, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 195
    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v13

    .line 197
    .local v13, "saslC":Lorg/apache/harmony/javax/security/sasl/SaslClient;
    if-eqz v13, :cond_2

    goto :goto_0

    .line 186
    .end local v13    # "saslC":Lorg/apache/harmony/javax/security/sasl/SaslClient;
    .restart local v9    # "j":I
    :cond_5
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_2
    array-length v1, p0

    if-lt v11, v1, :cond_6

    .line 185
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 187
    :cond_6
    aget-object v1, v10, v9

    aget-object v2, p0, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 188
    const/4 v7, 0x1

    .line 189
    goto :goto_3

    .line 186
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method public static createSaslServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslServer;
    .locals 12
    .param p0, "mechanism"    # Ljava/lang/String;
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "serverName"    # Ljava/lang/String;
    .param p4, "cbh"    # Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;",
            ")",
            "Lorg/apache/harmony/javax/security/sasl/SaslServer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "prop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p0, :cond_0

    .line 137
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "auth.32"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    const-string v1, "SaslServerFactory"

    invoke-static {v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->findFactories(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v10

    .line 140
    .local v10, "res":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const/4 v11, 0x0

    .line 165
    :goto_0
    return-object v11

    .line 144
    :cond_1
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 145
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    const/4 v11, 0x0

    goto :goto_0

    .line 146
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;

    .line 147
    .local v0, "fact":Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;->getMechanismNames(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "mech":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 149
    .local v6, "is":Z
    if-eqz v9, :cond_4

    .line 150
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v1, v9

    if-lt v8, v1, :cond_5

    .line 157
    .end local v8    # "j":I
    :cond_4
    :goto_2
    if-eqz v6, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    .line 158
    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;->createSaslServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslServer;

    move-result-object v11

    .line 160
    .local v11, "saslS":Lorg/apache/harmony/javax/security/sasl/SaslServer;
    if-eqz v11, :cond_2

    goto :goto_0

    .line 151
    .end local v11    # "saslS":Lorg/apache/harmony/javax/security/sasl/SaslServer;
    .restart local v8    # "j":I
    :cond_5
    aget-object v1, v9, v8

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 152
    const/4 v6, 0x1

    .line 153
    goto :goto_2

    .line 150
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private static findFactories(Ljava/lang/String;)Ljava/util/Collection;
    .locals 10
    .param p0, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v1, "fact":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    .line 96
    .local v4, "pp":[Ljava/security/Provider;
    if-eqz v4, :cond_0

    array-length v9, v4

    if-nez v9, :cond_1

    .line 118
    :cond_0
    return-object v1

    .line 99
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v7, "props":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v4

    if-ge v2, v9, :cond_0

    .line 101
    aget-object v9, v4, v2

    invoke-virtual {v9}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "prName":Ljava/lang/String;
    aget-object v9, v4, v2

    invoke-virtual {v9}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 103
    .local v3, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_3

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 105
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 106
    aget-object v9, v4, v2

    invoke-virtual {v9, v8}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "prop":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 109
    aget-object v9, v4, v2

    invoke-static {v6, v9}, Lorg/apache/harmony/javax/security/sasl/Sasl;->newInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/harmony/javax/security/sasl/SaslException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/apache/harmony/javax/security/sasl/SaslException;
    invoke-virtual {v0}, Lorg/apache/harmony/javax/security/sasl/SaslException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSaslClientFactories()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const-string v1, "SaslClientFactory"

    invoke-static {v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->findFactories(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 124
    .local v0, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public static getSaslServerFactories()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const-string v1, "SaslServerFactory"

    invoke-static {v1}, Lorg/apache/harmony/javax/security/sasl/Sasl;->findFactories(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 131
    .local v0, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/harmony/javax/security/sasl/SaslServerFactory;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method private static newInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 7
    .param p0, "factoryName"    # Ljava/lang/String;
    .param p1, "prv"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v3, "auth.31"

    .line 73
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 74
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 78
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p0, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 79
    .local v2, "factory":Ljava/lang/Object;
    return-object v2

    .line 80
    .end local v2    # "factory":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 82
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 84
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v4, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
