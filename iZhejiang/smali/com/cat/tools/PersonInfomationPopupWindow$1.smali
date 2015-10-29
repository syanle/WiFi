.class Lcom/cat/tools/PersonInfomationPopupWindow$1;
.super Ljava/lang/Object;
.source "PersonInfomationPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/cat/tools/PersonInfomationPopupWindow$1;->this$0:Lcom/cat/tools/PersonInfomationPopupWindow;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cat/tools/PersonInfomationPopupWindow$1;->this$0:Lcom/cat/tools/PersonInfomationPopupWindow;

    invoke-virtual {v0}, Lcom/cat/tools/PersonInfomationPopupWindow;->dismiss()V

    .line 40
    return-void
.end method
