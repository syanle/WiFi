.class Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;
.super Ljava/lang/Object;
.source "PacketWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/PacketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveTask"
.end annotation


# instance fields
.field private delay:I

.field final synthetic this$0:Lorg/jivesoftware/smack/PacketWriter;

.field private thread:Ljava/lang/Thread;

.field private xmppManager:Lorg/androidpn/client/XmppManager;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketWriter;ILorg/androidpn/client/XmppManager;)V
    .locals 0
    .param p2, "delay"    # I
    .param p3, "xmppManager"    # Lorg/androidpn/client/XmppManager;

    .prologue
    .line 280
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p2, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I

    .line 282
    iput-object p3, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->xmppManager:Lorg/androidpn/client/XmppManager;

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 293
    const-wide/16 v1, 0x3a98

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 298
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    # getter for: Lorg/jivesoftware/smack/PacketWriter;->done:Z
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketWriter;->access$0(Lorg/jivesoftware/smack/PacketWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    # getter for: Lorg/jivesoftware/smack/PacketWriter;->keepAliveThread:Ljava/lang/Thread;
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketWriter;->access$1(Lorg/jivesoftware/smack/PacketWriter;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->thread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 323
    :cond_0
    return-void

    .line 300
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    # getter for: Lorg/jivesoftware/smack/PacketWriter;->lastActive:J
    invoke-static {v3}, Lorg/jivesoftware/smack/PacketWriter;->access$2(Lorg/jivesoftware/smack/PacketWriter;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget v3, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 302
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    # getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketWriter;->access$3(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 303
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    # getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketWriter;->access$3(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    # getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/Writer;
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketWriter;->access$3(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 302
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :cond_2
    :goto_1
    :try_start_3
    iget v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->delay:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 307
    :catch_1
    move-exception v0

    .line 308
    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "PacketReader"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    # getter for: Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lorg/jivesoftware/smack/PacketWriter;->access$4(Lorg/jivesoftware/smack/PacketWriter;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 310
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->xmppManager:Lorg/androidpn/client/XmppManager;

    invoke-virtual {v1}, Lorg/androidpn/client/XmppManager;->startReconnectionThread()V

    goto :goto_1

    .line 311
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v0

    .line 312
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 295
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method protected setThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 286
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter$KeepAliveTask;->thread:Ljava/lang/Thread;

    .line 287
    return-void
.end method
