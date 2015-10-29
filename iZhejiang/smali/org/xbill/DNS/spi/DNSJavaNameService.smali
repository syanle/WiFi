.class public Lorg/xbill/DNS/spi/DNSJavaNameService;
.super Ljava/lang/Object;
.source "DNSJavaNameService.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final domainProperty:Ljava/lang/String; = "sun.net.spi.nameservice.domain"

.field private static final nsProperty:Ljava/lang/String; = "sun.net.spi.nameservice.nameservers"

.field private static final v6Property:Ljava/lang/String; = "java.net.preferIPv6Addresses"


# instance fields
.field private preferV6:Z


# direct methods
.method protected constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v9, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    .line 55
    const-string v9, "sun.net.spi.nameservice.nameservers"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "nameServers":Ljava/lang/String;
    const-string v9, "sun.net.spi.nameservice.domain"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "domain":Ljava/lang/String;
    const-string v9, "java.net.preferIPv6Addresses"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "v6":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 60
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v7, v4, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v7, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    .line 62
    .local v6, "servers":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, "n":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-nez v9, :cond_3

    .line 66
    :try_start_0
    new-instance v5, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v5, v6}, Lorg/xbill/DNS/ExtendedResolver;-><init>([Ljava/lang/String;)V

    .line 67
    .local v5, "res":Lorg/xbill/DNS/Resolver;
    invoke-static {v5}, Lorg/xbill/DNS/Lookup;->setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "n":I
    .end local v5    # "res":Lorg/xbill/DNS/Resolver;
    .end local v6    # "servers":[Ljava/lang/String;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 77
    const/4 v9, 0x1

    :try_start_1
    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v9}, Lorg/xbill/DNS/Lookup;->setDefaultSearchPath([Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 86
    iput-boolean v11, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    .line 87
    :cond_2
    return-void

    .line 64
    .restart local v2    # "n":I
    .restart local v6    # "servers":[Ljava/lang/String;
    .restart local v7    # "st":Ljava/util/StringTokenizer;
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "n":I
    .local v3, "n":I
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    move v2, v3

    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "DNSJavaNameService: invalid sun.net.spi.nameservice.nameservers"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "n":I
    .end local v6    # "servers":[Ljava/lang/String;
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v1

    .line 80
    .local v1, "e":Lorg/xbill/DNS/TextParseException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "DNSJavaNameService: invalid sun.net.spi.nameservice.domain"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getHostByAddr([B)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 171
    .local v0, "name":Lorg/xbill/DNS/Name;
    new-instance v2, Lorg/xbill/DNS/Lookup;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v2}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 172
    .local v1, "records":[Lorg/xbill/DNS/Record;
    if-nez v1, :cond_0

    .line 173
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2}, Ljava/net/UnknownHostException;-><init>()V

    throw v2

    .line 174
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/xbill/DNS/PTRRecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/PTRRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getHostByAddr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    const/4 v7, 0x0

    aget-object v7, p3, v7

    check-cast v7, [B

    invoke-virtual {p0, v7}, Lorg/xbill/DNS/spi/DNSJavaNameService;->getHostByAddr([B)Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 95
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "lookupAllHostAddr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 97
    const/4 v7, 0x0

    aget-object v7, p3, v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lorg/xbill/DNS/spi/DNSJavaNameService;->lookupAllHostAddr(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 98
    .local v1, "addresses":[Ljava/net/InetAddress;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 99
    .local v6, "returnType":Ljava/lang/Class;
    const-class v7, [Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    const-class v7, [[B

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 104
    array-length v5, v1

    .line 105
    .local v5, "naddrs":I
    new-array v2, v5, [[B

    .line 107
    .local v2, "byteAddresses":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v5, :cond_2

    move-object v1, v2

    .line 111
    goto :goto_0

    .line 108
    :cond_2
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 109
    .local v0, "addr":[B
    aput-object v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "addr":[B
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v2    # "byteAddresses":[[B
    .end local v4    # "i":I
    .end local v5    # "naddrs":I
    .end local v6    # "returnType":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Throwable;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "DNSJavaNameService: Unexpected error."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    throw v3

    .line 119
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 120
    const-string v8, "Unknown function name or arguments."

    .line 119
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public lookupAllHostAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 11
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1c

    .line 130
    const/4 v5, 0x0

    .line 133
    .local v5, "name":Lorg/xbill/DNS/Name;
    :try_start_0
    new-instance v5, Lorg/xbill/DNS/Name;

    .end local v5    # "name":Lorg/xbill/DNS/Name;
    invoke-direct {v5, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .restart local v5    # "name":Lorg/xbill/DNS/Name;
    const/4 v7, 0x0

    .line 140
    .local v7, "records":[Lorg/xbill/DNS/Record;
    iget-boolean v8, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    if-eqz v8, :cond_0

    .line 141
    new-instance v8, Lorg/xbill/DNS/Lookup;

    invoke-direct {v8, v5, v10}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v8}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 142
    :cond_0
    if-nez v7, :cond_1

    .line 143
    new-instance v8, Lorg/xbill/DNS/Lookup;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v9}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v8}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 144
    :cond_1
    if-nez v7, :cond_2

    iget-boolean v8, p0, Lorg/xbill/DNS/spi/DNSJavaNameService;->preferV6:Z

    if-nez v8, :cond_2

    .line 145
    new-instance v8, Lorg/xbill/DNS/Lookup;

    invoke-direct {v8, v5, v10}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v8}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v7

    .line 146
    :cond_2
    if-nez v7, :cond_3

    .line 147
    new-instance v8, Ljava/net/UnknownHostException;

    invoke-direct {v8, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    .end local v5    # "name":Lorg/xbill/DNS/Name;
    .end local v7    # "records":[Lorg/xbill/DNS/Record;
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v8, Ljava/net/UnknownHostException;

    invoke-direct {v8, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    .end local v3    # "e":Lorg/xbill/DNS/TextParseException;
    .restart local v5    # "name":Lorg/xbill/DNS/Name;
    .restart local v7    # "records":[Lorg/xbill/DNS/Record;
    :cond_3
    array-length v8, v7

    new-array v2, v8, [Ljava/net/InetAddress;

    .line 150
    .local v2, "array":[Ljava/net/InetAddress;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v7

    if-lt v4, v8, :cond_4

    .line 160
    return-object v2

    .line 151
    :cond_4
    aget-object v6, v7, v4

    .line 152
    .local v6, "record":Lorg/xbill/DNS/Record;
    aget-object v8, v7, v4

    instance-of v8, v8, Lorg/xbill/DNS/ARecord;

    if-eqz v8, :cond_5

    .line 153
    aget-object v0, v7, v4

    check-cast v0, Lorg/xbill/DNS/ARecord;

    .line 154
    .local v0, "a":Lorg/xbill/DNS/ARecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    aput-object v8, v2, v4

    .line 150
    .end local v0    # "a":Lorg/xbill/DNS/ARecord;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_5
    aget-object v1, v7, v4

    check-cast v1, Lorg/xbill/DNS/AAAARecord;

    .line 157
    .local v1, "aaaa":Lorg/xbill/DNS/AAAARecord;
    invoke-virtual {v1}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    aput-object v8, v2, v4

    goto :goto_1
.end method
