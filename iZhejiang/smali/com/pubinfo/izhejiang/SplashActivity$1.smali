.class Lcom/pubinfo/izhejiang/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/SplashActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    .line 178
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/SplashActivity$1;)Lcom/pubinfo/izhejiang/SplashActivity;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f070002

    .line 182
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 285
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :pswitch_1
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    # invokes: Lcom/pubinfo/izhejiang/SplashActivity;->startMain()V
    invoke-static {v4}, Lcom/pubinfo/izhejiang/SplashActivity;->access$0(Lcom/pubinfo/izhejiang/SplashActivity;)V

    goto :goto_0

    .line 227
    :pswitch_2
    new-instance v2, Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    invoke-direct {v2, v4, v5}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;-><init>(Landroid/content/Context;I)V

    .line 229
    .local v2, "wifiDialog1":Lcom/pubinfo/wifi_core/core/view/WifiDialog;
    new-instance v4, Lcom/pubinfo/izhejiang/SplashActivity$1$1;

    invoke-direct {v4, p0, v2}, Lcom/pubinfo/izhejiang/SplashActivity$1$1;-><init>(Lcom/pubinfo/izhejiang/SplashActivity$1;Lcom/pubinfo/wifi_core/core/view/WifiDialog;)V

    invoke-virtual {v2, v4}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setOnWatchClickListener(Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;)V

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u66f4\u65b0\u901a\u77e5(v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/SplashActivity;->version_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setTitle(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/SplashActivity;->introfomation:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setPoint(Ljava/lang/String;)V

    .line 244
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setCanceBtn(I)V

    .line 245
    invoke-virtual {v2}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->show()V

    goto :goto_0

    .line 249
    .end local v2    # "wifiDialog1":Lcom/pubinfo/wifi_core/core/view/WifiDialog;
    :pswitch_3
    new-instance v3, Lcom/pubinfo/wifi_core/core/view/WifiDialog;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    invoke-direct {v3, v4, v5}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;-><init>(Landroid/content/Context;I)V

    .line 252
    .local v3, "wifiDialog2":Lcom/pubinfo/wifi_core/core/view/WifiDialog;
    new-instance v4, Lcom/pubinfo/izhejiang/SplashActivity$1$2;

    invoke-direct {v4, p0, v3}, Lcom/pubinfo/izhejiang/SplashActivity$1$2;-><init>(Lcom/pubinfo/izhejiang/SplashActivity$1;Lcom/pubinfo/wifi_core/core/view/WifiDialog;)V

    invoke-virtual {v3, v4}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setOnWatchClickListener(Lcom/pubinfo/wifi_core/core/view/WifiDialog$OnWatchClickListener;)V

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u66f4\u65b0\u901a\u77e5(v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    iget-object v5, v5, Lcom/pubinfo/izhejiang/SplashActivity;->version_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setTitle(Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/SplashActivity;->introfomation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->setPoint(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Lcom/pubinfo/wifi_core/core/view/WifiDialog;->show()V

    goto :goto_0

    .line 271
    .end local v3    # "wifiDialog2":Lcom/pubinfo/wifi_core/core/view/WifiDialog;
    :pswitch_4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 755 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    # getter for: Lcom/pubinfo/izhejiang/SplashActivity;->file:Ljava/io/File;
    invoke-static {v6}, Lcom/pubinfo/izhejiang/SplashActivity;->access$1(Lcom/pubinfo/izhejiang/SplashActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    # getter for: Lcom/pubinfo/izhejiang/SplashActivity;->file:Ljava/io/File;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/SplashActivity;->access$1(Lcom/pubinfo/izhejiang/SplashActivity;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 278
    const-string v5, "application/vnd.android.package-archive"

    .line 277
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    invoke-virtual {v4, v1}, Lcom/pubinfo/izhejiang/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 280
    iget-object v4, p0, Lcom/pubinfo/izhejiang/SplashActivity$1;->this$0:Lcom/pubinfo/izhejiang/SplashActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/SplashActivity;->finish()V

    goto/16 :goto_0

    .line 272
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
