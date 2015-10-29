.class Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;
.super Ljava/lang/Thread;
.source "DoAuthenticationLogoffOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_LogoffUrlRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

.field private final synthetic val$ac_name:Ljava/lang/String;

.field private final synthetic val$appAuth_type:Ljava/lang/String;

.field private final synthetic val$appkey:Ljava/lang/String;

.field private final synthetic val$logoffUrl:Ljava/lang/String;

.field private final synthetic val$phonenum:Ljava/lang/String;

.field private final synthetic val$platform_code:Ljava/lang/String;

.field private final synthetic val$portalUrl:Ljava/lang/String;

.field private final synthetic val$secret:Ljava/lang/String;

.field private final synthetic val$thirdToken:Ljava/lang/String;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iput-object p2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    iput-object p3, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    iput-object p4, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$thirdToken:Ljava/lang/String;

    iput-object p6, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$ac_name:Ljava/lang/String;

    iput-object p7, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    iput-object p8, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$logoffUrl:Ljava/lang/String;

    iput-object p9, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    iput-object p10, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appkey:Ljava/lang/String;

    iput-object p11, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$secret:Ljava/lang/String;

    .line 352
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 356
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 357
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 359
    const-string v11, "iWiFiSDK|Logoff|Global_LogoffUrlRequest"

    .line 360
    .local v11, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phonenum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & appAuth_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & thirdToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$thirdToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & ac_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$ac_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string v2, " & platform_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & logoffUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$logoffUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & portalUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string v2, " | Logoff Request start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v11, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v1, "AAA_AUTH"

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const-string v1, " AAA Logoff "

    invoke-static {v11, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v12, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v5, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;-><init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)V

    .line 371
    invoke-direct {v12, v1, v2, v5}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;)V

    .line 400
    .local v12, "aaa_authen":Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$logoffUrl:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->doLogOffRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v12    # "aaa_authen":Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
    :goto_0
    const-string v1, " Logoff exit "

    invoke-static {v11, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 491
    return-void

    .line 402
    :cond_0
    const-string v1, "THIRD_AUTH"

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 404
    const-string v1, " Third Logoff "

    invoke-static {v11, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v16

    .line 406
    .local v16, "sendmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 408
    const/4 v1, 0x3

    move-object/from16 v0, v16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 409
    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Third Platform offLine failed because input RedirectParams is null\"}"

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 437
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 414
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 417
    .local v13, "decode_portalUrl":Ljava/lang/String;
    const-string v1, "platform_code="

    .line 416
    invoke-static {v13, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "plt_code":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 419
    const-string v3, ""

    .line 421
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    .line 426
    :cond_3
    new-instance v1, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "ter_ip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v1

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$thirdToken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    .line 432
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appkey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$secret:Ljava/lang/String;

    .line 430
    invoke-virtual/range {v1 .. v9}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    move-result-object v15

    .line 433
    .local v15, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    iget-boolean v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    :goto_2
    move-object/from16 v0, v16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 435
    iget-object v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 434
    :cond_4
    const/4 v1, 0x3

    goto :goto_2

    .line 438
    .end local v3    # "plt_code":Ljava/lang/String;
    .end local v4    # "ter_ip":Ljava/lang/String;
    .end local v13    # "decode_portalUrl":Ljava/lang/String;
    .end local v15    # "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .end local v16    # "sendmsg":Landroid/os/Message;
    :cond_5
    const-string v1, "AC_AUTH"

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "BAS_AUTH"

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "FIT_AP_AUTH"

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "VLAN_AUTH"

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 443
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Global_LogoffUrlRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " AC Logoff "

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v16

    .line 446
    .restart local v16    # "sendmsg":Landroid/os/Message;
    new-instance v1, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    .line 447
    invoke-virtual {v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v4

    .line 449
    .restart local v4    # "ter_ip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v5

    .line 450
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$token:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$ac_name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$logoffUrl:Ljava/lang/String;

    move-object v9, v4

    .line 449
    invoke-virtual/range {v5 .. v10}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AC_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    move-result-object v15

    .line 451
    .restart local v15    # "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    iget-boolean v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    :goto_3
    move-object/from16 v0, v16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 453
    iget-object v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 452
    :cond_7
    const/4 v1, 0x3

    goto :goto_3

    .line 456
    .end local v4    # "ter_ip":Ljava/lang/String;
    .end local v15    # "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .end local v16    # "sendmsg":Landroid/os/Message;
    :cond_8
    const-string v1, "AP_AUTH"

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Global_LogoffUrlRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " AP Logoff "

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v16

    .line 461
    .restart local v16    # "sendmsg":Landroid/os/Message;
    new-instance v1, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    .line 462
    invoke-virtual {v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDhcpGatewayAddr()Ljava/lang/String;

    move-result-object v14

    .line 464
    .local v14, "ipGateway":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v1

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$token:Ljava/lang/String;

    .line 464
    invoke-virtual {v1, v14, v2, v5}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AP_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    move-result-object v15

    .line 466
    .restart local v15    # "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    iget-boolean v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    :goto_4
    move-object/from16 v0, v16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 468
    iget-object v1, v15, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 467
    :cond_9
    const/4 v1, 0x3

    goto :goto_4

    .line 472
    .end local v14    # "ipGateway":Ljava/lang/String;
    .end local v15    # "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .end local v16    # "sendmsg":Landroid/os/Message;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v16

    .line 473
    .restart local v16    # "sendmsg":Landroid/os/Message;
    const/4 v1, 0x3

    move-object/from16 v0, v16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 474
    const-string v1, "AP_AUTH"

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"This appAuthen_type don\'t need logoff operation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 484
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Logoff error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 480
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"result\":\"FAIL\",\"message\":\"Unkown appAuthen_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_5
.end method
