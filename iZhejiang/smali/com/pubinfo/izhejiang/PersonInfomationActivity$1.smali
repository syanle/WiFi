.class Lcom/pubinfo/izhejiang/PersonInfomationActivity$1;
.super Ljava/lang/Object;
.source "PersonInfomationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/PersonInfomationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$1;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$1;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    # getter for: Lcom/pubinfo/izhejiang/PersonInfomationActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->access$0(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00ba
        :pswitch_0
    .end packed-switch
.end method
