.class Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;
.super Ljava/lang/Object;
.source "AuthenticatedMethodsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogoffResultInfo"
.end annotation


# instance fields
.field logoff_resultInfo:Ljava/lang/String;

.field logoff_status:Z

.field final synthetic this$0:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$LogoffResultInfo;->this$0:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
