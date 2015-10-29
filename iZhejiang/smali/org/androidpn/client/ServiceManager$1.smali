.class Lorg/androidpn/client/ServiceManager$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androidpn/client/ServiceManager;->startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androidpn/client/ServiceManager;


# direct methods
.method constructor <init>(Lorg/androidpn/client/ServiceManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androidpn/client/ServiceManager$1;->this$0:Lorg/androidpn/client/ServiceManager;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lorg/androidpn/client/ServiceManager$1;->this$0:Lorg/androidpn/client/ServiceManager;

    # getter for: Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lorg/androidpn/client/ServiceManager;->access$0(Lorg/androidpn/client/ServiceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/androidpn/client/NotificationService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/androidpn/client/ServiceManager$1;->this$0:Lorg/androidpn/client/ServiceManager;

    # getter for: Lorg/androidpn/client/ServiceManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lorg/androidpn/client/ServiceManager;->access$0(Lorg/androidpn/client/ServiceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    return-void
.end method
