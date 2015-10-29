.class public Lcom/pubinfo/izhejiang/PersonInfomationActivity;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "PersonInfomationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThread;,
        Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThreadUpload;
    }
.end annotation


# static fields
.field public static final PHOTO_REQUEST_CAREMA:I = 0x1

.field public static final PHOTO_REQUEST_CUT:I = 0x3

.field public static final PHOTO_REQUEST_GALLERY:I = 0x2

.field public static final USER_INFOMATION:I = 0x4


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field confirmButton:Landroid/widget/LinearLayout;

.field countrycode:Ljava/lang/String;

.field edit2:Landroid/widget/RelativeLayout;

.field email:Ljava/lang/String;

.field face:Ljava/lang/String;

.field faceurl:Ljava/lang/String;

.field private itemsOnClick:Landroid/view/View$OnClickListener;

.field private itemsOnClick2:Landroid/view/View$OnClickListener;

.field loading_text:Landroid/widget/TextView;

.field private mainHandler:Landroid/os/Handler;

.field memberid:Ljava/lang/String;

.field menuWindow:Lcom/cat/tools/SelectPicPopupWindow;

.field nameTV:Landroid/widget/TextView;

.field nick:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field phoneTV:Landroid/widget/TextView;

.field relativelayout1:Landroid/widget/RelativeLayout;

.field tempFile:Ljava/io/File;

.field title:Landroid/widget/TextView;

.field zhuxiaoButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    .line 295
    new-instance v0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity$1;-><init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->itemsOnClick2:Landroid/view/View$OnClickListener;

    .line 309
    new-instance v0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$2;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity$2;-><init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->itemsOnClick:Landroid/view/View$OnClickListener;

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public static CheckIsEmail(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strEmail"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string v2, "^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    .line 328
    .local v2, "strPattern":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 329
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 330
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method private Commit()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v5, 0x0

    .line 452
    const-string v4, "LoginSucess"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 453
    .local v13, "sharedata3":Landroid/content/SharedPreferences;
    const-string v4, "username"

    const-string v5, ""

    invoke-interface {v13, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "phone":Ljava/lang/String;
    const-string v4, "memberid"

    const-string v5, ""

    invoke-interface {v13, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "memberid":Ljava/lang/String;
    new-instance v1, Lcom/cat/tools/AWLocalInterfaces;

    invoke-direct {v1}, Lcom/cat/tools/AWLocalInterfaces;-><init>()V

    .line 457
    .local v1, "aw":Lcom/cat/tools/AWLocalInterfaces;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    sget-object v5, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 459
    const v6, 0x7f060001

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f060002

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 457
    invoke-virtual/range {v1 .. v8}, Lcom/cat/tools/AWLocalInterfaces;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 462
    .local v9, "content":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 464
    :try_start_0
    invoke-virtual {v1, v9}, Lcom/cat/tools/AWLocalInterfaces;->parseContent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 465
    .local v11, "result":Ljava/lang/Object;
    const-string v4, "OK"

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 466
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v4

    check-cast v11, Ljava/util/List;

    .end local v11    # "result":Ljava/lang/Object;
    invoke-virtual {v4, v11}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    :goto_0
    return-void

    .line 469
    .restart local v11    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    move-object v14, v0

    .line 470
    .local v14, "uploaddata":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UpLoadData;>;"
    const-string v4, "MyFragment"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 471
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 473
    .local v12, "sharedata2":Landroid/content/SharedPreferences$Editor;
    const-string v5, "face"

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cat/data/UpLoadData;

    invoke-virtual {v4}, Lcom/cat/data/UpLoadData;->getFaceimg()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    .end local v11    # "result":Ljava/lang/Object;
    .end local v12    # "sharedata2":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "uploaddata":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UpLoadData;>;"
    :catch_0
    move-exception v10

    .line 478
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 481
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->Commit()V

    return-void
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->itemsOnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private crop(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    .line 581
    const-class v1, Lcom/cat/picture/ShowImageActivity;

    .line 580
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 586
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 179
    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->title:Landroid/widget/TextView;

    .line 180
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->title:Landroid/widget/TextView;

    const-string v3, "\u6211\u7684"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v2, 0x7f0a00b6

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->phoneTV:Landroid/widget/TextView;

    .line 182
    const v2, 0x7f0a00b7

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->nameTV:Landroid/widget/TextView;

    .line 184
    const v2, 0x7f0a00a5

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->loading_text:Landroid/widget/TextView;

    .line 185
    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->backButton:Landroid/widget/ImageButton;

    .line 186
    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->confirmButton:Landroid/widget/LinearLayout;

    .line 187
    const v2, 0x7f0a006e

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    .line 188
    const v2, 0x7f0a0072

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->edit2:Landroid/widget/RelativeLayout;

    .line 191
    const v2, 0x7f0a00b8

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->zhuxiaoButton:Landroid/widget/Button;

    .line 193
    const-string v2, "LoginSucess"

    invoke-virtual {p0, v2, v4}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, "sharedata3":Landroid/content/SharedPreferences;
    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->phone:Ljava/lang/String;

    .line 195
    const-string v2, "memberid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->memberid:Ljava/lang/String;

    .line 196
    const-string v2, "countrycode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->countrycode:Ljava/lang/String;

    .line 198
    const-string v2, "MyFragment"

    invoke-virtual {p0, v2, v4}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    .local v0, "sharedata":Landroid/content/SharedPreferences;
    const-string v2, "face"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->face:Ljava/lang/String;

    .line 200
    const-string v2, "nick"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->nick:Ljava/lang/String;

    .line 201
    const-string v2, "email"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->email:Ljava/lang/String;

    .line 202
    const-string v2, "faceurl"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->faceurl:Ljava/lang/String;

    .line 204
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->nick:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->nick:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->nameTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->email:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->email:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->chosePhoto()V

    .line 250
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->phoneTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method private initialHandler()V
    .locals 2

    .prologue
    .line 336
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;

    invoke-direct {v1, p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity$4;-><init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;

    .line 397
    return-void
.end method

.method public static readImage(Ljava/lang/String;)[B
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 602
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 605
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 606
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 609
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 610
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 613
    .local v1, "inStream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->readStream(Ljava/io/InputStream;)[B

    move-result-object v3

    return-object v3
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 620
    .local v2, "outSteam":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 621
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 622
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 625
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 626
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 627
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 623
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public camera()V
    .locals 5

    .prologue
    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->CreatFileSdcard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    .line 419
    sget-object v4, Lcom/cat/tools/APPConf;->PHOTO_FILE_NAME:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iput-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->tempFile:Ljava/io/File;

    .line 420
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 421
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->tempFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 433
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 436
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 437
    return-void

    .line 424
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public chosePhoto()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 255
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, "oleFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 262
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x3

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    sget-object v6, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 263
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "pathString":Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 267
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v5, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "pathString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public gallery()V
    .locals 2

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 408
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 488
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 489
    if-ne p2, v5, :cond_2

    .line 491
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 492
    .local v2, "uri":Landroid/net/Uri;
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->crop(Landroid/net/Uri;Ljava/lang/String;)V

    .line 557
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 558
    :cond_1
    return-void

    .line 494
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    .line 495
    if-ne p2, v5, :cond_3

    .line 497
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->tempFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->crop(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 500
    new-instance v4, Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThreadUpload;

    invoke-direct {v4, p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThreadUpload;-><init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThreadUpload;->start()V

    goto :goto_0

    .line 537
    :cond_4
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 538
    if-eqz p3, :cond_1

    .line 539
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "tag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "userinfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, "userinfo":Ljava/lang/String;
    const-string v4, "MyFragment"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 542
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 543
    .local v0, "sharedata2":Landroid/content/SharedPreferences$Editor;
    const-string v4, "nick"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 544
    iget-object v4, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    const-string v4, "nick"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 547
    :cond_5
    const-string v4, "email"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v1, 0x7f030025

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->setContentView(I)V

    .line 85
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 86
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->ll_pageInnerLoading:Landroid/widget/LinearLayout;

    .line 87
    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 86
    iput-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 88
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 89
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->iv_pageInnerLoading:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 89
    iput-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 91
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->initialHandler()V

    .line 92
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->init()V

    .line 94
    new-instance v0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;-><init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V

    .line 169
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->edit2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->relativelayout1:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->zhuxiaoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->confirmButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 591
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 592
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->finish()V

    .line 595
    const/4 v0, 0x1

    .line 597
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
