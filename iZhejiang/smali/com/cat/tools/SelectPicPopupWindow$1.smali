.class Lcom/cat/tools/SelectPicPopupWindow$1;
.super Ljava/lang/Object;
.source "SelectPicPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/tools/SelectPicPopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/tools/SelectPicPopupWindow;


# direct methods
.method constructor <init>(Lcom/cat/tools/SelectPicPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/tools/SelectPicPopupWindow$1;->this$0:Lcom/cat/tools/SelectPicPopupWindow;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cat/tools/SelectPicPopupWindow$1;->this$0:Lcom/cat/tools/SelectPicPopupWindow;

    invoke-virtual {v0}, Lcom/cat/tools/SelectPicPopupWindow;->dismiss()V

    .line 37
    return-void
.end method
