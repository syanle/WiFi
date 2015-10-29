.class Lcom/pubinfo/izhejiang/controller/WifiListFun$1;
.super Landroid/os/Handler;
.source "WifiListFun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/controller/WifiListFun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/controller/WifiListFun;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    .line 156
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    return-void

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    iput-boolean v1, v0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifi_isClicked:Z

    .line 163
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    # getter for: Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->access$0(Lcom/pubinfo/izhejiang/controller/WifiListFun;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    # getter for: Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->access$0(Lcom/pubinfo/izhejiang/controller/WifiListFun;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 165
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    # getter for: Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->access$0(Lcom/pubinfo/izhejiang/controller/WifiListFun;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->setWifiListView()V

    goto :goto_0

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->showWifiBtn()V

    goto :goto_0

    .line 189
    :pswitch_4
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    iput-boolean v1, v0, Lcom/pubinfo/izhejiang/controller/WifiListFun;->wifi_isClicked:Z

    goto :goto_0

    .line 200
    :pswitch_5
    iget-object v0, p0, Lcom/pubinfo/izhejiang/controller/WifiListFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/controller/WifiListFun;->getWiFi()V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
