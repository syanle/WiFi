.class public abstract Lorg/jivesoftware/smack/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/Connection$InterceptorWrapper;,
        Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    }
.end annotation


# static fields
.field public static DEBUG_ENABLED:Z

.field private static final connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final connectionEstablishedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smack/ConnectionCreationListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountManager:Lorg/jivesoftware/smack/AccountManager;

.field protected final collectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation
.end field

.field protected final config:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field protected final connectionCounterValue:I

.field protected final connectionListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

.field protected final interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            "Lorg/jivesoftware/smack/Connection$InterceptorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected reader:Ljava/io/Reader;

.field protected final recvListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

.field protected saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

.field protected final sendListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smack/Connection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 90
    sput-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    .line 106
    sput-boolean v1, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    .line 112
    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    .line 119
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lorg/jivesoftware/smack/ConnectionConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    .line 157
    iput-object v1, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    .line 162
    iput-object v1, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 183
    new-instance v0, Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/SASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 189
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/Connection;->connectionCounterValue:I

    .line 202
    iput-object p1, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 203
    return-void
.end method

.method public static addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V
    .locals 1
    .param p0, "connectionCreationListener"    # Lorg/jivesoftware/smack/ConnectionCreationListener;

    .prologue
    .line 483
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method protected static getConnectionCreationListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionCreationListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static removeConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V
    .locals 1
    .param p0, "connectionCreationListener"    # Lorg/jivesoftware/smack/ConnectionCreationListener;

    .prologue
    .line 493
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method


# virtual methods
.method public addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 2
    .param p1, "connectionListener"    # Lorg/jivesoftware/smack/ConnectionListener;

    .prologue
    .line 513
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    if-nez p1, :cond_2

    .line 522
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/PacketInterceptor;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 671
    if-nez p1, :cond_0

    .line 672
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet interceptor is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    new-instance v1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;-><init>(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-void
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Packet listener is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 589
    .local v0, "wrapper":Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    return-void
.end method

.method public addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Packet listener is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 626
    .local v0, "wrapper":Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;
    .locals 2
    .param p1, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 552
    new-instance v0, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 554
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 555
    return-object v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->disconnect(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 455
    return-void
.end method

.method public abstract disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
.end method

.method protected firePacketInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 708
    if-eqz p1, :cond_0

    .line 709
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 713
    :cond_0
    return-void

    .line 709
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    .line 710
    .local v0, "interceptorWrapper":Lorg/jivesoftware/smack/Connection$InterceptorWrapper;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method protected firePacketSendingListeners(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 655
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    return-void

    .line 655
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    .line 656
    .local v0, "listenerWrapper":Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public getAccountManager()Lorg/jivesoftware/smack/AccountManager;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lorg/jivesoftware/smack/AccountManager;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/AccountManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    return-object v0
.end method

.method public getCapsNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCapsNode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    return-object v0
.end method

.method public abstract getConnectionID()Ljava/lang/String;
.end method

.method protected getConnectionListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPacketCollectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    return-object v0
.end method

.method protected getPacketInterceptors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            "Lorg/jivesoftware/smack/Connection$InterceptorWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    return-object v0
.end method

.method protected getPacketListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    return-object v0
.end method

.method protected getPacketSendingListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPort()I

    move-result v0

    return v0
.end method

.method public abstract getRoster()Lorg/jivesoftware/smack/Roster;
.end method

.method public getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method protected initDebugger()V
    .locals 9

    .prologue
    .line 723
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    if-nez v6, :cond_1

    .line 724
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Reader or writer isn\'t initialized."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 727
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isDebuggerEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 728
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-nez v6, :cond_5

    .line 730
    const/4 v0, 0x0

    .line 734
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    const-string v6, "smack.debuggerClass"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 739
    :goto_0
    const/4 v2, 0x0

    .line 740
    .local v2, "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 742
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 748
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 751
    :try_start_2
    const-string v6, "de.measite.smack.AndroidDebugger"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 766
    :cond_3
    :goto_2
    const/4 v6, 0x3

    :try_start_3
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 767
    const-class v8, Lorg/jivesoftware/smack/Connection;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/io/Writer;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/io/Reader;

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 768
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    aput-object v8, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 769
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v6}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getReader()Ljava/io/Reader;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    .line 770
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v6}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriter()Ljava/io/Writer;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 783
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_3
    return-void

    .line 744
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 745
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 753
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 756
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "org.jivesoftware.smack.debugger.ConsoleDebugger"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    .line 755
    goto :goto_2

    .line 758
    :catch_2
    move-exception v5

    .line 759
    .local v5, "ex2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 772
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "ex2":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 773
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t initialize the configured debugger!"

    invoke-direct {v6, v7, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 778
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "debuggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v7, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    invoke-interface {v6, v7}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    .line 779
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v7, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    invoke-interface {v6, v7}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    goto :goto_3

    .line 736
    .restart local v0    # "className":Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method public abstract isAnonymous()Z
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isConnected()Z
.end method

.method protected isReconnectionAllowed()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isReconnectionAllowed()Z

    move-result v0

    return v0
.end method

.method public abstract isSecureConnection()Z
.end method

.method public isSendPresence()Z
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSendPresence()Z

    move-result v0

    return v0
.end method

.method public abstract isUsingCompression()Z
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    const-string v0, "Smack"

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smack/Connection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract loginAnonymously()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1
    .param p1, "connectionListener"    # Lorg/jivesoftware/smack/ConnectionListener;

    .prologue
    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method protected removePacketCollector(Lorg/jivesoftware/smack/PacketCollector;)V
    .locals 1
    .param p1, "collector"    # Lorg/jivesoftware/smack/PacketCollector;

    .prologue
    .line 564
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method public removePacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V
    .locals 1
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/PacketInterceptor;

    .prologue
    .line 683
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    return-void
.end method

.method public removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;

    .prologue
    .line 598
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-void
.end method

.method public removePacketSendingListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;

    .prologue
    .line 635
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-void
.end method

.method public abstract sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
.end method

.method public abstract setRosterStorage(Lorg/jivesoftware/smack/RosterStorage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
