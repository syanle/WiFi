.class Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;
.super Ljava/lang/Thread;
.source "DoAuthenticationLogoffOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_LogoffUrlRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

.field private final synthetic val$ac_name:Ljava/lang/String;

.field private final synthetic val$appAuth_type:Ljava/lang/String;

.field private final synthetic val$logoffUrl:Ljava/lang/String;

.field private final synthetic val$phonenum:Ljava/lang/String;

.field private final synthetic val$platform_code:Ljava/lang/String;

.field private final synthetic val$portalUrl:Ljava/lang/String;

.field private final synthetic val$thirdToken:Ljava/lang/String;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 287
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v12, 0x2

    const/4 v13, 0x3

    .line 291
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 292
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 294
    const-string v7, "iWiFiSDK|Logoff|Global_LogoffUrlRequest"

    .line 296
    .local v7, "TAG":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "phonenum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string v1, " & appAuth_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string v1, " & token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    const-string v1, " & thirdToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$thirdToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    const-string v1, " & ac_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$ac_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    const-string v1, " & platform_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string v1, " & logoffUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$logoffUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    const-string v1, " & portalUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    const-string v1, " | Logoff Request start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v7, v0}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "AAA_AUTH"

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, " AAA Logoff "

    invoke-static {v7, v0}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v8, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;

    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v4, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;

    invoke-direct {v4, p0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3$1;-><init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;)V

    invoke-direct {v8, v0, v1, v4}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;)V

    .line 333
    .local v8, "aaa_authen":Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$logoffUrl:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->doLogOffRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .end local v8    # "aaa_authen":Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
    :goto_0
    const-string v0, " Logoff exit "

    invoke-static {v7, v0}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 388
    return-void

    .line 335
    :cond_0
    const-string v0, "THIRD_AUTH"

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 336
    const-string v0, " Third Logoff "

    invoke-static {v7, v0}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 338
    .local v11, "sendmsg":Landroid/os/Message;
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 340
    iput v13, v11, Landroid/os/Message;->what:I

    .line 341
    const-string v0, "{\"result\":\"FAIL\",\"message\":\"Third Platform offLine failed because input RedirectParams is null\"}"

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    :goto_1
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 345
    .local v9, "decode_portalUrl":Ljava/lang/String;
    const-string v0, "platform_code="

    invoke-static {v9, v0}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "plt_code":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 347
    const-string v2, ""

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    iget-object v2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$platform_code:Ljava/lang/String;

    .line 353
    :cond_3
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "ter_ip":Ljava/lang/String;
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$phonenum:Ljava/lang/String;

    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$token:Ljava/lang/String;

    iget-object v5, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$thirdToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$portalUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    move-result-object v10

    .line 356
    .local v10, "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    iget-boolean v0, v10, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    if-eqz v0, :cond_4

    move v0, v12

    :goto_2
    iput v0, v11, Landroid/os/Message;->what:I

    .line 357
    iget-object v0, v10, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v0, v13

    .line 356
    goto :goto_2

    .line 361
    .end local v2    # "plt_code":Ljava/lang/String;
    .end local v3    # "ter_ip":Ljava/lang/String;
    .end local v9    # "decode_portalUrl":Ljava/lang/String;
    .end local v10    # "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .end local v11    # "sendmsg":Landroid/os/Message;
    :cond_5
    const-string v0, "AC_AUTH"

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Global_LogoffUrlRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " AC Logoff "

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 365
    .restart local v11    # "sendmsg":Landroid/os/Message;
    new-instance v0, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 367
    .restart local v3    # "ter_ip":Ljava/lang/String;
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v0}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$ac_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$logoffUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AC_sync_LogoffReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;

    move-result-object v10

    .line 368
    .restart local v10    # "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    iget-boolean v0, v10, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_status:Z

    if-eqz v0, :cond_6

    :goto_3
    iput v12, v11, Landroid/os/Message;->what:I

    .line 369
    iget-object v0, v10, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->logoff_resultInfo:Ljava/lang/String;

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_6
    move v12, v13

    .line 368
    goto :goto_3

    .line 373
    .end local v3    # "ter_ip":Ljava/lang/String;
    .end local v10    # "result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
    .end local v11    # "sendmsg":Landroid/os/Message;
    :cond_7
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 374
    .restart local v11    # "sendmsg":Landroid/os/Message;
    iput v13, v11, Landroid/os/Message;->what:I

    .line 375
    const-string v0, "AP_AUTH"

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\"FAIL\",\"message\":\"This appAuthen_type don\'t need logoff operation : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    :goto_4
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Logoff error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 379
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"result\":\"FAIL\",\"message\":\"Unkown appAuthen_type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$3;->val$appAuth_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4
.end method
