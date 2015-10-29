.class public Lcom/ta/util/extend/app/SIMCardInfoUtil;
.super Ljava/lang/Object;
.source "SIMCardInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    .line 87
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 89
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNativePhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    .line 42
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 43
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 44
    .local v0, "NativePhoneNumber":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public static getProvidersName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, "ProvidersName":Ljava/lang/String;
    invoke-static {p0}, Lcom/ta/util/extend/app/SIMCardInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "IMSI":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    .line 74
    :goto_0
    return-object v1

    .line 64
    :cond_1
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    .line 67
    goto :goto_0

    :cond_2
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    const-string v1, "\u5176\u4ed6\u670d\u52a1\u5546"

    goto :goto_0
.end method
