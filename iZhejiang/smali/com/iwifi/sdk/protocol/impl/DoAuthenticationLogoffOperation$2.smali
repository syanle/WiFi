.class Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;
.super Ljava/lang/Thread;
.source "DoAuthenticationLogoffOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->Global_AuthenticationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

.field private final synthetic val$app_id:Ljava/lang/String;

.field private final synthetic val$appkey:Ljava/lang/String;

.field private final synthetic val$appversion:Ljava/lang/String;

.field private final synthetic val$phoneNum:Ljava/lang/String;

.field private final synthetic val$secret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iput-object p2, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    iput-object p3, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appversion:Ljava/lang/String;

    iput-object p4, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$app_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appkey:Ljava/lang/String;

    iput-object p6, p0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$secret:Ljava/lang/String;

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
    .locals 54

    .prologue
    .line 98
    const-string v41, "iWiFiSDK|Authentication|Global_AuthenticationRequest"

    .line 99
    .local v41, "TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "username="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " & appversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appversion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | authentication start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    move-object/from16 v0, v41

    invoke-static {v0, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 103
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v2

    .line 106
    const-string v3, "http://www.baidu.com"

    invoke-virtual {v2, v3}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->sync_getPortalUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    .line 108
    .local v47, "mPortalResult":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v47, v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v49

    .line 110
    .local v49, "sendmsg":Landroid/os/Message;
    const/4 v2, 0x1

    aget-object v2, v47, v2

    const-string v3, "200"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x0

    move-object/from16 v0, v49

    iput v2, v0, Landroid/os/Message;->what:I

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v2

    const-string v3, "OK"

    .line 113
    const-string v4, "Already onLine"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 114
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 112
    invoke-virtual/range {v2 .. v13}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v49

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "sync_getPortalUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Already onLine"

    invoke-static {v2, v3}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 329
    .end local v49    # "sendmsg":Landroid/os/Message;
    :goto_1
    return-void

    .line 117
    .restart local v49    # "sendmsg":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, v49

    iput v2, v0, Landroid/os/Message;->what:I

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v2

    const-string v3, "FAIL"

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "NetWork Error: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    aget-object v10, v47, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 120
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 118
    invoke-virtual/range {v2 .. v13}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v49

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "sync_getPortalUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network error:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    const/4 v4, 0x1

    aget-object v4, v47, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Lcom/iwifi/sdk/tools/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v49    # "sendmsg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x1

    aget-object v46, v47, v2

    .line 132
    .local v46, "mPortal":Ljava/lang/String;
    const-string v2, "dev_id="

    move-object/from16 v0, v46

    invoke-static {v0, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    if-nez v2, :cond_3

    .line 132
    const-string v8, ""

    .line 136
    .local v8, "dev_id":Ljava/lang/String;
    :goto_2
    const-string v2, "platform_code="

    move-object/from16 v0, v46

    invoke-static {v0, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, "platform_code":Ljava/lang/String;
    if-nez v11, :cond_2

    .line 138
    const-string v11, ""

    .line 140
    :cond_2
    const-string v2, "ac_name="

    .line 139
    move-object/from16 v0, v46

    invoke-static {v0, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 140
    const-string v9, ""

    .line 145
    .local v9, "ac_name":Ljava/lang/String;
    :goto_3
    invoke-static/range {v46 .. v46}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "mPortalUrl":Ljava/lang/String;
    new-instance v48, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v48

    invoke-direct {v0, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;-><init>(Landroid/content/Context;)V

    .line 149
    .local v48, "sdkMethods":Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
    invoke-virtual/range {v48 .. v48}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "ter_mac":Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "ter_ip":Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getIMEICode()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "ter_imei":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appversion:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$app_id:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appkey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$secret:Ljava/lang/String;

    .line 155
    invoke-virtual/range {v2 .. v14}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->sync_getTempToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v53

    .line 159
    .local v53, "token_res":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v53, v2

    if-eqz v2, :cond_5

    .line 160
    const/4 v2, 0x0

    aget-object v2, v53, v2

    const-string v3, "FAIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v49

    .line 162
    .restart local v49    # "sendmsg":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v49

    iput v2, v0, Landroid/os/Message;->what:I

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v13

    const-string v14, "FAIL"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get Token Failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, v53, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 165
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 163
    invoke-virtual/range {v13 .. v24}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v49

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_1

    .line 134
    .end local v5    # "ter_mac":Ljava/lang/String;
    .end local v6    # "ter_ip":Ljava/lang/String;
    .end local v7    # "ter_imei":Ljava/lang/String;
    .end local v8    # "dev_id":Ljava/lang/String;
    .end local v9    # "ac_name":Ljava/lang/String;
    .end local v11    # "platform_code":Ljava/lang/String;
    .end local v12    # "mPortalUrl":Ljava/lang/String;
    .end local v48    # "sdkMethods":Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
    .end local v49    # "sendmsg":Landroid/os/Message;
    .end local v53    # "token_res":[Ljava/lang/String;
    :cond_3
    const-string v2, "dev_id="

    .line 133
    move-object/from16 v0, v46

    invoke-static {v0, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 141
    .restart local v8    # "dev_id":Ljava/lang/String;
    .restart local v11    # "platform_code":Ljava/lang/String;
    :cond_4
    const-string v2, "ac_name="

    move-object/from16 v0, v46

    invoke-static {v0, v2}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDevidOrPltCodeFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 170
    .restart local v5    # "ter_mac":Ljava/lang/String;
    .restart local v6    # "ter_ip":Ljava/lang/String;
    .restart local v7    # "ter_imei":Ljava/lang/String;
    .restart local v9    # "ac_name":Ljava/lang/String;
    .restart local v12    # "mPortalUrl":Ljava/lang/String;
    .restart local v48    # "sdkMethods":Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;
    .restart local v53    # "token_res":[Ljava/lang/String;
    :cond_5
    const-string v52, ""

    .line 171
    .local v52, "tmp_accountID":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v16, v53, v2

    .line 172
    .local v16, "token":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v31, v53, v2

    .line 173
    .local v31, "auth_type":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v53, v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 174
    const/4 v2, 0x2

    aget-object v11, v53, v2

    .line 175
    :cond_6
    const/4 v2, 0x3

    aget-object v2, v53, v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 176
    const/4 v2, 0x3

    aget-object v52, v53, v2

    .line 178
    :cond_7
    move-object/from16 v19, v52

    .line 180
    .local v19, "accountID":Ljava/lang/String;
    const-string v2, "AP_AUTH"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 183
    const-string v2, "AP Authentication"

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v49

    .line 185
    .restart local v49    # "sendmsg":Landroid/os/Message;
    invoke-virtual/range {v48 .. v48}, Lcom/iwifi/sdk/protocol/impl/SDKCommonMotheds;->getDhcpGatewayAddr()Ljava/lang/String;

    move-result-object v14

    .line 186
    .local v14, "ipGateway":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v13

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    .line 188
    const-string v17, "android"

    .line 189
    const-string v20, "http://www.baidu.com"

    move-object/from16 v18, v8

    .line 187
    invoke-virtual/range {v13 .. v20}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AP_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    move-result-object v45

    .line 191
    .local v45, "ap_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    move-object/from16 v0, v45

    iget-boolean v2, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, v49

    iput v2, v0, Landroid/os/Message;->what:I

    .line 193
    move-object/from16 v0, v45

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v49

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    .end local v14    # "ipGateway":Ljava/lang/String;
    .end local v31    # "auth_type":Ljava/lang/String;
    .end local v45    # "ap_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .end local v49    # "sendmsg":Landroid/os/Message;
    :goto_5
    const-string v2, "Authenticaton exit"

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_1

    .line 192
    .restart local v14    # "ipGateway":Ljava/lang/String;
    .restart local v31    # "auth_type":Ljava/lang/String;
    .restart local v45    # "ap_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .restart local v49    # "sendmsg":Landroid/os/Message;
    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    .line 196
    .end local v14    # "ipGateway":Ljava/lang/String;
    .end local v45    # "ap_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .end local v49    # "sendmsg":Landroid/os/Message;
    :cond_9
    const-string v2, "AAA_AUTH"

    .line 197
    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 199
    const-string v2, "AAA Authentication"

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v42, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$1(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v8, v1}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2$1;-><init>(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v4, 0x0

    .line 200
    move-object/from16 v0, v42

    invoke-direct {v0, v2, v3, v4}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;-><init>(Landroid/content/Context;Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;Lcom/iwifi/sdk/chinanet/WifiLogOffCallback;)V

    .line 246
    .local v42, "aaa_authen":Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
    const/4 v2, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->SetWebViewStatus(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;->doAunthenticaterRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 249
    .end local v42    # "aaa_authen":Lcom/iwifi/sdk/chinanet/WifiAuthenticationProcedure;
    :cond_a
    const-string v2, "AC_AUTH"

    .line 250
    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "BAS_AUTH"

    .line 251
    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "FIT_AP_AUTH"

    .line 252
    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "VLAN_AUTH"

    .line 253
    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 254
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v49

    .line 255
    .restart local v49    # "sendmsg":Landroid/os/Message;
    const-string v2, "AC Authentication"

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v2, "http://"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v44

    .line 259
    .local v44, "ac_split_portalUrl":[Ljava/lang/String;
    move-object/from16 v0, v44

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_d

    .line 260
    const/4 v2, 0x1

    aget-object v2, v44, v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    const-string v27, ""

    .line 267
    .local v27, "ac_portalURl":Ljava/lang/String;
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v20

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@51iwifi.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v8

    move-object/from16 v23, v16

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v26, v19

    invoke-virtual/range {v20 .. v27}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->AC_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    move-result-object v43

    .line 289
    .local v43, "ac_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    move-object/from16 v0, v43

    iget-boolean v2, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, v49

    iput v2, v0, Landroid/os/Message;->what:I

    .line 291
    move-object/from16 v0, v43

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v49

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 261
    .end local v27    # "ac_portalURl":Ljava/lang/String;
    .end local v43    # "ac_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    :cond_c
    const/4 v2, 0x1

    aget-object v2, v44, v2

    const/4 v3, 0x0

    .line 262
    const/4 v4, 0x1

    aget-object v4, v44, v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 261
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    goto :goto_6

    .line 264
    :cond_d
    const/4 v2, 0x0

    aget-object v2, v44, v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    const-string v27, ""

    .restart local v27    # "ac_portalURl":Ljava/lang/String;
    :goto_8
    goto :goto_6

    .line 265
    .end local v27    # "ac_portalURl":Ljava/lang/String;
    :cond_e
    const/4 v2, 0x0

    aget-object v2, v44, v2

    const/4 v3, 0x0

    .line 266
    const/4 v4, 0x0

    aget-object v4, v44, v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 265
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    goto :goto_8

    .line 290
    .restart local v27    # "ac_portalURl":Ljava/lang/String;
    .restart local v43    # "ac_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    :cond_f
    const/4 v2, 0x1

    goto :goto_7

    .line 295
    .end local v27    # "ac_portalURl":Ljava/lang/String;
    .end local v43    # "ac_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .end local v44    # "ac_split_portalUrl":[Ljava/lang/String;
    .end local v49    # "sendmsg":Landroid/os/Message;
    :cond_10
    const-string v2, "THIRD_AUTH"

    .line 296
    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 298
    const-string v2, "?"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_11

    const-string v50, ""

    .line 301
    .local v50, "third_redirectParam":Ljava/lang/String;
    :goto_9
    const-string v2, "Third Authentication"

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v49

    .line 304
    .restart local v49    # "sendmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v28

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$phoneNum:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appversion:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 308
    .end local v31    # "auth_type":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$appkey:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->val$secret:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v30, v8

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v16

    move-object/from16 v36, v11

    move-object/from16 v37, v19

    .line 305
    invoke-virtual/range {v28 .. v40}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->Third_sync_LoginAuthen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;

    move-result-object v51

    .line 311
    .local v51, "third_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    move-object/from16 v0, v51

    iget-boolean v2, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_status:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    :goto_a
    move-object/from16 v0, v49

    iput v2, v0, Landroid/os/Message;->what:I

    .line 313
    move-object/from16 v0, v51

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->auth_resultInfo:Ljava/lang/String;

    move-object/from16 v0, v49

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 299
    .end local v49    # "sendmsg":Landroid/os/Message;
    .end local v50    # "third_redirectParam":Ljava/lang/String;
    .end local v51    # "third_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .restart local v31    # "auth_type":Ljava/lang/String;
    :cond_11
    const-string v2, "?"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v50

    goto :goto_9

    .line 312
    .end local v31    # "auth_type":Ljava/lang/String;
    .restart local v49    # "sendmsg":Landroid/os/Message;
    .restart local v50    # "third_redirectParam":Ljava/lang/String;
    .restart local v51    # "third_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    :cond_12
    const/4 v2, 0x1

    goto :goto_a

    .line 317
    .end local v49    # "sendmsg":Landroid/os/Message;
    .end local v50    # "third_redirectParam":Ljava/lang/String;
    .end local v51    # "third_result":Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
    .restart local v31    # "auth_type":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v49

    .line 318
    .restart local v49    # "sendmsg":Landroid/os/Message;
    const/4 v2, 0x1

    move-object/from16 v0, v49

    iput v2, v0, Landroid/os/Message;->what:I

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    # getter for: Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v2}, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->access$2(Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v28

    const-string v29, "FAIL"

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unkown authen type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 321
    const-string v34, ""

    const-string v35, ""

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 322
    const-string v39, ""

    move-object/from16 v32, v8

    move-object/from16 v33, v11

    move-object/from16 v38, v19

    .line 319
    invoke-virtual/range {v28 .. v39}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->generateJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v49

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation$2;->this$0:Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;

    iget-object v2, v2, Lcom/iwifi/sdk/protocol/impl/DoAuthenticationLogoffOperation;->mhandler:Landroid/os/Handler;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Lcom/iwifi/sdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method
