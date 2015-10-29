.class Lcom/pubinfo/izhejiang/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/MainActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iget v0, v0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    if-eq v0, v4, :cond_0

    .line 131
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    invoke-direct {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->access$0(Lcom/pubinfo/izhejiang/MainActivity;Landroid/app/Fragment;)V

    .line 133
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    # getter for: Lcom/pubinfo/izhejiang/MainActivity;->ssidFragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/MainActivity;->access$1(Lcom/pubinfo/izhejiang/MainActivity;)Landroid/app/Fragment;

    move-result-object v1

    const-string v2, "ssidFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/pubinfo/izhejiang/MainActivity;->changeFrament(Landroid/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->changeRadioButtonImage(I)V

    .line 135
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iput v4, v0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iget v0, v0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    if-eq v0, v5, :cond_0

    .line 149
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-direct {v1}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->access$2(Lcom/pubinfo/izhejiang/MainActivity;Landroid/app/Fragment;)V

    .line 151
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    # getter for: Lcom/pubinfo/izhejiang/MainActivity;->aroundFragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/MainActivity;->access$3(Lcom/pubinfo/izhejiang/MainActivity;)Landroid/app/Fragment;

    move-result-object v1

    const-string v2, "aroundFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/pubinfo/izhejiang/MainActivity;->changeFrament(Landroid/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->changeRadioButtonImage(I)V

    .line 165
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iput v5, v0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iget v0, v0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    if-eq v0, v6, :cond_0

    .line 184
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;

    invoke-direct {v1}, Lcom/pubinfo/izhejiang/fragment/ApplicationFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->access$4(Lcom/pubinfo/izhejiang/MainActivity;Landroid/app/Fragment;)V

    .line 187
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    # getter for: Lcom/pubinfo/izhejiang/MainActivity;->applicationFragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/MainActivity;->access$5(Lcom/pubinfo/izhejiang/MainActivity;)Landroid/app/Fragment;

    move-result-object v1

    .line 188
    const-string v2, "applicationFragment"

    .line 187
    invoke-virtual {v0, v1, v3, v2}, Lcom/pubinfo/izhejiang/MainActivity;->changeFrament(Landroid/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->changeRadioButtonImage(I)V

    .line 190
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iput v6, v0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    goto/16 :goto_0

    .line 195
    :pswitch_3
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iget v0, v0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    if-eq v0, v7, :cond_0

    .line 196
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    new-instance v1, Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-direct {v1}, Lcom/pubinfo/izhejiang/fragment/MyFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->access$6(Lcom/pubinfo/izhejiang/MainActivity;Landroid/app/Fragment;)V

    .line 198
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    # getter for: Lcom/pubinfo/izhejiang/MainActivity;->myFragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/MainActivity;->access$7(Lcom/pubinfo/izhejiang/MainActivity;)Landroid/app/Fragment;

    move-result-object v1

    const-string v2, "myFragment"

    invoke-virtual {v0, v1, v3, v2}, Lcom/pubinfo/izhejiang/MainActivity;->changeFrament(Landroid/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/MainActivity;->changeRadioButtonImage(I)V

    .line 200
    iget-object v0, p0, Lcom/pubinfo/izhejiang/MainActivity$1;->this$0:Lcom/pubinfo/izhejiang/MainActivity;

    iput v7, v0, Lcom/pubinfo/izhejiang/MainActivity;->tag:I

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0017
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
