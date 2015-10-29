.class Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;
.super Landroid/os/Handler;
.source "LoadingFun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/controller/LoadingFun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/controller/LoadingFun;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    .line 241
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;)Lcom/pubinfo/freewifialliance/controller/LoadingFun;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f070002

    .line 245
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 400
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    iget-object v9, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    iget-object v9, v9, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->SP_FIRST:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 292
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    iget-object v8, v8, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->ST_FIRST:Ljava/lang/String;

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "typeString":Ljava/lang/String;
    const-string v8, "yes"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 294
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    .line 295
    const-class v11, Lcom/pubinfo/freewifialliance/view/CenterPage;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-virtual {v8, v9}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->startActivity(Landroid/content/Intent;)V

    .line 304
    :goto_1
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    invoke-virtual {v8}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->finish()V

    goto :goto_0

    .line 299
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 300
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    iget-object v8, v8, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->ST_FIRST:Ljava/lang/String;

    const-string v9, "yes"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    new-instance v9, Landroid/content/Intent;

    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    const-class v11, Lcom/pubinfo/freewifialliance/view/UserIntroduce;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v9}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 334
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "typeString":Ljava/lang/String;
    :pswitch_2
    new-instance v6, Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    invoke-direct {v6, v8, v9}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;-><init>(Landroid/content/Context;I)V

    .line 336
    .local v6, "wifiDialog1":Lcom/pubinfo/wifi_core/core/view/WifiDialog;
    new-instance v8, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$1;

    invoke-direct {v8, p0, v6}, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$1;-><init>(Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;Lcom/pubinfo/wifi_core/core/view/WifiDialog;)V

    invoke-virtual {v6, v8}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setOnWatchClickListener(Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;)V

    .line 349
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    iget-object v8, v8, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->introfomation:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setPoint(Ljava/lang/String;)V

    .line 350
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    iget v8, v8, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->w:I

    invoke-virtual {v6, v8}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setCanceBtn(I)V

    .line 351
    invoke-virtual {v6}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->show()V

    goto :goto_0

    .line 355
    .end local v6    # "wifiDialog1":Lcom/pubinfo/wifi_core/core/view/WifiDialog;
    :pswitch_3
    new-instance v7, Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    invoke-direct {v7, v8, v9}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;-><init>(Landroid/content/Context;I)V

    .line 358
    .local v7, "wifiDialog2":Lcom/pubinfo/wifi_core/core/view/WifiDialog;
    new-instance v8, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;

    invoke-direct {v8, p0, v7}, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1$2;-><init>(Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;Lcom/pubinfo/wifi_core/core/view/WifiDialog;)V

    invoke-virtual {v7, v8}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setOnWatchClickListener(Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;)V

    .line 371
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    iget-object v8, v8, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->introfomation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setPoint(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v7}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->show()V

    goto/16 :goto_0

    .line 377
    .end local v7    # "wifiDialog2":Lcom/pubinfo/wifi_core/core/view/WifiDialog;
    :pswitch_4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "chmod 755 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    # getter for: Lcom/pubinfo/freewifialliance/controller/LoadingFun;->file:Ljava/io/File;
    invoke-static {v10}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->access$0(Lcom/pubinfo/freewifialliance/controller/LoadingFun;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    # getter for: Lcom/pubinfo/freewifialliance/controller/LoadingFun;->file:Ljava/io/File;
    invoke-static {v8}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->access$0(Lcom/pubinfo/freewifialliance/controller/LoadingFun;)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 384
    const-string v9, "application/vnd.android.package-archive"

    .line 383
    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    invoke-virtual {v8, v2}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->startActivity(Landroid/content/Intent;)V

    .line 386
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    invoke-virtual {v8}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->finish()V

    goto/16 :goto_0

    .line 378
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 390
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    const-class v9, Lcom/pubinfo/freewifialliance/view/CenterPage;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v4, "tointent":Landroid/content/Intent;
    const-string v8, "jump"

    const-string v9, "yes"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    invoke-virtual {v8, v4}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->startActivity(Landroid/content/Intent;)V

    .line 395
    iget-object v8, p0, Lcom/pubinfo/freewifialliance/controller/LoadingFun$1;->this$0:Lcom/pubinfo/freewifialliance/controller/LoadingFun;

    invoke-virtual {v8}, Lcom/pubinfo/freewifialliance/controller/LoadingFun;->finish()V

    goto/16 :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
