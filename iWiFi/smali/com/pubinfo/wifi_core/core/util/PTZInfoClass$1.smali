.class Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;
.super Ljava/lang/Object;
.source "PTZInfoClass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->SendPTZ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->this$0:Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;

    iput-object p2, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->val$msg:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 69
    const-string v10, "_PTZ_"

    const-string v11, "send PTZ commond....."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v10, 0x4

    :try_start_0
    new-array v0, v10, [I

    .line 73
    .local v0, "b":[I
    const/4 v1, 0x0

    .line 74
    .local v1, "begin":I
    const/4 v8, 0x0

    .line 75
    .local v8, "tmp":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v12, :cond_0

    .line 81
    const/4 v10, 0x3

    iget-object v11, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->this$0:Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;

    # getter for: Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->m_VAUAdd:Ljava/lang/String;
    invoke-static {v11}, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->access$0(Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->this$0:Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;

    # getter for: Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->m_VAUAdd:Ljava/lang/String;
    invoke-static {v12}, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->access$0(Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;)Ljava/lang/String;

    move-result-object v12

    .line 82
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    .line 81
    invoke-virtual {v11, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v0, v10

    .line 83
    const/4 v10, 0x4

    new-array v2, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v0, v11

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v0, v11

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v0, v11

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    const/4 v10, 0x3

    const/4 v11, 0x3

    aget v11, v0, v11

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    .line 85
    .local v2, "bs":[B
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    .line 88
    .local v7, "target":Ljava/net/InetAddress;
    iget-object v10, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 90
    .local v5, "sendBuf":[B
    new-instance v6, Ljava/net/DatagramPacket;

    .line 91
    array-length v10, v5

    iget-object v11, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->this$0:Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;

    # getter for: Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->m_VAUPort:I
    invoke-static {v11}, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->access$1(Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;)I

    move-result v11

    .line 90
    invoke-direct {v6, v5, v10, v7, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 94
    .local v6, "sendPacket":Ljava/net/DatagramPacket;
    iget-object v10, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->this$0:Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;

    invoke-virtual {v10}, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->getPTZSocketSingletInstance()Ljava/net/DatagramSocket;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 99
    .end local v0    # "b":[I
    .end local v1    # "begin":I
    .end local v2    # "bs":[B
    .end local v4    # "i":I
    .end local v5    # "sendBuf":[B
    .end local v6    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v7    # "target":Ljava/net/InetAddress;
    .end local v8    # "tmp":I
    :goto_1
    return-void

    .line 76
    .restart local v0    # "b":[I
    .restart local v1    # "begin":I
    .restart local v4    # "i":I
    .restart local v8    # "tmp":I
    :cond_0
    iget-object v10, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->this$0:Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;

    # getter for: Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->m_VAUAdd:Ljava/lang/String;
    invoke-static {v10}, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->access$0(Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 77
    iget-object v10, p0, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass$1;->this$0:Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;

    # getter for: Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->m_VAUAdd:Ljava/lang/String;
    invoke-static {v10}, Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;->access$0(Lcom/pubinfo/wifi_core/core/util/PTZInfoClass;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "tt":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v1, v8, 0x1

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "b":[I
    .end local v1    # "begin":I
    .end local v4    # "i":I
    .end local v8    # "tmp":I
    .end local v9    # "tt":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "ptzcontrol"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
