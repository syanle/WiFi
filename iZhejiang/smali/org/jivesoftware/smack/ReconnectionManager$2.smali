.class Lorg/jivesoftware/smack/ReconnectionManager$2;
.super Ljava/lang/Thread;
.source "ReconnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/ReconnectionManager;->reconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private attempts:I

.field final synthetic this$0:Lorg/jivesoftware/smack/ReconnectionManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ReconnectionManager;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    return-void
.end method

.method private timeDelay()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 82
    const/16 v0, 0x12c

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 85
    const/16 v0, 0x3c

    goto :goto_0

    .line 87
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 97
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    # invokes: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v3}, Lorg/jivesoftware/smack/ReconnectionManager;->access$1(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager$2;->timeDelay()I

    move-result v2

    .line 103
    .local v2, "remainingSeconds":I
    :goto_1
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    # invokes: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v3}, Lorg/jivesoftware/smack/ReconnectionManager;->access$1(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-gtz v2, :cond_3

    .line 121
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    # invokes: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v3}, Lorg/jivesoftware/smack/ReconnectionManager;->access$1(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    # getter for: Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v3}, Lorg/jivesoftware/smack/ReconnectionManager;->access$2(Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyReconnectionFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 108
    add-int/lit8 v2, v2, -0x1

    .line 109
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 110
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyAttemptToReconnectIn(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 115
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyReconnectionFailed(Ljava/lang/Exception;)V

    goto :goto_1
.end method
