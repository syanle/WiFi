.class public Lcom/iwifi/sdk/protocol/impl/InitSDK_Key;
.super Lcom/iwifi/sdk/tools/HttpUtil;
.source "InitSDK_Key.java"


# instance fields
.field private m_iCallback:Lcom/iwifi/sdk/protocol/DoInitSdkInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/protocol/DoInitSdkInterface;Landroid/content/Context;)V
    .locals 10
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/iwifi/sdk/protocol/DoInitSdkInterface;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/iwifi/sdk/tools/HttpUtil;-><init>()V

    .line 43
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 44
    .local v2, "mPackMg":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 47
    .local v1, "mLocalVersionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 46
    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 48
    .local v4, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v4    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 53
    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 54
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "useragent":Ljava/lang/String;
    invoke-static {v6}, Lcom/iwifi/sdk/tools/HttpConf;->setUserAgent(Ljava/lang/String;)V

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appkey="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 58
    const-string v8, "&secret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "md5sign":Ljava/lang/String;
    iput-object p3, p0, Lcom/iwifi/sdk/protocol/impl/InitSDK_Key;->m_iCallback:Lcom/iwifi/sdk/protocol/DoInitSdkInterface;

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v5, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    new-instance v7, Lcom/iwifi/sdk/tools/DataObject;

    const-string v8, "appkey"

    invoke-direct {v7, v8, p1}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v7, Lcom/iwifi/sdk/tools/DataObject;

    const-string v8, "sign"

    invoke-direct {v7, v8, v3}, Lcom/iwifi/sdk/tools/DataObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v7, Lcom/iwifi/sdk/protocol/impl/InitSDK_Key;->iWiFi20_WIFI_HOST:Ljava/lang/String;

    const-string v8, "checkapp.html"

    const-string v9, ""

    invoke-virtual {p0, v7, v8, v9, v5}, Lcom/iwifi/sdk/protocol/impl/InitSDK_Key;->asyncConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 66
    return-void

    .line 49
    .end local v3    # "md5sign":Ljava/lang/String;
    .end local v5    # "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/iwifi/sdk/tools/DataObject;>;"
    .end local v6    # "useragent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public taskexecute(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "bTimeOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 76
    :try_start_0
    invoke-static {p1}, Lcom/iwifi/sdk/parser/GetSdkKeyResultParser;->GetSdkKeyResultList(Ljava/lang/String;)Lcom/iwifi/sdk/data/SdkKeyResult;

    move-result-object v0

    .line 77
    .local v0, "codeRes":Lcom/iwifi/sdk/data/SdkKeyResult;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/SdkKeyResult;->getResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 78
    const-string v5, "\",\"message\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/iwifi/sdk/data/SdkKeyResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "result":Ljava/lang/String;
    const-string v4, "OK"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/InitSDK_Key;->m_iCallback:Lcom/iwifi/sdk/protocol/DoInitSdkInterface;

    invoke-interface {v4, p1}, Lcom/iwifi/sdk/protocol/DoInitSdkInterface;->doInitSdkErr(Ljava/lang/String;)V

    .line 94
    .end local v0    # "codeRes":Lcom/iwifi/sdk/data/SdkKeyResult;
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 82
    .restart local v0    # "codeRes":Lcom/iwifi/sdk/data/SdkKeyResult;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/InitSDK_Key;->m_iCallback:Lcom/iwifi/sdk/protocol/DoInitSdkInterface;

    invoke-interface {v4, p1}, Lcom/iwifi/sdk/protocol/DoInitSdkInterface;->doInitSdkSucc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "codeRes":Lcom/iwifi/sdk/data/SdkKeyResult;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\"Json error :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/InitSDK_Key;->m_iCallback:Lcom/iwifi/sdk/protocol/DoInitSdkInterface;

    invoke-interface {v4, p1}, Lcom/iwifi/sdk/protocol/DoInitSdkInterface;->doInitSdkErr(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "err":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"result\":\"FAIL\",\"message\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {p1, p2}, Lcom/iwifi/sdk/tools/ErrDeal;->getConnErr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2    # "err":Ljava/lang/String;
    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/InitSDK_Key;->m_iCallback:Lcom/iwifi/sdk/protocol/DoInitSdkInterface;

    invoke-interface {v4, p1}, Lcom/iwifi/sdk/protocol/DoInitSdkInterface;->doInitSdkErr(Ljava/lang/String;)V

    goto :goto_0
.end method
