.class Lcom/pubinfo/freewifialliance/view/TestFragment$1;
.super Ljava/lang/Object;
.source "TestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/TestFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/TestFragment;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/TestFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/TestFragment$1;->this$0:Lcom/pubinfo/freewifialliance/view/TestFragment;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/TestFragment$1;->this$0:Lcom/pubinfo/freewifialliance/view/TestFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/TestFragment$1;->this$0:Lcom/pubinfo/freewifialliance/view/TestFragment;

    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/view/TestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/pubinfo/freewifialliance/view/CenterPage;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/TestFragment;->startActivity(Landroid/content/Intent;)V

    .line 37
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/TestFragment$1;->this$0:Lcom/pubinfo/freewifialliance/view/TestFragment;

    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/TestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 38
    return-void
.end method
