.class Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;
.super Ljava/lang/Thread;
.source "WlanRoamingAuthProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->doAunthenticaterRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iwifi/sdk/chinanet/wispr/IWlanAuthenRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

.field private final synthetic val$btn_identify:Ljava/lang/String;

.field private final synthetic val$fname:Ljava/lang/String;

.field private final synthetic val$login_lat_service:Ljava/lang/String;

.field private final synthetic val$org_server:Ljava/lang/String;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$request_url:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    iput-object p2, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$btn_identify:Ljava/lang/String;

    iput-object p5, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$fname:Ljava/lang/String;

    iput-object p6, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$org_server:Ljava/lang/String;

    iput-object p7, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$login_lat_service:Ljava/lang/String;

    iput-object p8, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$request_url:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 219
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 220
    new-instance v10, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;

    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    invoke-direct {v10, v0}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;-><init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)V

    .line 221
    .local v10, "resInfos":Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$username:Ljava/lang/String;

    iput-object v0, v10, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->userName:Ljava/lang/String;

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$2(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;I)V

    .line 225
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$btn_identify:Ljava/lang/String;

    iget-object v4, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$fname:Ljava/lang/String;

    iget-object v5, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$org_server:Ljava/lang/String;

    iget-object v6, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$login_lat_service:Ljava/lang/String;

    # invokes: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->generateHttpEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-static/range {v0 .. v6}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$3(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v8

    .line 227
    .local v8, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    iget-object v1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->val$request_url:Ljava/lang/String;

    sget-object v2, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;->GET:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;

    invoke-virtual {v0, v1, v8, v2}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->HandleHttpRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$RequestMethod;)Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;

    move-result-object v9

    .line 229
    .local v9, "request_result":Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$2(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;I)V

    .line 230
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->sendMessageWithResult(ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v10, v9, v2}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$4(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v8    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v9    # "request_result":Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v7

    .line 233
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    invoke-static {v0, v11}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$2(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;I)V

    .line 236
    iget-object v0, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$3;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    # invokes: Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->sendMessageWithResult(ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V
    invoke-static {v0, v11, v10, v12, v7}, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;->access$4(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;ILcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;Ljava/lang/Exception;)V

    goto :goto_0
.end method
