.class Lcom/pubinfo/freewifialliance/location/LocationManager$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/location/LocationManager;->getAddress(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/location/LocationManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager$1;->this$0:Lcom/pubinfo/freewifialliance/location/LocationManager;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager$1;->this$0:Lcom/pubinfo/freewifialliance/location/LocationManager;

    # getter for: Lcom/pubinfo/freewifialliance/location/LocationManager;->address:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/location/LocationManager;->access$0(Lcom/pubinfo/freewifialliance/location/LocationManager;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager$1;->this$0:Lcom/pubinfo/freewifialliance/location/LocationManager;

    # getter for: Lcom/pubinfo/freewifialliance/location/LocationManager;->address:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/location/LocationManager;->access$0(Lcom/pubinfo/freewifialliance/location/LocationManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager$1;->this$0:Lcom/pubinfo/freewifialliance/location/LocationManager;

    # getter for: Lcom/pubinfo/freewifialliance/location/LocationManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/location/LocationManager;->access$1(Lcom/pubinfo/freewifialliance/location/LocationManager;)Landroid/os/Handler;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/location/LocationManager$1;->this$0:Lcom/pubinfo/freewifialliance/location/LocationManager;

    # getter for: Lcom/pubinfo/freewifialliance/location/LocationManager;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/location/LocationManager;->access$1(Lcom/pubinfo/freewifialliance/location/LocationManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/location/LocationManager$1;->this$0:Lcom/pubinfo/freewifialliance/location/LocationManager;

    # getter for: Lcom/pubinfo/freewifialliance/location/LocationManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/location/LocationManager;->access$1(Lcom/pubinfo/freewifialliance/location/LocationManager;)Landroid/os/Handler;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/location/LocationManager$1;->this$0:Lcom/pubinfo/freewifialliance/location/LocationManager;

    # getter for: Lcom/pubinfo/freewifialliance/location/LocationManager;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/location/LocationManager;->access$1(Lcom/pubinfo/freewifialliance/location/LocationManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
