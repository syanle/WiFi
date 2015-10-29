.class final Lcom/baidu/android/bbalbs/common/util/a$a;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/bbalbs/common/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;
    .param p2, "canReadAndWrite"    # Z

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/baidu/android/bbalbs/common/util/a$a;->a:Ljava/lang/String;

    .line 332
    iput-boolean p2, p0, Lcom/baidu/android/bbalbs/common/util/a$a;->b:Z

    .line 333
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/a$a;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, "sysRwFail":Z
    const-string v1, ""

    .line 372
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bd_setting_i"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    const-string v3, ""

    invoke-static {p0, v3}, Lcom/baidu/android/bbalbs/common/util/a$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bd_setting_i"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_1
    :goto_0
    new-instance v4, Lcom/baidu/android/bbalbs/common/util/a$a;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-direct {v4, v1, v3}, Lcom/baidu/android/bbalbs/common/util/a$a;-><init>(Ljava/lang/String;Z)V

    return-object v4

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DeviceId"

    const-string v4, "Settings.System.getString or putString failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    const/4 v2, 0x1

    .line 386
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    const-string v3, ""

    invoke-static {p0, v3}, Lcom/baidu/android/bbalbs/common/util/a$a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 345
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 346
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 347
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 354
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/baidu/android/bbalbs/common/util/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    move-object v1, p1

    .line 359
    :cond_1
    return-object v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DeviceId"

    const-string v4, "Read IMEI failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "imei"    # Ljava/lang/String;

    .prologue
    .line 399
    if-eqz p0, :cond_0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string p0, ""

    .line 402
    .end local p0    # "imei":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
