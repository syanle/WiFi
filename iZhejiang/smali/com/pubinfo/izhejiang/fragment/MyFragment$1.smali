.class Lcom/pubinfo/izhejiang/fragment/MyFragment$1;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/fragment/MyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/MyFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 298
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/pubinfo/izhejiang/LoginActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "Activity"

    const-string v4, "MyFragment"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 304
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-boolean v3, v3, Lcom/pubinfo/izhejiang/fragment/MyFragment;->btn_click:Z

    if-eqz v3, :cond_0

    .line 305
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 306
    const-class v4, Lcom/pubinfo/izhejiang/PushMessageActivity;

    .line 305
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v2, "intent_left":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iput-boolean v5, v3, Lcom/pubinfo/izhejiang/fragment/MyFragment;->btn_click:Z

    goto :goto_0

    .line 313
    .end local v2    # "intent_left":Landroid/content/Intent;
    :sswitch_2
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-boolean v3, v3, Lcom/pubinfo/izhejiang/fragment/MyFragment;->btn_click:Z

    if-eqz v3, :cond_0

    .line 314
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 315
    const-class v4, Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    .line 314
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v1, "intent2":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$1;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iput-boolean v5, v3, Lcom/pubinfo/izhejiang/fragment/MyFragment;->btn_click:Z

    goto :goto_0

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x7f0a0078 -> :sswitch_0
        0x7f0a0095 -> :sswitch_1
        0x7f0a0097 -> :sswitch_2
    .end sparse-switch
.end method
