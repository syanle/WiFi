.class Lorg/androidpn/client/NotificationDetailsActivity$1;
.super Ljava/lang/Object;
.source "NotificationDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androidpn/client/NotificationDetailsActivity;->createView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androidpn/client/NotificationDetailsActivity;

.field private final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/androidpn/client/NotificationDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->this$0:Lorg/androidpn/client/NotificationDetailsActivity;

    iput-object p2, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->val$uri:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->val$uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 133
    iget-object v1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->val$uri:Ljava/lang/String;

    const-string v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->val$uri:Ljava/lang/String;

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->val$uri:Ljava/lang/String;

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->val$uri:Ljava/lang/String;

    .line 135
    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->val$uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->this$0:Lorg/androidpn/client/NotificationDetailsActivity;

    invoke-virtual {v1, v0}, Lorg/androidpn/client/NotificationDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    iget-object v1, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->this$0:Lorg/androidpn/client/NotificationDetailsActivity;

    invoke-virtual {v1}, Lorg/androidpn/client/NotificationDetailsActivity;->finish()V

    .line 148
    return-void

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    iget-object v2, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->this$0:Lorg/androidpn/client/NotificationDetailsActivity;

    # getter for: Lorg/androidpn/client/NotificationDetailsActivity;->callbackActivityPackageName:Ljava/lang/String;
    invoke-static {v2}, Lorg/androidpn/client/NotificationDetailsActivity;->access$0(Lorg/androidpn/client/NotificationDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lorg/androidpn/client/NotificationDetailsActivity$1;->this$0:Lorg/androidpn/client/NotificationDetailsActivity;

    # getter for: Lorg/androidpn/client/NotificationDetailsActivity;->callbackActivityClassName:Ljava/lang/String;
    invoke-static {v3}, Lorg/androidpn/client/NotificationDetailsActivity;->access$1(Lorg/androidpn/client/NotificationDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
