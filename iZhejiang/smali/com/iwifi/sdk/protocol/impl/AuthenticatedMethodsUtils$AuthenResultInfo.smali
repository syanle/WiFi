.class Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;
.super Ljava/lang/Object;
.source "AuthenticatedMethodsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenResultInfo"
.end annotation


# instance fields
.field auth_resultInfo:Ljava/lang/String;

.field auth_status:Z

.field final synthetic this$0:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;


# direct methods
.method constructor <init>(Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils$AuthenResultInfo;->this$0:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
