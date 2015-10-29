.class public Lorg/androidpn/client/NotificationDetailsActivity;
.super Landroid/app/Activity;
.source "NotificationDetailsActivity.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private callbackActivityClassName:Ljava/lang/String;

.field private callbackActivityPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/androidpn/client/NotificationDetailsActivity;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 41
    sput-object v0, Lorg/androidpn/client/NotificationDetailsActivity;->LOGTAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lorg/androidpn/client/NotificationDetailsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/androidpn/client/NotificationDetailsActivity;->callbackActivityPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/androidpn/client/NotificationDetailsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/androidpn/client/NotificationDetailsActivity;->callbackActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x2

    const/16 v10, 0x11

    const/4 v7, 0x5

    const/4 v9, -0x1

    const/16 v8, 0x1e

    .line 88
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const v6, -0x111112

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 90
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 92
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v5, "textTitle":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 101
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    invoke-virtual {v1, v8, v8, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 108
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    .local v4, "textDetails":Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    const v6, -0xcccccd

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .restart local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0xa

    const/16 v7, 0x14

    invoke-virtual {v1, v8, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 125
    .local v3, "okButton":Landroid/widget/Button;
    const-string v6, "Ok"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/16 v6, 0x64

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setWidth(I)V

    .line 128
    new-instance v6, Lorg/androidpn/client/NotificationDetailsActivity$1;

    invoke-direct {v6, p0, p3}, Lorg/androidpn/client/NotificationDetailsActivity$1;-><init>(Lorg/androidpn/client/NotificationDetailsActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "innerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v8, "client_preferences"

    const/4 v9, 0x0

    .line 55
    invoke-virtual {p0, v8, v9}, Lorg/androidpn/client/NotificationDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 58
    .local v7, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v8, "CALLBACK_ACTIVITY_PACKAGE_NAME"

    const-string v9, ""

    .line 57
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/androidpn/client/NotificationDetailsActivity;->callbackActivityPackageName:Ljava/lang/String;

    .line 60
    const-string v8, "CALLBACK_ACTIVITY_CLASS_NAME"

    const-string v9, ""

    .line 59
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/androidpn/client/NotificationDetailsActivity;->callbackActivityClassName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lorg/androidpn/client/NotificationDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v8, "NOTIFICATION_ID"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "notificationId":Ljava/lang/String;
    const-string v8, "NOTIFICATION_API_KEY"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "notificationApiKey":Ljava/lang/String;
    const-string v8, "NOTIFICATION_TITLE"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "notificationTitle":Ljava/lang/String;
    const-string v8, "NOTIFICATION_MESSAGE"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "notificationMessage":Ljava/lang/String;
    const-string v8, "NOTIFICATION_URI"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "notificationUri":Ljava/lang/String;
    sget-object v8, Lorg/androidpn/client/NotificationDetailsActivity;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "notificationId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v8, Lorg/androidpn/client/NotificationDetailsActivity;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "notificationApiKey="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v8, Lorg/androidpn/client/NotificationDetailsActivity;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "notificationTitle="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v8, Lorg/androidpn/client/NotificationDetailsActivity;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "notificationMessage="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v8, Lorg/androidpn/client/NotificationDetailsActivity;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "notificationUri="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0, v4, v3, v5}, Lorg/androidpn/client/NotificationDetailsActivity;->createView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 82
    .local v6, "rootView":Landroid/view/View;
    invoke-virtual {p0, v6}, Lorg/androidpn/client/NotificationDetailsActivity;->setContentView(Landroid/view/View;)V

    .line 83
    return-void
.end method
