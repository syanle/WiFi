.class Lcom/cat/picture/ShowImageActivity$1;
.super Ljava/lang/Object;
.source "ShowImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/picture/ShowImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/picture/ShowImageActivity;


# direct methods
.method constructor <init>(Lcom/cat/picture/ShowImageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/picture/ShowImageActivity$1;->this$0:Lcom/cat/picture/ShowImageActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity$1;->this$0:Lcom/cat/picture/ShowImageActivity;

    invoke-virtual {v0}, Lcom/cat/picture/ShowImageActivity;->finish()V

    .line 148
    return-void
.end method
