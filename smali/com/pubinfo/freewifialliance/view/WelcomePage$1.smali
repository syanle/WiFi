.class Lcom/pubinfo/freewifialliance/view/WelcomePage$1;
.super Ljava/lang/Object;
.source "WelcomePage.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/WelcomePage;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/WelcomePage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 419
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 503
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 421
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 422
    .local v0, "bundl":Landroid/os/Bundle;
    const-string v10, "introfomation"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "intro":Ljava/lang/String;
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    const-string v11, "downloadUrl"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/pubinfo/freewifialliance/view/WelcomePage;->downloadurl:Ljava/lang/String;

    .line 424
    const-string v10, "update_grade"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "update_grade":Ljava/lang/String;
    const-string v10, "version_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "version_name":Ljava/lang/String;
    const-string v10, "version_code"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 428
    .local v8, "version_code":I
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v11, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v11, v11, Lcom/pubinfo/freewifialliance/view/WelcomePage;->downloadurl:Ljava/lang/String;

    .line 429
    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v12, v12, Lcom/pubinfo/freewifialliance/view/WelcomePage;->downloadurl:Ljava/lang/String;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    .line 430
    iget-object v13, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v13, v13, Lcom/pubinfo/freewifialliance/view/WelcomePage;->downloadurl:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    .line 428
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/pubinfo/freewifialliance/view/WelcomePage;->fileName:Ljava/lang/String;

    .line 431
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    const-string v11, "FileName"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 432
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 433
    .local v6, "sharedata":Landroid/content/SharedPreferences$Editor;
    const-string v10, "item"

    iget-object v11, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v11, v11, Lcom/pubinfo/freewifialliance/view/WelcomePage;->fileName:Ljava/lang/String;

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    const-string v10, "intro"

    invoke-interface {v6, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    const-string v10, "version_name"

    invoke-interface {v6, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    const-string v10, "update_grade"

    invoke-interface {v6, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 437
    const-string v10, "version_code"

    invoke-interface {v6, v10, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 442
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    .line 443
    const-string v13, "AiWifi.apk"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    iput-object v11, v10, Lcom/pubinfo/freewifialliance/view/WelcomePage;->file:Ljava/io/File;

    .line 444
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v10, v10, Lcom/pubinfo/freewifialliance/view/WelcomePage;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 446
    :try_start_0
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v10, v10, Lcom/pubinfo/freewifialliance/view/WelcomePage;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    invoke-virtual {v10}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->Beginning()V

    goto/16 :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 471
    .end local v0    # "bundl":Landroid/os/Bundle;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "intro":Ljava/lang/String;
    .end local v6    # "sharedata":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "update_grade":Ljava/lang/String;
    .end local v8    # "version_code":I
    .end local v9    # "version_name":Ljava/lang/String;
    :sswitch_1
    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 472
    :catch_1
    move-exception v1

    .line 473
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 477
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :sswitch_2
    iget v10, p1, Landroid/os/Message;->arg1:I

    sput v10, Lcom/pubinfo/freewifialliance/view/WelcomePage;->loading_process:I

    goto/16 :goto_0

    .line 481
    :sswitch_3
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "chmod 755 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v12, v12, Lcom/pubinfo/freewifialliance/view/WelcomePage;->file:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 485
    :goto_2
    iget-object v10, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$1;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    .line 486
    const-string v11, "down"

    const/4 v12, 0x0

    .line 485
    invoke-virtual {v10, v11, v12}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 487
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 488
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "done"

    const-string v11, "y"

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 489
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 482
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v1

    .line 483
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 497
    .end local v1    # "e":Ljava/io/IOException;
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "error"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "error":Ljava/lang/String;
    goto/16 :goto_0

    .line 419
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_4
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xabcd006 -> :sswitch_1
        0xabcd00a -> :sswitch_0
    .end sparse-switch
.end method
