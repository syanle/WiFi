.class Lcom/cat/tools/PersonInfomationPopupWindow$2;
.super Ljava/lang/Object;
.source "PersonInfomationPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/tools/PersonInfomationPopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/tools/PersonInfomationPopupWindow;


# direct methods
.method constructor <init>(Lcom/cat/tools/PersonInfomationPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/tools/PersonInfomationPopupWindow$2;->this$0:Lcom/cat/tools/PersonInfomationPopupWindow;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 64
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow$2;->this$0:Lcom/cat/tools/PersonInfomationPopupWindow;

    # getter for: Lcom/cat/tools/PersonInfomationPopupWindow;->mMenuView:Landroid/view/View;
    invoke-static {v2}, Lcom/cat/tools/PersonInfomationPopupWindow;->access$0(Lcom/cat/tools/PersonInfomationPopupWindow;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 65
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 66
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 70
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow$2;->this$0:Lcom/cat/tools/PersonInfomationPopupWindow;

    invoke-virtual {v2}, Lcom/cat/tools/PersonInfomationPopupWindow;->dismiss()V

    .line 72
    :cond_0
    return v4
.end method
