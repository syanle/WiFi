.class Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;
.super Ljava/lang/Thread;
.source "DoAuthenticationLogoffOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_AuthenticationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

.field private final synthetic val$app_id:Ljava/lang/String;

.field private final synthetic val$appversion:Ljava/lang/String;

.field private final synthetic val$phoneNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iput-object p2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    iput-object p3, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appversion:Ljava/lang/String;

    iput-object p4, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$app_id:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;)Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 46

    .prologue
    .line 98
    const-string v34, "iWiFiSDK|Authentication|Global_AuthenticationRequest"

    .line 99
    .local v34, "TAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "username="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & appversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appversion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | authentication start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v34

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 102
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v1

    const-string v2, "http://www.baidu.com"

    invoke-virtual {v1, v2}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->sync_getPortalUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    .line 106
    .local v40, "mPortalResult":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v40, v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v42

    .line 108
    .local v42, "sendmsg":Landroid/os/Message;
    const/4 v1, 0x1

    aget-object v1, v40, v1

    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x0

    move-object/from16 v0, v42

    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v1

    const-string v2, "OK"

    const-string v3, "Already onLine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v42

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sync_getPortalUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Already onLine"

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 259
    .end local v42    # "sendmsg":Landroid/os/Message;
    :goto_1
    return-void

    .line 114
    .restart local v42    # "sendmsg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, v42

    iput v1, v0, Landroid/os/Message;->what:I

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v1

    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "NetWork Error: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    aget-object v9, v40, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v42

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sync_getPortalUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network error:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, v40, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v42    # "sendmsg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    aget-object v39, v40, v1

    .line 125
    .local v39, "mPortal":Ljava/lang/String;
    const-string v1, "dev_id="

    move-object/from16 v0, v39

    invoke-static {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v7, ""

    .line 126
    .local v7, "dev_id":Ljava/lang/String;
    :goto_2
    const-string v1, "platform_code="

    move-object/from16 v0, v39

    invoke-static {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, "platform_code":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 128
    const-string v10, ""

    .line 129
    :cond_2
    const-string v1, "ac_name="

    move-object/from16 v0, v39

    invoke-static {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v8, ""

    .line 133
    .local v8, "ac_name":Ljava/lang/String;
    :goto_3
    invoke-static/range {v39 .. v39}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, "mPortalUrl":Ljava/lang/String;
    new-instance v41, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v41

    invoke-direct {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    .line 137
    .local v41, "sdkMethods":Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
    invoke-virtual/range {v41 .. v41}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "ter_mac":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "ter_ip":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getIMEICode()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "ter_imei":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appversion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$app_id:Ljava/lang/String;

    invoke-virtual/range {v1 .. v11}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->sync_getTempToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    .line 145
    .local v45, "token_res":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v45, v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    aget-object v1, v45, v1

    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v42

    .line 147
    .restart local v42    # "sendmsg":Landroid/os/Message;
    const/4 v1, 0x1

    move-object/from16 v0, v42

    iput v1, v0, Landroid/os/Message;->what:I

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v12

    const-string v13, "FAIL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get Token Failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v45, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v12 .. v22}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v42

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_1

    .line 125
    .end local v4    # "ter_mac":Ljava/lang/String;
    .end local v5    # "ter_ip":Ljava/lang/String;
    .end local v6    # "ter_imei":Ljava/lang/String;
    .end local v7    # "dev_id":Ljava/lang/String;
    .end local v8    # "ac_name":Ljava/lang/String;
    .end local v10    # "platform_code":Ljava/lang/String;
    .end local v11    # "mPortalUrl":Ljava/lang/String;
    .end local v41    # "sdkMethods":Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
    .end local v42    # "sendmsg":Landroid/os/Message;
    .end local v45    # "token_res":[Ljava/lang/String;
    :cond_3
    const-string v1, "dev_id="

    move-object/from16 v0, v39

    invoke-static {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 129
    .restart local v7    # "dev_id":Ljava/lang/String;
    .restart local v10    # "platform_code":Ljava/lang/String;
    :cond_4
    const-string v1, "ac_name="

    move-object/from16 v0, v39

    invoke-static {v0, v1}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 154
    .restart local v4    # "ter_mac":Ljava/lang/String;
    .restart local v5    # "ter_ip":Ljava/lang/String;
    .restart local v6    # "ter_imei":Ljava/lang/String;
    .restart local v8    # "ac_name":Ljava/lang/String;
    .restart local v11    # "mPortalUrl":Ljava/lang/String;
    .restart local v41    # "sdkMethods":Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
    .restart local v45    # "token_res":[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    aget-object v15, v45, v1

    .line 155
    .local v15, "token":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v26, v45, v1

    .line 156
    .local v26, "auth_type":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, v45, v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 157
    const/4 v1, 0x2

    aget-object v10, v45, v1

    .line 161
    :cond_6
    const-string v1, "AP_AUTH"

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 164
    const-string v1, "AP Authentication"

    move-object/from16 v0, v34

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v42

    .line 166
    .restart local v42    # "sendmsg":Landroid/os/Message;
    invoke-virtual/range {v41 .. v41}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDhcpGatewayAddr()Ljava/lang/String;

    move-result-object v13

    .line 167
    .local v13, "ipGateway":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    const-string v16, "android"

    const-string v18, "http://www.baidu.com"

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v18}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AP_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    move-result-object v38

    .line 169
    .local v38, "ap_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    move-object/from16 v0, v38

    iget-boolean v1, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_4
    move-object/from16 v0, v42

    iput v1, v0, Landroid/os/Message;->what:I

    .line 170
    move-object/from16 v0, v38

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v42

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    .end local v13    # "ipGateway":Ljava/lang/String;
    .end local v26    # "auth_type":Ljava/lang/String;
    .end local v38    # "ap_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .end local v42    # "sendmsg":Landroid/os/Message;
    :goto_5
    const-string v1, "Authenticaton exit"

    move-object/from16 v0, v34

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_1

    .line 169
    .restart local v13    # "ipGateway":Ljava/lang/String;
    .restart local v26    # "auth_type":Ljava/lang/String;
    .restart local v38    # "ap_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .restart local v42    # "sendmsg":Landroid/os/Message;
    :cond_7
    const/4 v1, 0x1

    goto :goto_4

    .line 173
    .end local v13    # "ipGateway":Ljava/lang/String;
    .end local v38    # "ap_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .end local v42    # "sendmsg":Landroid/os/Message;
    :cond_8
    const-string v1, "AAA_AUTH"

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 175
    const-string v1, "AAA Authentication"

    move-object/from16 v0, v34

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v35, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;-><init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;Ljava/lang/String;)V

    .line 204
    const/4 v3, 0x0

    .line 176
    move-object/from16 v0, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;)V

    .line 205
    .local v35, "aaa_authen":Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
    const/4 v1, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v1}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->SetWebViewStatus(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v1, v15}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->doAunthenticaterRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 208
    .end local v35    # "aaa_authen":Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
    :cond_9
    const-string v1, "AC_AUTH"

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v42

    .line 210
    .restart local v42    # "sendmsg":Landroid/os/Message;
    const-string v1, "AC Authentication"

    move-object/from16 v0, v34

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v1, "http://"

    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 214
    .local v37, "ac_split_portalUrl":[Ljava/lang/String;
    move-object/from16 v0, v37

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    .line 215
    const/4 v1, 0x1

    aget-object v1, v37, v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    const-string v22, ""

    .line 218
    .local v22, "ac_portalURl":Ljava/lang/String;
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v15

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v22}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AC_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    move-result-object v36

    .line 231
    .local v36, "ac_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    move-object/from16 v0, v36

    iget-boolean v1, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    :goto_7
    move-object/from16 v0, v42

    iput v1, v0, Landroid/os/Message;->what:I

    .line 232
    move-object/from16 v0, v36

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v42

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 215
    .end local v22    # "ac_portalURl":Ljava/lang/String;
    .end local v36    # "ac_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    :cond_a
    const/4 v1, 0x1

    aget-object v1, v37, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v37, v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    goto :goto_6

    .line 217
    :cond_b
    const/4 v1, 0x0

    aget-object v1, v37, v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    const-string v22, ""

    .restart local v22    # "ac_portalURl":Ljava/lang/String;
    :goto_8
    goto :goto_6

    .end local v22    # "ac_portalURl":Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    aget-object v1, v37, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v37, v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    .line 231
    .restart local v22    # "ac_portalURl":Ljava/lang/String;
    .restart local v36    # "ac_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    :cond_d
    const/4 v1, 0x1

    goto :goto_7

    .line 236
    .end local v22    # "ac_portalURl":Ljava/lang/String;
    .end local v36    # "ac_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .end local v37    # "ac_split_portalUrl":[Ljava/lang/String;
    .end local v42    # "sendmsg":Landroid/os/Message;
    :cond_e
    const-string v1, "THIRD_AUTH"

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 238
    const-string v1, "?"

    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const-string v43, ""

    .line 240
    .local v43, "third_redirectParam":Ljava/lang/String;
    :goto_9
    const-string v1, "Third Authentication"

    move-object/from16 v0, v34

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v42

    .line 243
    .restart local v42    # "sendmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appversion:Ljava/lang/String;

    move-object/from16 v26, v0

    .end local v26    # "auth_type":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v25, v7

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v15

    move-object/from16 v31, v10

    invoke-virtual/range {v23 .. v32}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    move-result-object v44

    .line 245
    .local v44, "third_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    move-object/from16 v0, v44

    iget-boolean v1, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    :goto_a
    move-object/from16 v0, v42

    iput v1, v0, Landroid/os/Message;->what:I

    .line 246
    move-object/from16 v0, v44

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v42

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 238
    .end local v42    # "sendmsg":Landroid/os/Message;
    .end local v43    # "third_redirectParam":Ljava/lang/String;
    .end local v44    # "third_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .restart local v26    # "auth_type":Ljava/lang/String;
    :cond_f
    const-string v1, "?"

    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v43

    goto :goto_9

    .line 245
    .end local v26    # "auth_type":Ljava/lang/String;
    .restart local v42    # "sendmsg":Landroid/os/Message;
    .restart local v43    # "third_redirectParam":Ljava/lang/String;
    .restart local v44    # "third_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    :cond_10
    const/4 v1, 0x1

    goto :goto_a

    .line 250
    .end local v42    # "sendmsg":Landroid/os/Message;
    .end local v43    # "third_redirectParam":Ljava/lang/String;
    .end local v44    # "third_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .restart local v26    # "auth_type":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v42

    .line 251
    .restart local v42    # "sendmsg":Landroid/os/Message;
    const/4 v1, 0x1

    move-object/from16 v0, v42

    iput v1, v0, Landroid/os/Message;->what:I

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v23

    const-string v24, "FAIL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unkown authen type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v29, ""

    const-string v30, ""

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, ""

    move-object/from16 v27, v7

    move-object/from16 v28, v10

    invoke-virtual/range {v23 .. v33}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v42

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v1, v1, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v42

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v34

    invoke-static {v0, v1}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method
