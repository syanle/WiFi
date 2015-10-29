.class Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;
.super Ljava/lang/Thread;
.source "WlanRoamingAuthProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->doLogOffRequest(Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

.field private final synthetic val$logoff_url:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    iput-object p2, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->val$logoff_url:Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 256
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 257
    new-instance v2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;

    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    invoke-direct {v2, v3}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;-><init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)V

    .line 258
    .local v2, "resInfos":Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;
    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->val$username:Ljava/lang/String;

    iput-object v3, v2, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->userName:Ljava/lang/String;

    .line 260
    :try_start_0
    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$2(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;I)V

    .line 261
    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->val$logoff_url:Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->GET:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {v3, v4, v5, v6}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->HandleHttpRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;

    move-result-object v1

    .line 262
    .local v1, "request_result":Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$2(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;I)V

    .line 263
    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    const/4 v4, 0x1

    const/4 v5, 0x0

    # invokes: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->sendMessageWithResult(ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V
    invoke-static {v3, v4, v2, v1, v5}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$4(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1    # "request_result":Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    invoke-static {v3, v8}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$2(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;I)V

    .line 268
    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$4;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    # invokes: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->sendMessageWithResult(ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V
    invoke-static {v3, v9, v2, v7, v0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$4(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V

    goto :goto_0
.end method
