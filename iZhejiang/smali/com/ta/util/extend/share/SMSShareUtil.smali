.class public Lcom/ta/util/extend/share/SMSShareUtil;
.super Ljava/lang/Object;
.source "SMSShareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendSms(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "smstext"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 43
    .local v1, "smsToUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v2, "sms_body"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    const/4 v2, 0x0

    return-object v2
.end method
