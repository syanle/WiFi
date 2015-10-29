.class public Lcom/pubinfo/freewifialliance/protocol/impl/DisconnToChinaNetConn;
.super Lcom/pubinfo/wifi_core/core/net/HttpUtil;
.source "DisconnToChinaNetConn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/net/HttpUtil;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/protocol/impl/DisconnToChinaNetConn;->portalLogout()V

    .line 9
    return-void
.end method


# virtual methods
.method public taskexecute(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "bTimeOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    return-void
.end method
