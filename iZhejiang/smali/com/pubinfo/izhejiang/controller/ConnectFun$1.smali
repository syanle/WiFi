.class Lcom/pubinfo/izhejiang/controller/ConnectFun$1;
.super Landroid/os/Handler;
.source "ConnectFun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/controller/ConnectFun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/controller/ConnectFun;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/controller/ConnectFun;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/ConnectFun;

    .line 211
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 239
    :goto_0
    :pswitch_0
    return-void

    .line 219
    :pswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/ConnectFun;

    .line 220
    const-string v4, "ConnectActivity"

    const/4 v5, 0x0

    .line 219
    invoke-virtual {v3, v4, v5}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v3, "ssidclick"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "ssidclick":Ljava/lang/String;
    const-string v3, "ssidconnect"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "ssidconnect":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/ConnectFun;

    iget-object v3, v3, Lcom/pubinfo/izhejiang/controller/ConnectFun;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/ConnectFun;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->connTimeOut()V

    goto :goto_0

    .line 234
    .end local v0    # "sharedata":Landroid/content/SharedPreferences;
    .end local v1    # "ssidclick":Ljava/lang/String;
    .end local v2    # "ssidconnect":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/controller/ConnectFun$1;->this$0:Lcom/pubinfo/izhejiang/controller/ConnectFun;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/controller/ConnectFun;->connToWifi()V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
