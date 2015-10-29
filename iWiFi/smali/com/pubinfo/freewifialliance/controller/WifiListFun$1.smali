.class Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;
.super Landroid/os/Handler;
.source "WifiListFun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/controller/WifiListFun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    .line 180
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    const-string v1, "\u8fde\u63a5\u8d85\u65f6"

    # invokes: Lcom/pubinfo/freewifialliance/controller/WifiListFun;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->access$0(Lcom/pubinfo/freewifialliance/controller/WifiListFun;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    # getter for: Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->access$1(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    # getter for: Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->access$1(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 190
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    # getter for: Lcom/pubinfo/freewifialliance/controller/WifiListFun;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->access$1(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 191
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->hideLoadingView()V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->setWifiListView()V

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->connToWifi()V

    goto :goto_0

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    const-string v1, "ping\u8fde\u63a5\u6210\u529f"

    # invokes: Lcom/pubinfo/freewifialliance/controller/WifiListFun;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->access$0(Lcom/pubinfo/freewifialliance/controller/WifiListFun;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_4
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    const-string v1, "ping\u8fde\u63a5\u5931\u8d25"

    # invokes: Lcom/pubinfo/freewifialliance/controller/WifiListFun;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->access$0(Lcom/pubinfo/freewifialliance/controller/WifiListFun;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_5
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->hideLoadingView()V

    .line 208
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    const-class v3, Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->finish()V

    goto :goto_0

    .line 212
    :pswitch_6
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    const-string v1, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    # invokes: Lcom/pubinfo/freewifialliance/controller/WifiListFun;->showMsgToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->access$0(Lcom/pubinfo/freewifialliance/controller/WifiListFun;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :pswitch_7
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->hideLoadingView()V

    goto :goto_0

    .line 219
    :pswitch_8
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->showLoadingView()V

    goto :goto_0

    .line 222
    :pswitch_9
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->getWiFi()V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
