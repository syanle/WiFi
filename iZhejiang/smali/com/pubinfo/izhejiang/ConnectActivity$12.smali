.class Lcom/pubinfo/izhejiang/ConnectActivity$12;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;->showWifiLoading(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

.field private final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->val$content:Ljava/lang/String;

    .line 1111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_tag:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1115
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$13(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$13(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1118
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$13(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1122
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$12;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->msInnerLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$13(Lcom/pubinfo/izhejiang/ConnectActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method
