.class Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;
.super Ljava/lang/Object;
.source "AroundMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;->this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

    iput p2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;->val$position:I

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;->this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

    # getter for: Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->access$1(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)Lcom/pubinfo/izhejiang/AroundMoreActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pubinfo/izhejiang/WebviewPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "activity"

    const-string v2, "AroundMoreActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v2, "name"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;->this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

    # getter for: Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->access$0(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/MapCustom;

    invoke-virtual {v1}, Lcom/cat/data/MapCustom;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v2, "url"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;->this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

    # getter for: Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->data:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->access$0(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/MapCustom;

    invoke-virtual {v1}, Lcom/cat/data/MapCustom;->getBusiness_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$1;->this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

    # getter for: Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->access$1(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)Lcom/pubinfo/izhejiang/AroundMoreActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method
