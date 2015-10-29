.class Lcom/pubinfo/wifi_core/AppBaseActivity$1;
.super Ljava/lang/Object;
.source "AppBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/wifi_core/AppBaseActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/wifi_core/AppBaseActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/wifi_core/AppBaseActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/wifi_core/AppBaseActivity$1;->this$0:Lcom/pubinfo/wifi_core/AppBaseActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pubinfo.trafficvideo.APPLICTION_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "exit":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pubinfo/wifi_core/AppBaseActivity$1;->this$0:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-virtual {v1, v0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    iget-object v1, p0, Lcom/pubinfo/wifi_core/AppBaseActivity$1;->this$0:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-virtual {v1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->finish()V

    .line 104
    return-void
.end method
