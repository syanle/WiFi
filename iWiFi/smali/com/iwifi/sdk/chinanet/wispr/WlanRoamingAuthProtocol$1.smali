.class Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$1;
.super Landroid/os/Handler;
.source "WlanRoamingAuthProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$1;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    .line 274
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 279
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;

    .line 280
    .local v0, "result":Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$1;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    # getter for: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->callback:Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;
    invoke-static {v1}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$0(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;->onAuthenticationSuccuess(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$1;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    # getter for: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->callback:Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;
    invoke-static {v1}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$0(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;->onAuthenticationFailed(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;)V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$1;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    # getter for: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->callback:Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;
    invoke-static {v1}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$0(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;->onLogoffSuccess(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;)V

    goto :goto_0

    .line 292
    :pswitch_3
    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$1;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    # getter for: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->callback:Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;
    invoke-static {v1}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$0(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;->onLogoffFailed(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
