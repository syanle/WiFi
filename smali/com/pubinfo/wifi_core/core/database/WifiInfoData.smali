.class public Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
.super Ljava/lang/Object;
.source "WifiInfoData.java"


# instance fields
.field private account:Ljava/lang/String;

.field private devtype:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getDevtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->devtype:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->account:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setDevtype(Ljava/lang/String;)V
    .locals 0
    .param p1, "devtype"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->devtype:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->id:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->key:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->mac:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->password:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->phone:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->ssid:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->type:Ljava/lang/String;

    .line 61
    return-void
.end method
