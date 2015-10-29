.class Lcom/pubinfo/izhejiang/ConnectActivity$6;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/ConnectActivity$6;)Lcom/pubinfo/izhejiang/ConnectActivity;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 631
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 764
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 634
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->showMsgToast(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :pswitch_1
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    .line 639
    invoke-virtual {v1}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v8

    .line 640
    .local v8, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 641
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lt v12, v1, :cond_1

    .line 646
    .end local v12    # "i":I
    :cond_0
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    goto :goto_0

    .line 642
    .restart local v12    # "i":I
    :cond_1
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/PublicError;

    invoke-virtual {v1}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 643
    .local v11, "errormessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v1, v11}, Lcom/pubinfo/izhejiang/ConnectActivity;->showMsgToast(Ljava/lang/String;)V

    .line 641
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 674
    .end local v8    # "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .end local v11    # "errormessage":Ljava/lang/String;
    .end local v12    # "i":I
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidconnect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 675
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidconnect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 676
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 677
    const-string v2, "ConnectTime"

    const/4 v3, 0x0

    .line 676
    invoke-virtual {v1, v2, v3}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 678
    .local v14, "sharedata":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const-string v2, "startTime"

    const-wide/16 v3, 0x0

    invoke-interface {v14, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->startTime:J

    .line 679
    const-string v1, "ssid"

    const-string v2, ""

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 680
    .local v15, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-wide v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 681
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->tv2:Landroid/widget/TextView;

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$8(Lcom/pubinfo/izhejiang/ConnectActivity;Landroid/os/Handler;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->startTime:J

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 685
    const-string v2, "ConnectTime"

    const/4 v3, 0x0

    .line 684
    invoke-virtual {v1, v2, v3}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 686
    .local v13, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 687
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "startTime"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-wide v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->startTime:J

    invoke-interface {v10, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 688
    const-string v1, "ssid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 689
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 690
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v2, Lcom/pubinfo/izhejiang/ConnectActivity$6$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pubinfo/izhejiang/ConnectActivity$6$1;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity$6;)V

    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$11(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/Runnable;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->mTicker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$10(Lcom/pubinfo/izhejiang/ConnectActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 744
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v14    # "sharedata":Landroid/content/SharedPreferences;
    .end local v15    # "ssid":Ljava/lang/String;
    :goto_2
    :pswitch_3
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    .line 745
    invoke-virtual {v1}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v9

    .line 746
    .local v9, "arryerror2":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 747
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/PublicError;

    invoke-virtual {v1}, Lcom/cat/data/PublicError;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/PublicError;

    invoke-virtual {v1}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->showMsgToast(Ljava/lang/String;)V

    .line 751
    :cond_4
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cat/data/ComData;->setpError(Ljava/util/List;)V

    goto/16 :goto_0

    .line 704
    .end local v9    # "arryerror2":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    .restart local v14    # "sharedata":Landroid/content/SharedPreferences;
    .restart local v15    # "ssid":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$8(Lcom/pubinfo/izhejiang/ConnectActivity;Landroid/os/Handler;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v2, Lcom/pubinfo/izhejiang/ConnectActivity$6$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pubinfo/izhejiang/ConnectActivity$6$2;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity$6;)V

    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$11(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/Runnable;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->mTicker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$10(Lcom/pubinfo/izhejiang/ConnectActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 719
    .end local v14    # "sharedata":Landroid/content/SharedPreferences;
    .end local v15    # "ssid":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->tv2:Landroid/widget/TextView;

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$8(Lcom/pubinfo/izhejiang/ConnectActivity;Landroid/os/Handler;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->startTime:J

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 723
    const-string v2, "ConnectTime"

    const/4 v3, 0x0

    .line 722
    invoke-virtual {v1, v2, v3}, Lcom/pubinfo/izhejiang/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 724
    .restart local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 725
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "startTime"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-wide v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->startTime:J

    invoke-interface {v10, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 726
    const-string v1, "ssid"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 727
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 728
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v2, Lcom/pubinfo/izhejiang/ConnectActivity$6$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pubinfo/izhejiang/ConnectActivity$6$3;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity$6;)V

    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$11(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/Runnable;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->mTicker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$10(Lcom/pubinfo/izhejiang/ConnectActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2

    .line 755
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$12(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const v2, 0x7f020029

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const v5, 0x7f060017

    invoke-virtual {v4, v5}, Lcom/pubinfo/izhejiang/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/ConnectActivity;->type:Ljava/lang/String;

    .line 759
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pubinfo/izhejiang/ConnectActivity$6;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/ConnectActivity;->logourl:Ljava/lang/String;

    .line 756
    invoke-virtual/range {v1 .. v7}, Lcom/pubinfo/izhejiang/ConnectActivity;->setStatus(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
