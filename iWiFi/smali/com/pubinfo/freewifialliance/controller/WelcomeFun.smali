.class public Lcom/pubinfo/freewifialliance/controller/WelcomeFun;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "WelcomeFun.java"

# interfaces
.implements Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;


# instance fields
.field final c:Ljava/util/Calendar;

.field data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->c:Ljava/util/Calendar;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->data:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public updateSsidErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public updateSsidList()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;

    invoke-direct {v0, p0}, Lcom/iwifi/sdk/protocol/impl/UpdateSsidListConn_iWiFi_20;-><init>(Lcom/iwifi/sdk/protocol/UpdateSsidListInterface;)V

    .line 23
    return-void
.end method

.method public updateSsidListSucc(Lcom/iwifi/sdk/data/SsidList;)V
    .locals 5
    .param p1, "arg0"    # Lcom/iwifi/sdk/data/SsidList;

    .prologue
    .line 59
    .line 60
    const-string v3, "ssidlist"

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0, v3, v4}, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "version"

    const-string v4, ""

    .line 61
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iwifi/sdk/data/SsidList;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "data"

    invoke-virtual {p1}, Lcom/iwifi/sdk/data/SsidList;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string v3, "version"

    invoke-virtual {p1}, Lcom/iwifi/sdk/data/SsidList;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string v3, "time"

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/WelcomeFun;->data:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
