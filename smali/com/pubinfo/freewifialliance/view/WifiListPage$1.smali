.class Lcom/pubinfo/freewifialliance/view/WifiListPage$1;
.super Ljava/util/TimerTask;
.source "WifiListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/view/WifiListPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/WifiListPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    .line 629
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WifiListPage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WifiListPage;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/WifiListPage;->getWiFi()V

    .line 633
    return-void
.end method
