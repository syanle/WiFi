.class Lcom/pubinfo/izhejiang/PushMessageActivity$1;
.super Ljava/lang/Object;
.source "PushMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/PushMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/PushMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$1;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    # getter for: Lcom/pubinfo/izhejiang/PushMessageActivity;->push_isClicked:Z
    invoke-static {}, Lcom/pubinfo/izhejiang/PushMessageActivity;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "data":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$1;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/pubinfo/izhejiang/PushMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 75
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushMessageActivity$1;->this$0:Lcom/pubinfo/izhejiang/PushMessageActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/PushMessageActivity;->finish()V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a002c
        :pswitch_0
    .end packed-switch
.end method
