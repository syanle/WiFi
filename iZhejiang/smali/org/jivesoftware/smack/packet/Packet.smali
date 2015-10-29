.class public abstract Lorg/jivesoftware/smack/packet/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field protected static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field private static DEFAULT_XML_NS:Ljava/lang/String; = null

.field public static final ID_NOT_AVAILABLE:Ljava/lang/String; = "ID_NOT_AVAILABLE"

.field public static final XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private error:Lorg/jivesoftware/smack/packet/XMPPError;

.field private from:Ljava/lang/String;

.field private final packetExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private packetID:Ljava/lang/String;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private to:Ljava/lang/String;

.field private xmlns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 54
    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 74
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 73
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    .line 76
    sget-object v0, Lorg/jivesoftware/smack/packet/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->prefix:Ljava/lang/String;

    .line 89
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/jivesoftware/smack/packet/Packet;->id:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lorg/jivesoftware/smack/packet/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->xmlns:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    .line 114
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 52
    return-void
.end method

.method public static getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lorg/jivesoftware/smack/packet/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 100
    const-class v1, Lorg/jivesoftware/smack/packet/Packet;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/jivesoftware/smack/packet/Packet;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lorg/jivesoftware/smack/packet/Packet;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lorg/jivesoftware/smack/packet/Packet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefaultXmlns(Ljava/lang/String;)V
    .locals 0
    .param p0, "defaultXmlns"    # Ljava/lang/String;

    .prologue
    .line 104
    sput-object p0, Lorg/jivesoftware/smack/packet/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V
    .locals 1
    .param p1, "extension"    # Lorg/jivesoftware/smack/packet/PacketExtension;

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method public declared-synchronized deleteProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 448
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 464
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 451
    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;

    .line 453
    .local v0, "packet":Lorg/jivesoftware/smack/packet/Packet;
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    :cond_3
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    :cond_5
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    :cond_6
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->xmlns:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->xmlns:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    .line 453
    :cond_8
    iget-object v3, v0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 454
    :cond_9
    iget-object v3, v0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 456
    :cond_a
    iget-object v3, v0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 460
    :cond_b
    iget-object v3, v0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_5

    goto/16 :goto_0

    .line 463
    :cond_c
    iget-object v3, v0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto/16 :goto_0

    .line 464
    :cond_d
    iget-object v3, v0, Lorg/jivesoftware/smack/packet/Packet;->xmlns:Ljava/lang/String;

    if-eqz v3, :cond_7

    goto/16 :goto_0
.end method

.method public getError()Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 259
    if-nez p2, :cond_0

    move-object v0, v1

    .line 269
    :goto_0
    return-object v0

    .line 262
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 269
    goto :goto_0

    .line 262
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 263
    .local v0, "ext":Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz p1, :cond_3

    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    :cond_3
    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public declared-synchronized getExtensions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 230
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getExtensionsXML()Ljava/lang/String;
    .locals 13

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->getExtensions()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 367
    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 368
    const-string v10, "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->getPropertyNames()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 433
    const-string v10, "</properties>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    monitor-exit p0

    return-object v10

    .line 363
    :cond_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 364
    .local v5, "extension":Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-interface {v5}, Lorg/jivesoftware/smack/packet/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v5    # "extension":Lorg/jivesoftware/smack/packet/PacketExtension;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 370
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 371
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/jivesoftware/smack/packet/Packet;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 372
    .local v9, "value":Ljava/lang/Object;
    const-string v11, "<property>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v11, "<name>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</name>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v11, "<value type=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    instance-of v11, v9, Ljava/lang/Integer;

    if-eqz v11, :cond_4

    .line 376
    const-string v11, "integer\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .end local v9    # "value":Ljava/lang/Object;
    :cond_3
    :goto_2
    const-string v11, "</property>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 378
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v11, v9, Ljava/lang/Long;

    if-eqz v11, :cond_5

    .line 379
    const-string v11, "long\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 381
    :cond_5
    instance-of v11, v9, Ljava/lang/Float;

    if-eqz v11, :cond_6

    .line 382
    const-string v11, "float\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 384
    :cond_6
    instance-of v11, v9, Ljava/lang/Double;

    if-eqz v11, :cond_7

    .line 385
    const-string v11, "double\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 387
    :cond_7
    instance-of v11, v9, Ljava/lang/Boolean;

    if-eqz v11, :cond_8

    .line 388
    const-string v11, "boolean\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 390
    :cond_8
    instance-of v11, v9, Ljava/lang/String;

    if-eqz v11, :cond_9

    .line 391
    const-string v11, "string\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-static {v9}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v11, "</value>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 399
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_9
    const/4 v1, 0x0

    .line 400
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 402
    .local v7, "out":Ljava/io/ObjectOutputStream;
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 403
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 404
    .end local v7    # "out":Ljava/io/ObjectOutputStream;
    .local v8, "out":Ljava/io/ObjectOutputStream;
    :try_start_5
    invoke-virtual {v8, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 405
    const-string v11, "java-object\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "encodedVal":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</value>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 413
    if-eqz v8, :cond_a

    .line 415
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 421
    :cond_a
    :goto_3
    if-eqz v2, :cond_3

    .line 423
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 425
    :catch_0
    move-exception v11

    goto/16 :goto_2

    .line 409
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "encodedVal":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v3

    .line 410
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 413
    if-eqz v7, :cond_b

    .line 415
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 421
    :cond_b
    :goto_5
    if-eqz v1, :cond_3

    .line 423
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 425
    :catch_2
    move-exception v11

    goto/16 :goto_2

    .line 412
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    .line 413
    :goto_6
    if-eqz v7, :cond_c

    .line 415
    :try_start_b
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 421
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 423
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 429
    :cond_d
    :goto_8
    :try_start_d
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 417
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_5

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    goto :goto_7

    .line 425
    :catch_5
    move-exception v11

    goto :goto_8

    .line 417
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "encodedVal":Ljava/lang/String;
    .restart local v8    # "out":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v11

    goto :goto_3

    .line 412
    .end local v4    # "encodedVal":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    .restart local v7    # "out":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "out":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v10

    move-object v7, v8

    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    .restart local v7    # "out":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 409
    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "out":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v3

    move-object v7, v8

    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    .restart local v7    # "out":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    const-string v0, "ID_NOT_AVAILABLE"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 128
    invoke-static {}, Lorg/jivesoftware/smack/packet/Packet;->nextID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 341
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->xmlns:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->xmlns:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 470
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 471
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 472
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 473
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 474
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 475
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 476
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 469
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 470
    goto :goto_1

    :cond_3
    move v2, v1

    .line 471
    goto :goto_2

    :cond_4
    move v2, v1

    .line 472
    goto :goto_3
.end method

.method public removeExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V
    .locals 1
    .param p1, "extension"    # Lorg/jivesoftware/smack/packet/PacketExtension;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public setError(Lorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 0
    .param p1, "error"    # Lorg/jivesoftware/smack/packet/XMPPError;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 219
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 0
    .param p1, "packetID"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be serialiazble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 317
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    monitor-exit p0

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public abstract toXML()Ljava/lang/String;
.end method
