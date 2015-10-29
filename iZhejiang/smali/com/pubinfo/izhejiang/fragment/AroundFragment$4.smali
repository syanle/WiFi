.class Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;
.super Ljava/lang/Object;
.source "AroundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/AroundFragment;->initOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

.field private final synthetic val$Btn:[Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/AroundFragment;[Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->val$Btn:[Landroid/widget/Button;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 853
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 858
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 859
    .local v0, "i":I
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->val$Btn:[Landroid/widget/Button;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 860
    const/high16 v4, 0x7f080000

    .line 859
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 861
    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->md:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cat/data/MapData;

    invoke-virtual {v2}, Lcom/cat/data/MapData;->getName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/pubinfo/izhejiang/fragment/AroundFragment;->Commit(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->access$6(Lcom/pubinfo/izhejiang/fragment/AroundFragment;Ljava/lang/String;)V

    .line 862
    return-void

    .line 854
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->val$Btn:[Landroid/widget/Button;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/pubinfo/izhejiang/fragment/AroundFragment$4;->this$0:Lcom/pubinfo/izhejiang/fragment/AroundFragment;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/fragment/AroundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 856
    const v4, 0x7f080006

    .line 855
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 854
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
