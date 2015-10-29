.class Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;
.super Ljava/lang/Object;
.source "SsidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    iput p2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->val$position:I

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 774
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->username:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 776
    const-class v2, Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 775
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 777
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$0(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/SsidData;

    .line 778
    invoke-virtual {v1}, Lcom/cat/data/SsidData;->getNettype()Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const-string v2, "logourl"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$0(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/SsidData;

    .line 780
    invoke-virtual {v1}, Lcom/cat/data/SsidData;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 779
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string v2, "ssidclick"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$0(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/SsidData;

    .line 782
    invoke-virtual {v1}, Lcom/cat/data/SsidData;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v1, "ssidconnect"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->ssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$1(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string v2, "macclick"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->results:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$0(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/SsidData;

    .line 785
    invoke-virtual {v1}, Lcom/cat/data/SsidData;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v1, "macconnect"

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->macstring:Ljava/lang/String;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$2(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 796
    :goto_0
    return-void

    .line 790
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 791
    const-class v2, Lcom/pubinfo/izhejiang/LoginActivity;

    .line 790
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 792
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "Activity"

    const-string v2, "SsidFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    iget-object v1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$2;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
