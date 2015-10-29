.class Lorg/androidpn/client/XmppManager$1;
.super Ljava/lang/Object;
.source "XmppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androidpn/client/XmppManager;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androidpn/client/XmppManager;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/androidpn/client/XmppManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androidpn/client/XmppManager$1;->this$0:Lorg/androidpn/client/XmppManager;

    iput-object p2, p0, Lorg/androidpn/client/XmppManager$1;->val$msg:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/androidpn/client/XmppManager$1;->this$0:Lorg/androidpn/client/XmppManager;

    # getter for: Lorg/androidpn/client/XmppManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lorg/androidpn/client/XmppManager;->access$0(Lorg/androidpn/client/XmppManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/androidpn/client/XmppManager$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    return-void
.end method
