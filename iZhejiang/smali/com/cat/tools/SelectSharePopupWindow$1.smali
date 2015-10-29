.class Lcom/cat/tools/SelectSharePopupWindow$1;
.super Ljava/lang/Object;
.source "SelectSharePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/tools/SelectSharePopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/tools/SelectSharePopupWindow;


# direct methods
.method constructor <init>(Lcom/cat/tools/SelectSharePopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/tools/SelectSharePopupWindow$1;->this$0:Lcom/cat/tools/SelectSharePopupWindow;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cat/tools/SelectSharePopupWindow$1;->this$0:Lcom/cat/tools/SelectSharePopupWindow;

    invoke-virtual {v0}, Lcom/cat/tools/SelectSharePopupWindow;->dismiss()V

    .line 39
    return-void
.end method
