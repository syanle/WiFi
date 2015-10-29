.class Lcom/pubinfo/freewifialliance/view/Suggestion$1;
.super Ljava/lang/Object;
.source "Suggestion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/Suggestion;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/Suggestion;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/Suggestion;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/Suggestion$1;->this$0:Lcom/pubinfo/freewifialliance/view/Suggestion;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/16 v2, 0xbb8

    .line 49
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion$1;->this$0:Lcom/pubinfo/freewifialliance/view/Suggestion;

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/Suggestion;->suggestion_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion$1;->this$0:Lcom/pubinfo/freewifialliance/view/Suggestion;

    # getter for: Lcom/pubinfo/freewifialliance/view/Suggestion;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/Suggestion;->access$0(Lcom/pubinfo/freewifialliance/view/Suggestion;)Lcom/pubinfo/wifi_core/AppBaseActivity;

    move-result-object v0

    const-string v1, "\u63d0\u4ea4\u610f\u89c1\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion$1;->this$0:Lcom/pubinfo/freewifialliance/view/Suggestion;

    # getter for: Lcom/pubinfo/freewifialliance/view/Suggestion;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/Suggestion;->access$0(Lcom/pubinfo/freewifialliance/view/Suggestion;)Lcom/pubinfo/wifi_core/AppBaseActivity;

    move-result-object v0

    const-string v1, "\u6211\u4eec\u5df2\u7ecf\u6536\u5230\u4f60\u7684\u610f\u89c1\u53cd\u9988\u3002"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion$1;->this$0:Lcom/pubinfo/freewifialliance/view/Suggestion;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/Suggestion;->finish()V

    goto :goto_0
.end method
