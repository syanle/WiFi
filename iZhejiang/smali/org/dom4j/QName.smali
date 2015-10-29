.class public Lorg/dom4j/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static class$org$dom4j$tree$QNameCache:Ljava/lang/Class;

.field private static singleton:Lorg/dom4j/util/SingletonStrategy;


# instance fields
.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private hashCode:I

.field private name:Ljava/lang/String;

.field private transient namespace:Lorg/dom4j/Namespace;

.field private qualifiedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 29
    const/4 v4, 0x0

    sput-object v4, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 33
    :try_start_0
    const-string v1, "org.dom4j.util.SimpleSingleton"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    .local v1, "defaultSingletonClass":Ljava/lang/String;
    const/4 v0, 0x0

    .line 36
    .local v0, "clazz":Ljava/lang/Class;
    move-object v3, v1

    .line 37
    .local v3, "singletonClass":Ljava/lang/String;
    :try_start_1
    const-string v4, "org.dom4j.QName.singleton.strategy"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/dom4j/util/SingletonStrategy;

    sput-object v4, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    .line 48
    sget-object v5, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    sget-object v4, Lorg/dom4j/QName;->class$org$dom4j$tree$QNameCache:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "org.dom4j.tree.QNameCache"

    invoke-static {v4}, Lorg/dom4j/QName;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/dom4j/QName;->class$org$dom4j$tree$QNameCache:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/dom4j/util/SingletonStrategy;->setSingletonClassName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 51
    :goto_2
    return-void

    .line 40
    :catch_0
    move-exception v2

    .line 42
    .local v2, "exc1":Ljava/lang/Exception;
    move-object v3, v1

    .line 43
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    .line 48
    .end local v2    # "exc1":Ljava/lang/Exception;
    :cond_0
    :try_start_4
    sget-object v4, Lorg/dom4j/QName;->class$org$dom4j$tree$QNameCache:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 44
    .restart local v2    # "exc1":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 49
    .end local v2    # "exc1":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v0, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-direct {p0, p1, v0}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    .line 74
    if-nez p2, :cond_1

    sget-object p2, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .end local p2    # "namespace":Lorg/dom4j/Namespace;
    :cond_1
    iput-object p2, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/dom4j/Namespace;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    .line 81
    if-nez p2, :cond_1

    sget-object p2, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    .end local p2    # "namespace":Lorg/dom4j/Namespace;
    :cond_1
    iput-object p2, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 83
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .param p0, "qualifiedName"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 95
    invoke-static {p0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 96
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 97
    :cond_2
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-static {p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_3
    if-nez p2, :cond_4

    .line 99
    invoke-static {p0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_4
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/dom4j/Namespace;

    .prologue
    .line 90
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 1
    .param p0, "localName"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/dom4j/Namespace;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {}, Lorg/dom4j/QName;->getCache()Lorg/dom4j/tree/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/dom4j/tree/QNameCache;->get(Ljava/lang/String;Lorg/dom4j/Namespace;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    return-object v0
.end method

.method private static getCache()Lorg/dom4j/tree/QNameCache;
    .locals 2

    .prologue
    .line 253
    sget-object v1, Lorg/dom4j/QName;->singleton:Lorg/dom4j/util/SingletonStrategy;

    invoke-interface {v1}, Lorg/dom4j/util/SingletonStrategy;->instance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/tree/QNameCache;

    .line 254
    .local v0, "cache":Lorg/dom4j/tree/QNameCache;
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 249
    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    .line 250
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 240
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-ne p0, p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    instance-of v3, p1, Lorg/dom4j/QName;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 203
    check-cast v0, Lorg/dom4j/QName;

    .line 206
    .local v0, "that":Lorg/dom4j/QName;
    invoke-virtual {p0}, Lorg/dom4j/QName;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Lorg/dom4j/QName;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 207
    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "that":Lorg/dom4j/QName;
    :cond_3
    move v1, v2

    .line 212
    goto :goto_0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/dom4j/QName;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/dom4j/Namespace;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 162
    const-string v0, ""

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 175
    const-string v0, ""

    .line 178
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/QName;->namespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    .line 143
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    return-object v1

    .line 139
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/dom4j/QName;->name:Ljava/lang/String;

    iput-object v1, p0, Lorg/dom4j/QName;->qualifiedName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/dom4j/QName;->hashCode:I

    .line 191
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    if-nez v0, :cond_0

    .line 192
    const v0, 0xbabe

    iput v0, p0, Lorg/dom4j/QName;->hashCode:I

    .line 196
    :cond_0
    iget v0, p0, Lorg/dom4j/QName;->hashCode:I

    return v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/dom4j/QName;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " [name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " namespace: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/QName;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
