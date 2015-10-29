.class public Lcom/pubinfo/izhejiang/SplashActivity;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "SplashActivity.java"

# interfaces
.implements Lcom/cat/protocol/DoTimeDifferenceInterface;


# instance fields
.field SP_FIRST:Ljava/lang/String;

.field ST_FIRST:Ljava/lang/String;

.field VersionCode:I

.field editor:Landroid/content/SharedPreferences$Editor;

.field private file:Ljava/io/File;

.field protected handler:Landroid/os/Handler;

.field introfomation:Ljava/lang/String;

.field private mPackMg:Landroid/content/pm/PackageManager;

.field s:Ljava/lang/String;

.field sharedata:Landroid/content/SharedPreferences;

.field version_name:Ljava/lang/String;

.field w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity;->mPackMg:Landroid/content/pm/PackageManager;

    .line 50
    const-string v0, "\u63d0\u9192\uff1a\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u66f4\u65b0\uff1f"

    iput-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity;->introfomation:Ljava/lang/String;

    .line 54
    const-string v0, "spFirst"

    iput-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity;->SP_FIRST:Ljava/lang/String;

    .line 55
    const-string v0, "stFirst"

    iput-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity;->ST_FIRST:Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/pubinfo/izhejiang/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/SplashActivity$1;-><init>(Lcom/pubinfo/izhejiang/SplashActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/SplashActivity;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/SplashActivity;->startMain()V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/SplashActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity;->file:Ljava/io/File;

    return-object v0
.end method

.method private startMain()V
    .locals 2

    .prologue
    .line 292
    invoke-static {p0}, Lcom/cat/parase/GeneralConfigParser;->parsingGeneralConfig(Landroid/content/Context;)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/pubinfo/izhejiang/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 297
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/SplashActivity;->finish()V

    .line 298
    return-void
.end method


# virtual methods
.method public doTimeDifferenceErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 323
    return-void
.end method

.method public doTimeDifferenceSucc(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 305
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/TimeDifferenceParser;->Timedifferenceparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 306
    .local v1, "result":Ljava/lang/Object;
    const-string v3, "OK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 309
    .local v2, "td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TimeDifference;>;"
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "difftime"

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/TimeDifference;

    invoke-virtual {v3}, Lcom/cat/data/TimeDifference;->getTimedifference()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    iget-object v3, p0, Lcom/pubinfo/izhejiang/SplashActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "td":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TimeDifference;>;"
    :cond_0
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected installapk()V
    .locals 13

    .prologue
    .line 102
    :try_start_0
    const-string v9, "FileName"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/pubinfo/izhejiang/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 103
    .local v4, "sharedata":Landroid/content/SharedPreferences;
    const-string v9, "item"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "fileName":Ljava/lang/String;
    const-string v9, "intro"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->introfomation:Ljava/lang/String;

    .line 105
    const-string v9, "version_name"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->version_name:Ljava/lang/String;

    .line 106
    const-string v9, "version_code"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 107
    .local v8, "version_code":I
    const-string v9, "update_grade"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "update_grade":Ljava/lang/String;
    const-string v9, "down"

    .line 110
    const/4 v10, 0x0

    .line 109
    invoke-virtual {p0, v9, v10}, Lcom/pubinfo/izhejiang/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 111
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v9, "done"

    const-string v10, ""

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "down":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 114
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 115
    const-string v11, "I-zhejiang.apk"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    iput-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->file:Ljava/io/File;

    .line 116
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->mPackMg:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->mPackMg:Landroid/content/pm/PackageManager;

    .line 119
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 120
    const/4 v11, 0x1

    .line 118
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 121
    .local v2, "packInfo":Landroid/content/pm/PackageInfo;
    iget v9, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->VersionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 124
    .end local v2    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    :try_start_2
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 125
    iget v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->VersionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lt v9, v8, :cond_0

    .line 127
    :try_start_3
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 129
    const-string v9, "FileName"

    const/4 v10, 0x0

    .line 128
    invoke-virtual {p0, v9, v10}, Lcom/pubinfo/izhejiang/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 129
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 130
    .local v5, "sharedata1":Landroid/content/SharedPreferences$Editor;
    const-string v9, "down"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/pubinfo/izhejiang/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 131
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 132
    .local v6, "sharedata2":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 176
    .end local v0    # "down":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "sharedata":Landroid/content/SharedPreferences;
    .end local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "sharedata2":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "update_grade":Ljava/lang/String;
    .end local v8    # "version_code":I
    :goto_1
    return-void

    .line 141
    .restart local v0    # "down":Ljava/lang/String;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v4    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v7    # "update_grade":Ljava/lang/String;
    .restart local v8    # "version_code":I
    :cond_0
    :try_start_4
    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 142
    const-string v9, "y"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/SplashActivity;->getScreenWidth()I

    move-result v9

    add-int/lit16 v9, v9, -0xb5

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x64

    iput v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->w:I

    .line 144
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 174
    .end local v0    # "down":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "sharedata":Landroid/content/SharedPreferences;
    .end local v7    # "update_grade":Ljava/lang/String;
    .end local v8    # "version_code":I
    :catch_0
    move-exception v9

    goto :goto_1

    .line 146
    .restart local v0    # "down":Ljava/lang/String;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v4    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v7    # "update_grade":Ljava/lang/String;
    .restart local v8    # "version_code":I
    :cond_1
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 148
    const-string v9, "FileName"

    const/4 v10, 0x0

    .line 147
    invoke-virtual {p0, v9, v10}, Lcom/pubinfo/izhejiang/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 148
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 149
    .restart local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 153
    .end local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v9, "2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 154
    const-string v9, "y"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 155
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 157
    :cond_3
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 159
    const-string v9, "FileName"

    const/4 v10, 0x0

    .line 158
    invoke-virtual {p0, v9, v10}, Lcom/pubinfo/izhejiang/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 159
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 160
    .restart local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 165
    .end local v5    # "sharedata1":Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 169
    :cond_5
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 172
    :cond_6
    iget-object v9, p0, Lcom/pubinfo/izhejiang/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 137
    :catch_1
    move-exception v9

    goto/16 :goto_1

    .line 122
    :catch_2
    move-exception v9

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v4, 0x7f030034

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 62
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 63
    const/4 v4, 0x3

    invoke-static {v6, v4, v6}, Lcom/iwifi/sdk/tools/Logger;->setLogStatus(ZII)V

    .line 65
    invoke-static {p0}, Lcom/cat/parase/GeneralConfigParser;->parsingGeneralConfig(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/SplashActivity;->installapk()V

    .line 72
    const-string v4, "TimeDifference"

    invoke-virtual {p0, v4, v6}, Lcom/pubinfo/izhejiang/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity;->sharedata:Landroid/content/SharedPreferences;

    .line 73
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity;->sharedata:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 78
    .local v1, "nowTime":J
    new-instance v4, Lcom/cat/impl/DoTimeDifferenceConn;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/cat/impl/DoTimeDifferenceConn;-><init>(Ljava/lang/String;Lcom/cat/protocol/DoTimeDifferenceInterface;)V

    .line 80
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 81
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 82
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    new-instance v4, Lcom/pubinfo/izhejiang/SplashActivity$2;

    invoke-direct {v4, p0}, Lcom/pubinfo/izhejiang/SplashActivity$2;-><init>(Lcom/pubinfo/izhejiang/SplashActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onDestroy()V

    .line 328
    return-void
.end method
