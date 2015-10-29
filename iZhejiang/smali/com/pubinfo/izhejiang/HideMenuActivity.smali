.class public Lcom/pubinfo/izhejiang/HideMenuActivity;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "HideMenuActivity.java"


# instance fields
.field backBtn:Landroid/widget/ImageButton;

.field back_listener:Landroid/view/View$OnClickListener;

.field buttonInterDiy:Landroid/widget/Button;

.field interFaceDev_listener:Landroid/view/View$OnClickListener;

.field interFaceDiy_listener:Landroid/view/View$OnClickListener;

.field interFaceTest_listener:Landroid/view/View$OnClickListener;

.field interTextViewDev:Landroid/widget/TextView;

.field interTextViewTest:Landroid/widget/TextView;

.field nowIpTextView:Landroid/widget/TextView;

.field quitBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceDev_listener:Landroid/view/View$OnClickListener;

    .line 19
    iput-object v0, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceTest_listener:Landroid/view/View$OnClickListener;

    .line 20
    iput-object v0, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceDiy_listener:Landroid/view/View$OnClickListener;

    .line 21
    iput-object v0, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->back_listener:Landroid/view/View$OnClickListener;

    .line 17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/HideMenuActivity;->setContentView(I)V

    .line 48
    sget-object v1, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTGE:Ljava/lang/String;

    const-string v2, "/PubInfoWifiInterface"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "nowIp":Ljava/lang/String;
    const v1, 0x7f0a005f

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/HideMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->nowIpTextView:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->nowIpTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/HideMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->backBtn:Landroid/widget/ImageButton;

    .line 52
    const v1, 0x7f0a005e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/HideMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->quitBtn:Landroid/widget/Button;

    .line 54
    new-instance v1, Lcom/pubinfo/izhejiang/HideMenuActivity$1;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/HideMenuActivity$1;-><init>(Lcom/pubinfo/izhejiang/HideMenuActivity;)V

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->back_listener:Landroid/view/View$OnClickListener;

    .line 60
    new-instance v1, Lcom/pubinfo/izhejiang/HideMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/HideMenuActivity$2;-><init>(Lcom/pubinfo/izhejiang/HideMenuActivity;)V

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceDev_listener:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v1, Lcom/pubinfo/izhejiang/HideMenuActivity$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/HideMenuActivity$3;-><init>(Lcom/pubinfo/izhejiang/HideMenuActivity;)V

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceTest_listener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v1, Lcom/pubinfo/izhejiang/HideMenuActivity$4;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/HideMenuActivity$4;-><init>(Lcom/pubinfo/izhejiang/HideMenuActivity;)V

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceDiy_listener:Landroid/view/View$OnClickListener;

    .line 82
    const v1, 0x7f0a004d

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/HideMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interTextViewDev:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0a004f

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/HideMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interTextViewTest:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interTextViewDev:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceDev_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interTextViewTest:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceTest_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0a0054

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/HideMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->buttonInterDiy:Landroid/widget/Button;

    .line 87
    iget-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->buttonInterDiy:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->interFaceDiy_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->quitBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->back_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->backBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->back_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PubInfoWifiInterface/app30/general/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTGE:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PubInfoWifiInterface/app30/nfc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTNFC:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PubInfoWifiInterface/app30/member/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOST:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PubInfoWifiInterface/app30/ap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTAP:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PubInfoWifiInterface/app30/near/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cat/tools/HttpConf;->iWiFi_WIFI_HOSTNEAR:Ljava/lang/String;

    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6eip"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/pubinfo/izhejiang/HideMenuActivity;->nowIpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
