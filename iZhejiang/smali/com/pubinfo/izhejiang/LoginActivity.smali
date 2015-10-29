.class public Lcom/pubinfo/izhejiang/LoginActivity;
.super Lcom/pubinfo/izhejiang/controller/LoginFun;
.source "LoginActivity.java"


# static fields
.field public static final LOGIN_CHOSE_COUNTRY:I = 0x1

.field public static login_instance:Lcom/pubinfo/izhejiang/LoginActivity;

.field private static login_isClicked:Z


# instance fields
.field activityname:Ljava/lang/String;

.field backButton:Landroid/widget/ImageButton;

.field code:Ljava/lang/String;

.field commitButton:Landroid/widget/Button;

.field confirmButton:Landroid/widget/LinearLayout;

.field countrycn:Ljava/lang/String;

.field private etphoneWatcher:Landroid/text/TextWatcher;

.field findpasswordButton:Landroid/widget/Button;

.field private itemsOnClick:Landroid/view/View$OnClickListener;

.field loading_text:Landroid/widget/TextView;

.field private mainHandler:Landroid/os/Handler;

.field menuWindow:Lcom/cat/tools/SelectFindPasswordPopupWindow;

.field passwordET:Landroid/widget/EditText;

.field registButton:Landroid/widget/Button;

.field relativelayout1:Landroid/widget/RelativeLayout;

.field selectcountryButton:Landroid/widget/Button;

.field startTime:J

.field usernameET:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/izhejiang/LoginActivity;->login_instance:Lcom/pubinfo/izhejiang/LoginActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/LoginFun;-><init>()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->startTime:J

    .line 146
    new-instance v0, Lcom/pubinfo/izhejiang/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/LoginActivity$1;-><init>(Lcom/pubinfo/izhejiang/LoginActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->itemsOnClick:Landroid/view/View$OnClickListener;

    .line 162
    new-instance v0, Lcom/pubinfo/izhejiang/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/LoginActivity$2;-><init>(Lcom/pubinfo/izhejiang/LoginActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->mainHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public static CheckIsEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strEmail"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string v2, "^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    .line 299
    .local v2, "strPattern":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 300
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 301
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method private Commit()V
    .locals 5

    .prologue
    const v4, 0x7f06003d

    const/4 v3, 0x1

    .line 324
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8ba9\u5929\u4e0b\u6ca1\u6709\u96be\u4e0a\u7684WiFi! -2015"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    new-instance v0, Landroid/content/Intent;

    .line 326
    const-class v1, Lcom/pubinfo/izhejiang/HideMenuActivity;

    .line 325
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    .end local v0    # "intent1":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pubinfo/izhejiang/LoginActivity;->CheckIsEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    sput-boolean v3, Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z

    .line 332
    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->showMsgToast(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    .line 368
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->code:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->countrycn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity;->code:Ljava/lang/String;

    .line 337
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 336
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/LoginActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "86"

    .line 341
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 340
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/LoginActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->code:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->countrycn:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 347
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->checkForignPhone()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity;->code:Ljava/lang/String;

    .line 349
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 348
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/LoginActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 352
    :cond_4
    sput-boolean v3, Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z

    .line 353
    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->showMsgToast(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    goto/16 :goto_0

    .line 357
    :cond_5
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->checkChinaPhone()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 358
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "86"

    .line 359
    iget-object v3, p0, Lcom/pubinfo/izhejiang/LoginActivity;->passwordET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 358
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/LoginActivity;->getLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 362
    :cond_6
    sput-boolean v3, Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z

    .line 363
    invoke-virtual {p0, v4}, Lcom/pubinfo/izhejiang/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->showMsgToast(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/LoginActivity;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->goFindPasswordIntent()V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/LoginActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->itemsOnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/LoginActivity;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->goRegistIntent()V

    return-void
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/LoginActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Z)V
    .locals 0

    .prologue
    .line 61
    sput-boolean p0, Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z

    return-void
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/LoginActivity;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->goIntent()V

    return-void
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/LoginActivity;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->Commit()V

    return-void
.end method

.method private checkChinaPhone()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkForignPhone()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 317
    :cond_0
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private goFindPasswordIntent()V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    .line 204
    const-class v1, Lcom/pubinfo/izhejiang/FindPasswordActivity;

    .line 203
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method private goIntent()V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    .line 222
    new-instance v0, Landroid/content/Intent;

    .line 223
    const-class v1, Lcom/pubinfo/izhejiang/CountryListActivity;

    .line 222
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "activity"

    const-string v2, "LoginActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    return-void
.end method

.method private goLoginSucessIntent()V
    .locals 14

    .prologue
    const/high16 v13, 0x4000000

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/pubinfo/izhejiang/LoginActivity;->startTime:J

    .line 232
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cat/data/ComData;->getLoginData()Ljava/util/List;

    move-result-object v4

    .line 234
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/LoginData;>;"
    const-string v8, "LoginSucess"

    .line 233
    invoke-virtual {p0, v8, v11}, Lcom/pubinfo/izhejiang/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 235
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 236
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "username"

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cat/data/LoginData;

    invoke-virtual {v8}, Lcom/cat/data/LoginData;->getAuthid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v9, "countrycode"

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cat/data/LoginData;

    invoke-virtual {v8}, Lcom/cat/data/LoginData;->getCountrycode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v9, "memberid"

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cat/data/LoginData;

    invoke-virtual {v8}, Lcom/cat/data/LoginData;->getMemberid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v8, "logintime"

    iget-wide v9, p0, Lcom/pubinfo/izhejiang/LoginActivity;->startTime:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    sget-object v9, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, "newFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    sget-object v9, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 244
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v6, "oleFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 247
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v5    # "newFile":Ljava/io/File;
    .end local v6    # "oleFile":Ljava/io/File;
    :goto_0
    iget-object v8, p0, Lcom/pubinfo/izhejiang/LoginActivity;->activityname:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 252
    iget-object v8, p0, Lcom/pubinfo/izhejiang/LoginActivity;->activityname:Ljava/lang/String;

    const-string v9, "SsidFragment"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 253
    iget-object v8, p0, Lcom/pubinfo/izhejiang/LoginActivity;->activityname:Ljava/lang/String;

    const-string v9, "SsidFragment"

    if-ne v8, v9, :cond_1

    .line 254
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v0, "data":Landroid/content/Intent;
    const-string v9, "username"

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cat/data/LoginData;

    invoke-virtual {v8}, Lcom/cat/data/LoginData;->getAuthid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v12, v0}, Lcom/pubinfo/izhejiang/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->finish()V

    .line 278
    .end local v0    # "data":Landroid/content/Intent;
    :goto_1
    return-void

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v8, p0, Lcom/pubinfo/izhejiang/LoginActivity;->activityname:Ljava/lang/String;

    const-string v9, "MyFragment"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 259
    iget-object v8, p0, Lcom/pubinfo/izhejiang/LoginActivity;->activityname:Ljava/lang/String;

    const-string v9, "CountryListActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 260
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .restart local v0    # "data":Landroid/content/Intent;
    const-string v9, "username"

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cat/data/LoginData;

    invoke-virtual {v8}, Lcom/cat/data/LoginData;->getAuthid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v9, "countrycode"

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cat/data/LoginData;

    invoke-virtual {v8}, Lcom/cat/data/LoginData;->getCountrycode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v12, v0}, Lcom/pubinfo/izhejiang/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 264
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->finish()V

    goto :goto_1

    .line 266
    .end local v0    # "data":Landroid/content/Intent;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .line 267
    const-class v8, Lcom/pubinfo/izhejiang/MainActivity;

    .line 266
    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->finish()V

    goto :goto_1

    .line 273
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/pubinfo/izhejiang/MainActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->finish()V

    goto :goto_1
.end method

.method private goRegistIntent()V
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    .line 211
    new-instance v0, Landroid/content/Intent;

    .line 212
    const-class v1, Lcom/pubinfo/izhejiang/RegistFirstActivity;

    .line 211
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Activity"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity;->activityname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 373
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/LoginActivity$4;-><init>(Lcom/pubinfo/izhejiang/LoginActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->mainHandler:Landroid/os/Handler;

    .line 411
    return-void
.end method


# virtual methods
.method public chosePhoto()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 414
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 414
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v2, "oleFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 420
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 421
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x3

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "pathString":Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 425
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 426
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/pubinfo/izhejiang/LoginActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v5, p0, Lcom/pubinfo/izhejiang/LoginActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "pathString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public doLoginErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method

.method public doLoginSucc(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 436
    if-eqz p1, :cond_1

    .line 439
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/LoginParser;->Loginparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 440
    .local v1, "result":Ljava/lang/Object;
    const-string v2, "OK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 442
    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    :goto_0
    return-void

    .line 444
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    const v2, 0x7f060048

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/LoginActivity;->showMsgToast(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    .line 446
    check-cast v1, Ljava/util/List;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/cat/data/ComData;->setLoginData(Ljava/util/List;)V

    .line 447
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->goLoginSucessIntent()V

    .line 448
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->hideLoading()V

    .line 452
    sput-boolean v4, Lcom/pubinfo/izhejiang/LoginActivity;->login_isClicked:Z

    goto :goto_0

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 282
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 283
    if-eqz p3, :cond_1

    .line 284
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->code:Ljava/lang/String;

    .line 285
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "countrycn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->countrycn:Ljava/lang/String;

    .line 286
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->activityname:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->countrycn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/pubinfo/izhejiang/LoginActivity;->selectcountryButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->countrycn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/pubinfo/izhejiang/controller/LoginFun;->onActivityResult(IILandroid/content/Intent;)V

    .line 295
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/LoginFun;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->setContentView(I)V

    .line 69
    sput-object p0, Lcom/pubinfo/izhejiang/LoginActivity;->login_instance:Lcom/pubinfo/izhejiang/LoginActivity;

    .line 70
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 72
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 71
    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 73
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 74
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 74
    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 77
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->initialHandler()V

    .line 79
    const v1, 0x7f0a0074

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->commitButton:Landroid/widget/Button;

    .line 80
    const v1, 0x7f0a0070

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    .line 81
    const v1, 0x7f0a0073

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->passwordET:Landroid/widget/EditText;

    .line 82
    const v1, 0x7f0a00a5

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->loading_text:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->backButton:Landroid/widget/ImageButton;

    .line 84
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 85
    const v1, 0x7f0a0076

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->findpasswordButton:Landroid/widget/Button;

    .line 86
    const v1, 0x7f0a0075

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->selectcountryButton:Landroid/widget/Button;

    .line 87
    const v1, 0x7f0a0077

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->registButton:Landroid/widget/Button;

    .line 88
    const v1, 0x7f0a006e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    .line 92
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->code:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "countrycn"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->countrycn:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Activity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->activityname:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->code:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->countrycn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->selectcountryButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity;->countrycn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    new-instance v0, Lcom/pubinfo/izhejiang/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/LoginActivity$3;-><init>(Lcom/pubinfo/izhejiang/LoginActivity;)V

    .line 134
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->commitButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->usernameET:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->passwordET:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/LoginActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->selectcountryButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->registButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->findpasswordButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->commitButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/pubinfo/izhejiang/LoginActivity;->confirmButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 468
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 469
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/LoginActivity;->finish()V

    .line 472
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pubinfo/izhejiang/controller/LoginFun;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
