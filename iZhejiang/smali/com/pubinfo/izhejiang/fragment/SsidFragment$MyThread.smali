.class public Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;
.super Ljava/lang/Thread;
.source "SsidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 293
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/cat/data/ComData;->getSsidData()Ljava/util/List;

    move-result-object v4

    .line 294
    .local v4, "listssid":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v11, "wifiList2":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 296
    invoke-static {}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getTianyiWifi()Ljava/util/List;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v12, "wifiListchinanet":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 300
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v14, "wifiListunion":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 302
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v13, "wifiListother":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 323
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-lt v3, v15, :cond_3

    .line 378
    :try_start_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 380
    new-instance v15, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$1;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;)V

    .line 379
    invoke-static {v12, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 399
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 401
    new-instance v15, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$2;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;)V

    .line 400
    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 420
    :cond_1
    :goto_2
    :try_start_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 422
    new-instance v15, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread$3;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;)V

    .line 421
    invoke-static {v13, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 440
    :cond_2
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v15, v15, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiListAll:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 441
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lt v2, v15, :cond_d

    .line 444
    const/4 v2, 0x0

    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lt v2, v15, :cond_e

    .line 447
    const/4 v2, 0x0

    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-lt v2, v15, :cond_f

    .line 459
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiListAll:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getNewList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiListAll:Ljava/util/List;

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x9

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 464
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "listssid":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .end local v11    # "wifiList2":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v12    # "wifiListchinanet":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .end local v13    # "wifiListother":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .end local v14    # "wifiListunion":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    :goto_7
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 465
    return-void

    .line 324
    .restart local v3    # "j":I
    .restart local v4    # "listssid":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .restart local v11    # "wifiList2":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v12    # "wifiListchinanet":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .restart local v13    # "wifiListother":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .restart local v14    # "wifiListunion":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    :cond_3
    :try_start_5
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cat/data/SsidData;

    invoke-virtual {v15}, Lcom/cat/data/SsidData;->getNettype()Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "nettype":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cat/data/SsidData;

    invoke-virtual {v15}, Lcom/cat/data/SsidData;->getMac()Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, "mac":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cat/data/SsidData;

    invoke-virtual {v15}, Lcom/cat/data/SsidData;->getLogo()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "logourl":Ljava/lang/String;
    const-string v15, "1"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 329
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lt v2, v15, :cond_7

    .line 343
    .end local v2    # "i":I
    :cond_4
    const-string v15, "2"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 344
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lt v2, v15, :cond_9

    .line 358
    .end local v2    # "i":I
    :cond_5
    const-string v15, "3"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 359
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-lt v2, v15, :cond_b

    .line 323
    .end local v2    # "i":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 330
    .restart local v2    # "i":I
    :cond_7
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 331
    new-instance v8, Lcom/cat/data/SsidData;

    invoke-direct {v8}, Lcom/cat/data/SsidData;-><init>()V

    .line 332
    .local v8, "sd1":Lcom/cat/data/SsidData;
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget v15, v15, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v8, v15}, Lcom/cat/data/SsidData;->setLevel(I)V

    .line 333
    invoke-virtual {v8, v5}, Lcom/cat/data/SsidData;->setLogo(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v8, v6}, Lcom/cat/data/SsidData;->setMac(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v8, v7}, Lcom/cat/data/SsidData;->setNettype(Ljava/lang/String;)V

    .line 336
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/cat/data/SsidData;->setSsid(Ljava/lang/String;)V

    .line 337
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/cat/data/SsidData;->setPassword(I)V

    .line 338
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v8    # "sd1":Lcom/cat/data/SsidData;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 345
    :cond_9
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 346
    new-instance v9, Lcom/cat/data/SsidData;

    invoke-direct {v9}, Lcom/cat/data/SsidData;-><init>()V

    .line 347
    .local v9, "sd2":Lcom/cat/data/SsidData;
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget v15, v15, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v9, v15}, Lcom/cat/data/SsidData;->setLevel(I)V

    .line 348
    invoke-virtual {v9, v5}, Lcom/cat/data/SsidData;->setLogo(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v9, v6}, Lcom/cat/data/SsidData;->setMac(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v9, v7}, Lcom/cat/data/SsidData;->setNettype(Ljava/lang/String;)V

    .line 351
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v15}, Lcom/cat/data/SsidData;->setSsid(Ljava/lang/String;)V

    .line 352
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/cat/data/SsidData;->setPassword(I)V

    .line 353
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v9    # "sd2":Lcom/cat/data/SsidData;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 364
    :cond_b
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 365
    new-instance v10, Lcom/cat/data/SsidData;

    invoke-direct {v10}, Lcom/cat/data/SsidData;-><init>()V

    .line 366
    .local v10, "sd3":Lcom/cat/data/SsidData;
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget v15, v15, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v15}, Lcom/cat/data/SsidData;->setLevel(I)V

    .line 367
    invoke-virtual {v10, v5}, Lcom/cat/data/SsidData;->setLogo(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v10, v6}, Lcom/cat/data/SsidData;->setMac(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v10, v7}, Lcom/cat/data/SsidData;->setNettype(Ljava/lang/String;)V

    .line 370
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v15}, Lcom/cat/data/SsidData;->setSsid(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-object/from16 v16, v0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->checkPassword(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15}, Lcom/cat/data/SsidData;->setPassword(I)V

    .line 372
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v10    # "sd3":Lcom/cat/data/SsidData;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 442
    .end local v5    # "logourl":Ljava/lang/String;
    .end local v6    # "mac":Ljava/lang/String;
    .end local v7    # "nettype":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v0, v15, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiListAll:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cat/data/SsidData;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 445
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v0, v15, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiListAll:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cat/data/SsidData;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 448
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    iget-object v0, v15, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiListAll:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cat/data/SsidData;

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 461
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "listssid":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .end local v11    # "wifiList2":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v12    # "wifiListchinanet":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .end local v13    # "wifiListother":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .end local v14    # "wifiListunion":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$MyThread;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->listHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 436
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "j":I
    .restart local v4    # "listssid":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .restart local v11    # "wifiList2":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v12    # "wifiListchinanet":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .restart local v13    # "wifiListother":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    .restart local v14    # "wifiListunion":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    :catch_1
    move-exception v15

    goto/16 :goto_3

    .line 415
    :catch_2
    move-exception v15

    goto/16 :goto_2

    .line 394
    :catch_3
    move-exception v15

    goto/16 :goto_1
.end method
