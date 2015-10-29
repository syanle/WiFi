.class public Lcom/githang/android/apnbb/BroadcastUtil;
.super Ljava/lang/Object;
.source "BroadcastUtil.java"


# static fields
.field public static final ANDROIDPN_MSG_RECEIVER_READY:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_MSG_RECEIVER_READY"

.field public static final APN_ACTION_CONNECT:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_ACTION_CONNECT"

.field public static final APN_ACTION_DISCONNECT:Ljava/lang/String; = "org.androidpn.client.ANDORIDPN_ACTION_DISCONNECT"

.field public static final APN_ACTION_LOGIN:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_ACTION_LOGIN"

.field public static final APN_ACTION_RECEIPT:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_ACTION_RECEIPT"

.field public static final APN_ACTION_RECONNECT:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_ACTION_RECONNECT"

.field public static final APN_ACTION_REGISTER:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_ACTION_REGISTER"

.field public static final APN_ACTION_REQUEST_STATUS:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_ACTION_REQUEST_STATUS"

.field public static final APN_STATUS_CONNECTED:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_CONNECTED"

.field public static final APN_STATUS_CONNECTING:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_CONNECTING"

.field public static final APN_STATUS_CONNECT_FAILED:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_CONNECT_FAILED"

.field public static final APN_STATUS_DISCONNECT:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_DISCONNECT"

.field public static final APN_STATUS_LOGINED:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_LOGINED"

.field public static final APN_STATUS_LOGINING:Ljava/lang/String; = "org.androdipn.client.ANDROIDPN_STATUS_LOGINING"

.field public static final APN_STATUS_LOGIN_FAIL:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_FAIL"

.field public static final APN_STATUS_LOGIN_SUCCESS:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_LOGIN_SUCCESS"

.field public static final APN_STATUS_RECONNECTING:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_RECONNECTING"

.field public static final APN_STATUS_RECONNECT_SUCCESS:Ljava/lang/String; = "org.androidpn.client.ANDROIDPN_STATUS_RECONNECT_SUCCESS"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/githang/android/apnbb/BroadcastUtil;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/githang/android/apnbb/BroadcastUtil;->LOG_TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 67
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 68
    return-void
.end method

.method public static final sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 62
    .local v0, "lbm":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 63
    return-void
.end method
