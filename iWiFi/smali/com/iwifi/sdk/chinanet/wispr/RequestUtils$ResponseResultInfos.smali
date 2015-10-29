.class public Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;
.super Ljava/lang/Object;
.source "RequestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseResultInfos"
.end annotation


# instance fields
.field http_request_status_code:I

.field process_result:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultState;

.field request_url:Ljava/lang/String;

.field result_body:Ljava/lang/Object;

.field final synthetic this$0:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;


# direct methods
.method public constructor <init>(Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/wispr/RequestUtils$ResponseResultInfos;->this$0:Lcom/iwifi/sdk/chinanet/wispr/RequestUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
