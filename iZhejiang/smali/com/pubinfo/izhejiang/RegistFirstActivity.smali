.class public Lcom/pubinfo/izhejiang/RegistFirstActivity;
.super Lcom/pubinfo/izhejiang/controller/RegistFirstFun;
.source "RegistFirstActivity.java"


# static fields
.field public static final RIGIST_CHOSE_COUNTRY:I = 0x2

.field public static final RIGIST_MSG:I = 0x3

.field public static registfirst_instance:Lcom/pubinfo/izhejiang/RegistFirstActivity;


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field btn1:Landroid/widget/Button;

.field btn2:Landroid/widget/Button;

.field code:Ljava/lang/String;

.field confirmButton:Landroid/widget/LinearLayout;

.field countrycn:Ljava/lang/String;

.field drawable_dfu:Landroid/graphics/drawable/Drawable;

.field et_password1:Landroid/widget/EditText;

.field et_password2:Landroid/widget/EditText;

.field et_phone:Landroid/widget/EditText;

.field private etphoneWatcher:Landroid/text/TextWatcher;

.field ib_radioButton:Landroid/widget/ImageButton;

.field layout_country:Landroid/widget/LinearLayout;

.field private mainHandler:Landroid/os/Handler;

.field nextbtn:Landroid/widget/TextView;

.field radioButton:Landroid/widget/LinearLayout;

.field title:Landroid/widget/TextView;

.field tv_code:Landroid/widget/TextView;

.field tv_name:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->registfirst_instance:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/controller/RegistFirstFun;-><init>()V

    .line 294
    new-instance v0, Lcom/pubinfo/izhejiang/RegistFirstActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity$1;-><init>(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->mainHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method private Commit()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->tv_code:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 326
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 325
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getMobileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 340
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/RegistFirstActivity;)Z
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkCountry()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkChineseRegist()V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkForignRegist()V

    return-void
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->Commit()V

    return-void
.end method

.method private checkChinaPhone()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

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

    .line 249
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkChineseRegist()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x6

    .line 196
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkChinaPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 198
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 199
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showLoading()V

    .line 204
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkChinaPhone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 211
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_4

    .line 212
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 213
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 214
    :cond_4
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :cond_6
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkCountry()Z
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "countryname":Ljava/lang/String;
    const-string v1, "\u4e2d\u56fd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkForignPhone()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

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

    .line 259
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkForignRegist()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x6

    .line 222
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkForignPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 224
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 225
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showLoading()V

    .line 230
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->checkForignPhone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 235
    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 237
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_4

    .line 238
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 239
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 240
    :cond_4
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->isChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :cond_6
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->showMsgToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private goIntent()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->hideLoading()V

    .line 350
    new-instance v0, Landroid/content/Intent;

    .line 351
    const-class v1, Lcom/pubinfo/izhejiang/RegistSecondActivity;

    .line 350
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "countrycode"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->tv_code:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "password"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 357
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    const v0, 0x7f0a00c3

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->btn1:Landroid/widget/Button;

    .line 147
    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->btn2:Landroid/widget/Button;

    .line 148
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->backButton:Landroid/widget/ImageButton;

    .line 149
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 150
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->nextbtn:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->layout_country:Landroid/widget/LinearLayout;

    .line 152
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->title:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

    .line 154
    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    .line 155
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    .line 156
    const v0, 0x7f0a00c2

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->tv_name:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->tv_code:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->radioButton:Landroid/widget/LinearLayout;

    .line 159
    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->ib_radioButton:Landroid/widget/ImageButton;

    .line 161
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->title:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 164
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 362
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/RegistFirstActivity$3;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity$3;-><init>(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->mainHandler:Landroid/os/Handler;

    .line 397
    return-void
.end method

.method private isChinese(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 268
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 269
    .local v0, "bytes":[B
    array-length v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v3, v4, :cond_0

    .line 278
    .end local v0    # "bytes":[B
    :goto_0
    return v2

    .line 272
    .restart local v0    # "bytes":[B
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public doMobileExistErr(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 424
    return-void
.end method

.method public doMobileExistSucc(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 404
    if-eqz p1, :cond_1

    .line 406
    :try_start_0
    invoke-static {p1}, Lcom/cat/parase/LoginParser;->Loginparaser(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    .local v0, "result":Ljava/lang/Object;
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 409
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 419
    :goto_0
    return-void

    .line 411
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->goIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 168
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 169
    if-eqz p3, :cond_1

    .line 170
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->code:Ljava/lang/String;

    .line 171
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "countrycn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->countrycn:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->countrycn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->tv_code:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->countrycn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/pubinfo/izhejiang/controller/RegistFirstFun;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    :cond_1
    return-void

    .line 179
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/controller/RegistFirstFun;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f03002b

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->setContentView(I)V

    .line 55
    sput-object p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->registfirst_instance:Lcom/pubinfo/izhejiang/RegistFirstActivity;

    .line 56
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 57
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 58
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 57
    iput-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 60
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 60
    iput-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 62
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->init()V

    .line 63
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->initialHandler()V

    .line 65
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->ib_radioButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->drawable_dfu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v0, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/RegistFirstActivity$2;-><init>(Lcom/pubinfo/izhejiang/RegistFirstActivity;)V

    .line 126
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->et_password2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->etphoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->layout_country:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->confirmButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->radioButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistFirstActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method
