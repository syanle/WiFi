.class Lorg/xbill/DNS/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field protected endTime:J

.field protected key:Ljava/nio/channels/SelectionKey;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/SelectableChannel;J)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "done":Z
    const/4 v1, 0x0

    .line 19
    .local v1, "selector":Ljava/nio/channels/Selector;
    iput-wide p2, p0, Lorg/xbill/DNS/Client;->endTime:J

    .line 21
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    .line 22
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 23
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/Client;->key:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v0, 0x1

    .line 27
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 31
    :cond_1
    return-void

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    .line 29
    :cond_2
    if-nez v0, :cond_3

    .line 30
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 31
    :cond_3
    throw v2
.end method

.method protected static blockUntil(Ljava/nio/channels/SelectionKey;J)V
    .locals 7
    .param p0, "key"    # Ljava/nio/channels/SelectionKey;
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, p1, v3

    .line 37
    .local v1, "timeout":J
    const/4 v0, 0x0

    .line 38
    .local v0, "nkeys":I
    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    .line 39
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    .line 42
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 43
    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v3

    .line 40
    :cond_1
    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method protected static verboseLog(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 48
    const-string v0, "verbosemsg"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, p1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/xbill/DNS/Client;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 55
    iget-object v0, p0, Lorg/xbill/DNS/Client;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 56
    return-void
.end method
