.class Lorg/androidpn/client/NotificationService$3;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androidpn/client/NotificationService;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androidpn/client/NotificationService;


# direct methods
.method constructor <init>(Lorg/androidpn/client/NotificationService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androidpn/client/NotificationService$3;->this$0:Lorg/androidpn/client/NotificationService;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/androidpn/client/NotificationService$3;->this$0:Lorg/androidpn/client/NotificationService;

    invoke-virtual {v0}, Lorg/androidpn/client/NotificationService;->getXmppManager()Lorg/androidpn/client/XmppManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidpn/client/XmppManager;->disconnect()V

    .line 234
    return-void
.end method
