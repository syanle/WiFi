.class Lcom/pubinfo/izhejiang/CommentActivity$2;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/CommentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/CommentActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/CommentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/CommentActivity$2;->this$0:Lcom/pubinfo/izhejiang/CommentActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity$2;->this$0:Lcom/pubinfo/izhejiang/CommentActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/CommentActivity;->showLoading()V

    .line 67
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity$2;->this$0:Lcom/pubinfo/izhejiang/CommentActivity;

    # getter for: Lcom/pubinfo/izhejiang/CommentActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/CommentActivity;->access$0(Lcom/pubinfo/izhejiang/CommentActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CommentActivity$2;->this$0:Lcom/pubinfo/izhejiang/CommentActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/CommentActivity;->finish()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x7f0a002c
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
