.class public Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
.super Ljava/lang/Object;
.source "SDKCommonMotheds.java"


# static fields
.field private static final HEX_DIGITS:[C


# instance fields
.field private mContext:Landroid/content/Context;

.field private teleMgr:Landroid/telephony/TelephonyManager;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->HEX_DIGITS:[C

    .line 191
    return-void

    .line 190
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 29
    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    .line 34
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 36
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 37
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 36
    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    .line 38
    return-void
.end method

.method public static JSoupHTMLParse(Ljava/io/InputStream;)Lorg/jsoup/nodes/Document;
    .locals 7
    .param p0, "html_stream"    # Ljava/io/InputStream;

    .prologue
    .line 238
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 239
    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 238
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 240
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 241
    .local v4, "response_html":Ljava/lang/String;
    const-string v2, ""

    .line 244
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 247
    invoke-static {v4}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 249
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 250
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 256
    .end local v0    # "doc":Lorg/jsoup/nodes/Document;
    :goto_1
    return-object v0

    .line 245
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

    .line 252
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 256
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static bin2hex(Ljava/lang/String;)[B
    .locals 3
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "digest":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    return-object v2

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "split_str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "split_devId":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 139
    aget-object v1, v0, v2

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 142
    .end local v0    # "split_devId":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "strForEncrypt"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 210
    invoke-static {p0}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->bin2hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 211
    .local v0, "data":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    .line 212
    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v2, v3

    .line 211
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 155
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 156
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 157
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 158
    .local v1, "m":[B
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 163
    .end local v1    # "m":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 163
    const-string v3, ""

    goto :goto_0
.end method

.method public static getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strparams"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "app2c.51awifi.com"

    invoke-static {v3}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "sign":Ljava/lang/String;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "md5sign":Ljava/lang/String;
    return-object v0
.end method

.method private static getString([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 169
    :cond_0
    aget-byte v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 179
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 180
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 182
    .local v2, "messageDigest":[B
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 187
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "messageDigest":[B
    :goto_0
    return-object v3

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 187
    const-string v3, ""

    goto :goto_0
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    :cond_0
    sget-object v2, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    sget-object v2, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getConnectedWifiSSId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 117
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 116
    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 120
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getDhcpGatewayAddr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 100
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 99
    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 103
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    const-string v1, "iWifiSDKDemo"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Gateway address : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIMEICode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 46
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 45
    iput-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->teleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 86
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 85
    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 89
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
    .line 57
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 59
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 58
    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 62
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRouterMac()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->mContext:Landroid/content/Context;

    .line 71
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 70
    iput-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 74
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

    .line 75
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
