.class public Lcom/pubinfo/wifi_core/AppBaseActivity;
.super Landroid/app/Activity;
.source "AppBaseActivity.java"


# static fields
.field public static final START_NAME:Ljava/lang/String; = "start_name"

.field public static final START_SP:Ljava/lang/String; = "start_sp"


# instance fields
.field final APPLICTION_EXIT_ACTION:Ljava/lang/String;

.field final Shared_Preferences_Name:Ljava/lang/String;

.field protected context:Lcom/pubinfo/wifi_core/AppBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, "com.pubinfo.trafficvideo.APPLICTION_EXIT"

    iput-object v0, p0, Lcom/pubinfo/wifi_core/AppBaseActivity;->APPLICTION_EXIT_ACTION:Ljava/lang/String;

    .line 47
    const-string v0, "com.pubinfo.wenzhou"

    iput-object v0, p0, Lcom/pubinfo/wifi_core/AppBaseActivity;->Shared_Preferences_Name:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/AppBaseActivity;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    .line 31
    return-void
.end method

.method public static isMobileNO(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 224
    const-string v2, "^((13[0-9])|(17[0-9])|(15[^4,\\D])|(18[0,1,5-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 225
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 227
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public checkWifiType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "c":Ljava/lang/String;
    const-string v1, "chinanet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 153
    const-string v1, "ChinaNet"

    .line 155
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "hichinaWifi"

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    const-string v1, "\u5c0a\u656c\u7684\u7528\u6237\uff1a\u611f\u8c22\u60a8\u4f7f\u7528\"\u7ffc\u884c\u6e29\u5dde\"\u4e1a\u52a1\uff0c\u60a8\u786e\u8ba4\u8981\u9000\u51fa\u5e94\u7528\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/pubinfo/wifi_core/AppBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/pubinfo/wifi_core/AppBaseActivity$1;-><init>(Lcom/pubinfo/wifi_core/AppBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 106
    return-void
.end method

.method public getScreenHeight()I
    .locals 2

    .prologue
    .line 82
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 83
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 84
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 70
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 71
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 72
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public isKillProcess(Ljava/util/Date;)Z
    .locals 7
    .param p1, "starDate"    # Ljava/util/Date;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 140
    .local v0, "endDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 142
    .local v1, "timeDif":J
    const-wide/16 v3, 0x5

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 143
    const/4 v3, 0x1

    .line 147
    .end local v0    # "endDate":Ljava/util/Date;
    .end local v1    # "timeDif":J
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isWifiAlliance(Ljava/lang/String;)Z
    .locals 4
    .param p1, "wifi"    # Ljava/lang/String;

    .prologue
    .line 160
    .line 161
    const-string v2, "ssidlist"

    const/4 v3, 0x0

    .line 160
    invoke-virtual {p0, v2, v3}, Lcom/pubinfo/wifi_core/AppBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "data"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "data":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-static {p0}, Lcom/pubinfo/wifi_core/core/util/FileManager;->getSsidList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/pubinfo/wifi_core/AppBaseActivity;->ssidListParser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 166
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->ssidListParser2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public killProcess()V
    .locals 7

    .prologue
    .line 119
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/pubinfo/wifi_core/AppBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 123
    .local v4, "tempActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 129
    .local v2, "currentProcess":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 135
    return-void

    .line 129
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 130
    .local v0, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 131
    .local v3, "processName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->setRequestedOrientation(I)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/AppBaseActivity;->requestWindowFeature(I)Z

    .line 59
    iput-object p0, p0, Lcom/pubinfo/wifi_core/AppBaseActivity;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    .line 61
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 36
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method protected showMsgToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 88
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    return-void
.end method

.method public ssidListParser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "wifi"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 171
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    .line 180
    :goto_1
    return v3

    .line 173
    :cond_0
    aget-object v4, v2, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "ssid":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 176
    const/4 v3, 0x1

    goto :goto_1

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ssidListParser2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "wifi"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 184
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_1

    .line 210
    const/4 v4, 0x0

    :cond_0
    return v4

    .line 192
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    aget-object v6, v3, v1

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    aget-object v5, v3, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    .line 201
    aget-object v6, v3, v1

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    .line 199
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "ssid":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    .line 185
    .end local v2    # "ssid":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1
.end method

.method public umengCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    return-void
.end method
