.class public Lcom/pubinfo/izhejiang/NFCDemo;
.super Lcom/pubinfo/izhejiang/controller/NFCDemoFun;
.source "NFCDemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field AppID:Ljava/lang/String;

.field Random:Ljava/lang/String;

.field SeqID:Ljava/lang/String;

.field btn_get_phone:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field et1:Landroid/widget/EditText;

.field et2:Landroid/widget/EditText;

.field et3:Landroid/widget/EditText;

.field et4:Landroid/widget/EditText;

.field private mCTPassAIDLService:Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;

.field private mCallback:Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field miWifi20_output:Landroid/widget/TextView;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/NFCDemoFun;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 91
    new-instance v0, Lcom/pubinfo/izhejiang/NFCDemo$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/NFCDemo$1;-><init>(Lcom/pubinfo/izhejiang/NFCDemo;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->mCallback:Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;

    .line 125
    new-instance v0, Lcom/pubinfo/izhejiang/NFCDemo$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/NFCDemo$2;-><init>(Lcom/pubinfo/izhejiang/NFCDemo;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/NFCDemo;)Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->mCTPassAIDLService:Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/NFCDemo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/NFCDemo;->showOutputText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/NFCDemo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/NFCDemo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/pubinfo/izhejiang/NFCDemo;->getCTPassResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/NFCDemo;Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pubinfo/izhejiang/NFCDemo;->mCTPassAIDLService:Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/NFCDemo;)Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->mCallback:Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;

    return-object v0
.end method

.method private getCTPassService()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.com.chinatelecom.ctpass.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/pubinfo/izhejiang/NFCDemo;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 89
    return-void
.end method

.method private showOutputText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Lcom/pubinfo/izhejiang/NFCDemo$3;

    invoke-direct {v0, p0, p1}, Lcom/pubinfo/izhejiang/NFCDemo$3;-><init>(Lcom/pubinfo/izhejiang/NFCDemo;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method


# virtual methods
.method public doCTPassErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/NFCDemo;->showOutputText(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public doCTPassResultErr(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/NFCDemo;->showOutputText(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public doCTPassResultSucc(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/NFCDemo;->showOutputText(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public doCTPassSucc(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p1, :cond_1

    .line 177
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/NFCParser;->NFCparser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 178
    .local v2, "result":Ljava/lang/Object;
    const-string v3, "OK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/NFCDemo;->showOutputText(Ljava/lang/String;)V

    .line 196
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 181
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pubinfo/izhejiang/NFCDemo;->showMsgToast(Ljava/lang/String;)V

    .line 182
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 183
    .local v1, "lv":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/NFC;>;"
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/NFC;

    invoke-virtual {v3}, Lcom/cat/data/NFC;->getAppid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/izhejiang/NFCDemo;->AppID:Ljava/lang/String;

    .line 184
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/NFC;

    invoke-virtual {v3}, Lcom/cat/data/NFC;->getSeqid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/izhejiang/NFCDemo;->SeqID:Ljava/lang/String;

    .line 185
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/NFC;

    invoke-virtual {v3}, Lcom/cat/data/NFC;->getRandom()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pubinfo/izhejiang/NFCDemo;->Random:Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/pubinfo/izhejiang/NFCDemo;->et1:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/NFCDemo;->AppID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v3, p0, Lcom/pubinfo/izhejiang/NFCDemo;->et2:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/NFCDemo;->SeqID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, p0, Lcom/pubinfo/izhejiang/NFCDemo;->et3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/NFCDemo;->Random:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/NFCDemo;->getCTPassService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v1    # "lv":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/NFC;>;"
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/NFCDemo;->showOutputText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo;->context:Landroid/content/Context;

    .line 78
    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 77
    iput-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 81
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->btn_get_phone:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/NFCDemo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->getCTPass(Landroid/content/Context;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/NFCDemoFun;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->setContentView(I)V

    .line 54
    iput-object p0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->context:Landroid/content/Context;

    .line 56
    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->miWifi20_output:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->miWifi20_output:Landroid/widget/TextView;

    const-string v1, "\u8f93\u51fa\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v0, 0x7f0a00ae

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->et1:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f0a00af

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->et2:Landroid/widget/EditText;

    .line 61
    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->et3:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->et4:Landroid/widget/EditText;

    .line 64
    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/NFCDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->btn_get_phone:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/pubinfo/izhejiang/NFCDemo;->btn_get_phone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method
