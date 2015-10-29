.class Lcom/pubinfo/izhejiang/AroundMoreActivity$2;
.super Ljava/lang/Object;
.source "AroundMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/AroundMoreActivity;->initOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

.field private final synthetic val$Btn:[Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;[Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->val$Btn:[Landroid/widget/Button;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, "i":I
    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->val$Btn:[Landroid/widget/Button;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 184
    const/high16 v4, 0x7f080000

    .line 183
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 185
    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->showLoading()V

    .line 186
    iget-object v3, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/AroundMoreActivity;->bd:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cat/data/BottomData;

    invoke-virtual {v2}, Lcom/cat/data/BottomData;->getName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/pubinfo/izhejiang/AroundMoreActivity;->Commit(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->access$0(Lcom/pubinfo/izhejiang/AroundMoreActivity;Ljava/lang/String;)V

    .line 187
    return-void

    .line 178
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->val$Btn:[Landroid/widget/Button;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$2;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v3}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 180
    const v4, 0x7f080006

    .line 179
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 178
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
