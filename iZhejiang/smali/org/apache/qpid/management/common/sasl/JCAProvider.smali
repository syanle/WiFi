.class public Lorg/apache/qpid/management/common/sasl/JCAProvider;
.super Ljava/security/Provider;
.source "JCAProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;>;>;"
    const-string v0, "AMQSASLProvider"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "A JCA provider that registers all AMQ SASL providers that want to be registered"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/qpid/management/common/sasl/JCAProvider;->register(Ljava/util/Map;)V

    .line 42
    return-void
.end method

.method private register(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    return-void

    .line 51
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    .local v0, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<+Lorg/apache/harmony/javax/security/sasl/SaslClientFactory;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "SaslClientFactory."

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lorg/apache/qpid/management/common/sasl/JCAProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
