.class public abstract Lcom/pubinfo/freewifialliance/controller/LoadingFun;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "LoadingFun.java"

# interfaces
.implements Lcom/iwifi/sdk/protocol/DoLoginAuthInterface;


# instance fields
.field SP_FIRST:Ljava/lang/String;

.field ST_FIRST:Ljava/lang/String;

.field VersionCode:I

.field WIFICONN:Ljava/lang/String;

.field protected canConnectWifiIndex:I

.field private file:Ljava/io/File;

.field protected handler:Landroid/os/Handler;

.field introfomation:Ljava/lang/String;

.field protected isConnecting:Z

.field private isJumpToLoginPage:Ljava/lang/Boolean;

.field private mLocalVersionName:Ljava/lang/String;

.field private mPackMg:Landroid/content/pm/PackageManager;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/lang/String;

.field protected tianyiWifi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field w:I

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->tianyiWifi:Ljava/util/List;

    .line 54
    iput-boolean v1, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->isConnecting:Z

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->isJumpToLoginPage:Ljava/lang/Boolean;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->mPackMg:Landroid/content/pm/PackageManager;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->mLocalVersionName:Ljava/lang/String;

    .line 79
    const-string v0, "\u63d0\u9192\uff1a\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u66f4\u65b0\uff1f"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->introfomation:Ljava/lang/String;

    .line 82
    const-string v0, "com.pubinfo.freewifialliance.service.WifiConnService"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->WIFICONN:Ljava/lang/String;

    .line 85
    const-string v0, "spFirst"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->SP_FIRST:Ljava/lang/String;

    .line 86
    const-string v0, "stFirst"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->ST_FIRST:Ljava/lang/String;

    .line 241
    new-instance v0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;-><init>(Lcom/pubinfo/freewifialliance/controller/LoadingFun;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/controller/LoadingFun;)Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->file:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected installapk()V
    .locals 14

    .prologue
    .line 161
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 164
    :try_start_0
    const-string v10, "FileName"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 165
    .local v4, "sharedata":Landroid/content/SharedPreferences;
    const-string v10, "item"

    const-string v11, ""

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "fileName":Ljava/lang/String;
    const-string v10, "version_name"

    const-string v11, ""

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "version_name":Ljava/lang/String;
    const-string v10, "version_code"

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 169
    .local v8, "version_code":I
    const-string v10, "update_grade"

    const-string v11, ""

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "update_grade":Ljava/lang/String;
    const-string v10, "down"

    .line 172
    const/4 v11, 0x0

    .line 171
    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 173
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v10, "done"

    const-string v11, ""

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "down":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 176
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    .line 177
    const-string v12, "AiWifi.apk"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    iput-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->file:Ljava/io/File;

    .line 178
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->mPackMg:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :try_start_1
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->mPackMg:Landroid/content/pm/PackageManager;

    .line 181
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 182
    const/4 v12, 0x1

    .line 180
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 183
    .local v2, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->mLocalVersionName:Ljava/lang/String;

    .line 184
    iget v10, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->VersionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 187
    .end local v2    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_2
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 188
    iget v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->VersionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lt v10, v8, :cond_0

    .line 190
    :try_start_3
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 192
    const-string v10, "FileName"

    const/4 v11, 0x0

    .line 191
    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 192
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 193
    .local v5, "sharedata1":Landroid/content/SharedPreferences$Editor;
    const-string v10, "down"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 194
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 195
    .local v6, "sharedata2":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 239
    .end local v0    # "down":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "sharedata":Landroid/content/SharedPreferences;
    .end local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "sharedata2":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "update_grade":Ljava/lang/String;
    .end local v8    # "version_code":I
    .end local v9    # "version_name":Ljava/lang/String;
    :goto_1
    return-void

    .line 204
    .restart local v0    # "down":Ljava/lang/String;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v4    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v7    # "update_grade":Ljava/lang/String;
    .restart local v8    # "version_code":I
    .restart local v9    # "version_name":Ljava/lang/String;
    :cond_0
    :try_start_4
    const-string v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 205
    const-string v10, "y"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getScreenWidth()I

    move-result v10

    add-int/lit16 v10, v10, -0xb5

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, -0x2d

    iput v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->w:I

    .line 207
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 237
    .end local v0    # "down":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "sharedata":Landroid/content/SharedPreferences;
    .end local v7    # "update_grade":Ljava/lang/String;
    .end local v8    # "version_code":I
    .end local v9    # "version_name":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 209
    .restart local v0    # "down":Ljava/lang/String;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v4    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v7    # "update_grade":Ljava/lang/String;
    .restart local v8    # "version_code":I
    .restart local v9    # "version_name":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 211
    const-string v10, "FileName"

    const/4 v11, 0x0

    .line 210
    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 211
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 212
    .restart local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 216
    .end local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v10, "2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 217
    const-string v10, "y"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 218
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 220
    :cond_3
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 222
    const-string v10, "FileName"

    const/4 v11, 0x0

    .line 221
    invoke-virtual {p0, v10, v11}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 222
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 223
    .restart local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 228
    .end local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 232
    :cond_5
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 235
    :cond_6
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->handler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 200
    :catch_1
    move-exception v10

    goto/16 :goto_1

    .line 185
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method public startWifiService()V
    .locals 7

    .prologue
    const v5, 0x7fffffff

    .line 425
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 426
    const/4 v2, 0x0

    .line 427
    .local v2, "isServiceRunning":Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 428
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 430
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 429
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 436
    if-nez v2, :cond_1

    .line 437
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 438
    .local v1, "intent2":Landroid/content/Intent;
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->WIFICONN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    invoke-virtual {v4, v1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 441
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_1
    return-void

    .line 430
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 431
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->WIFICONN:Ljava/lang/String;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    const/4 v2, 0x1

    goto :goto_0
.end method
