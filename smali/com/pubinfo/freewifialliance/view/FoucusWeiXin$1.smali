.class Lcom/pubinfo/freewifialliance/view/FoucusWeiXin$1;
.super Ljava/lang/Object;
.source "FoucusWeiXin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin$1;->this$0:Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin$1;->this$0:Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;

    # getter for: Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;->access$0(Lcom/pubinfo/freewifialliance/view/FoucusWeiXin;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->openWXApp()Z

    .line 49
    return-void
.end method
