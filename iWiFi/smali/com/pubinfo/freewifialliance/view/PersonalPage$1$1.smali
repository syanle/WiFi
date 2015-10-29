.class Lcom/pubinfo/freewifialliance/view/PersonalPage$1$1;
.super Ljava/lang/Object;
.source "PersonalPage.java"

# interfaces
.implements Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/PersonalPage$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/freewifialliance/view/PersonalPage$1;

.field private final synthetic val$wifiDialog1:Lcom/pubinfo/wifi_core/core/view/WifiDialog;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/PersonalPage$1;Lcom/pubinfo/wifi_core/core/view/WifiDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage$1$1;->this$1:Lcom/pubinfo/freewifialliance/view/PersonalPage$1;

    iput-object p2, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage$1$1;->val$wifiDialog1:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage$1$1;->val$wifiDialog1:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->dismiss()V

    .line 400
    return-void
.end method

.method public onWatchClick()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage$1$1;->val$wifiDialog1:Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    invoke-virtual {v0}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->dismiss()V

    .line 394
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/PersonalPage$1$1;->this$1:Lcom/pubinfo/freewifialliance/view/PersonalPage$1;

    # getter for: Lcom/pubinfo/freewifialliance/view/PersonalPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/PersonalPage;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/PersonalPage$1;->access$0(Lcom/pubinfo/freewifialliance/view/PersonalPage$1;)Lcom/pubinfo/freewifialliance/view/PersonalPage;

    move-result-object v0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/PersonalPage;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    return-void
.end method
