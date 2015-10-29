.class public Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
.super Ljava/lang/Object;
.source "SDKCommonMotheds.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private teleMgr:Landroid/telephony/TelephonyManager;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 26
    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    .line 33
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 35
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    .line 36
    return-void
.end method

.method public static JSoupHTMLParse(Ljava/io/InputStream;)Lorg/jsoup/nodes/Document;
    .locals 7
    .param p0, "html_stream"    # Ljava/io/InputStream;

    .prologue
    .line 148
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 149
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 150
    .local v4, "response_html":Ljava/lang/String;
    const-string v2, ""

    .line 153
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 157
    invoke-static {v4}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 159
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 160
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 166
    .end local v0    # "doc":Lorg/jsoup/nodes/Document;
    :goto_1
    return-object v0

    .line 155
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "split_str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 104
    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "split_devId":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 108
    aget-object v1, v0, v2

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 111
    .end local v0    # "split_devId":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 124
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 126
    .local v1, "m":[B
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 131
    .end local v1    # "m":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 131
    const-string v3, ""

    goto :goto_0
.end method

.method private static getString([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 135
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 137
    :cond_0
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDhcpGatewayAddr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 93
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    const-string v1, "iWifiSDKDemo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Gateway address : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIMEICode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 81
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 57
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRouterMac()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 68
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    const-string v1, "iWifiSDKDemo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " RouterMAC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
