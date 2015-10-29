.class public Lorg/jivesoftware/smack/util/DNSUtil;
.super Ljava/lang/Object;
.source "DNSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    }
.end annotation


# static fields
.field private static ccache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static scache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x927c0

    const/16 v1, 0x64

    .line 42
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    .line 44
    new-instance v0, Lorg/jivesoftware/smack/util/Cache;

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/Cache;-><init>(IJ)V

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 16
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "bestHost":Ljava/lang/String;
    const/4 v2, -0x1

    .line 49
    .local v2, "bestPort":I
    const v3, 0x7fffffff

    .line 50
    .local v3, "bestPriority":I
    const/4 v4, 0x0

    .line 53
    .local v4, "bestWeight":I
    :try_start_0
    new-instance v5, Lorg/xbill/DNS/Lookup;

    const/16 v10, 0x21

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 54
    .local v5, "lookup":Lorg/xbill/DNS/Lookup;
    invoke-virtual {v5}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v8

    .line 55
    .local v8, "recs":[Lorg/xbill/DNS/Record;
    if-nez v8, :cond_0

    const/4 v10, 0x0

    .line 86
    .end local v5    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v8    # "recs":[Lorg/xbill/DNS/Record;
    :goto_0
    return-object v10

    .line 56
    .restart local v5    # "lookup":Lorg/xbill/DNS/Lookup;
    .restart local v8    # "recs":[Lorg/xbill/DNS/Record;
    :cond_0
    array-length v11, v8

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_1

    .line 79
    .end local v5    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v8    # "recs":[Lorg/xbill/DNS/Record;
    :goto_2
    if-nez v1, :cond_4

    .line 80
    const/4 v10, 0x0

    goto :goto_0

    .line 56
    .restart local v5    # "lookup":Lorg/xbill/DNS/Lookup;
    .restart local v8    # "recs":[Lorg/xbill/DNS/Record;
    :cond_1
    aget-object v6, v8, v10

    .line 57
    .local v6, "rec":Lorg/xbill/DNS/Record;
    move-object v0, v6

    check-cast v0, Lorg/xbill/DNS/SRVRecord;

    move-object v7, v0

    .line 58
    .local v7, "record":Lorg/xbill/DNS/SRVRecord;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 59
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v12

    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v13

    mul-int/2addr v12, v13

    int-to-double v12, v12

    .line 60
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    .line 59
    mul-double/2addr v12, v14

    double-to-int v9, v12

    .line 61
    .local v9, "weight":I
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v12

    if-ge v12, v3, :cond_3

    .line 62
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v3

    .line 63
    move v4, v9

    .line 64
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPort()I

    move-result v2

    .line 56
    .end local v9    # "weight":I
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 66
    .restart local v9    # "weight":I
    :cond_3
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v12

    if-ne v12, v3, :cond_2

    .line 67
    if-le v9, v4, :cond_2

    .line 68
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v3

    .line 69
    move v4, v9

    .line 70
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPort()I
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    .line 83
    .end local v5    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v6    # "rec":Lorg/xbill/DNS/Record;
    .end local v7    # "record":Lorg/xbill/DNS/SRVRecord;
    .end local v8    # "recs":[Lorg/xbill/DNS/Record;
    .end local v9    # "weight":I
    :cond_4
    const-string v10, "."

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 84
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_5
    new-instance v10, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v2, v11}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$HostAddress;)V

    goto :goto_0

    .line 77
    :catch_0
    move-exception v10

    goto :goto_2

    .line 76
    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method public static resolveXMPPDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 4
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v3, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    monitor-enter v3

    .line 118
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .line 120
    .local v0, "address":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    if-eqz v0, :cond_0

    .line 121
    monitor-exit v3

    .line 136
    .end local v0    # "address":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :goto_0
    return-object v0

    .line 117
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_xmpp-client._tcp."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v1

    .line 126
    .local v1, "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    if-nez v1, :cond_1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_jabber._tcp."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v1

    .line 129
    :cond_1
    if-nez v1, :cond_2

    .line 130
    new-instance v1, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .end local v1    # "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    const/16 v2, 0x1466

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$HostAddress;)V

    .line 133
    .restart local v1    # "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :cond_2
    sget-object v3, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    monitor-enter v3

    .line 134
    :try_start_1
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->ccache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 136
    goto :goto_0

    .line 117
    .end local v1    # "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 133
    .restart local v1    # "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static resolveXMPPServerDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    .locals 4
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v3, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    monitor-enter v3

    .line 162
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .line 164
    .local v0, "address":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    if-eqz v0, :cond_0

    .line 165
    monitor-exit v3

    .line 180
    .end local v0    # "address":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :goto_0
    return-object v0

    .line 161
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_xmpp-server._tcp."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v1

    .line 170
    .local v1, "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    if-nez v1, :cond_1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_jabber._tcp."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveSRV(Ljava/lang/String;)Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    move-result-object v1

    .line 173
    :cond_1
    if-nez v1, :cond_2

    .line 174
    new-instance v1, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .end local v1    # "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    const/16 v2, 0x1495

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$HostAddress;)V

    .line 177
    .restart local v1    # "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :cond_2
    sget-object v3, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    monitor-enter v3

    .line 178
    :try_start_1
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->scache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 180
    goto :goto_0

    .line 161
    .end local v1    # "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 177
    .restart local v1    # "result":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
