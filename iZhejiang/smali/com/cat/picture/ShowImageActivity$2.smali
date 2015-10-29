.class Lcom/cat/picture/ShowImageActivity$2;
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
    iput-object p1, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    iget-boolean v1, v1, Lcom/cat/picture/ShowImageActivity;->btn_click:Z

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    # invokes: Lcom/cat/picture/ShowImageActivity;->showLoading()V
    invoke-static {v1}, Lcom/cat/picture/ShowImageActivity;->access$1(Lcom/cat/picture/ShowImageActivity;)V

    .line 156
    iget-object v1, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    iget-object v2, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    # getter for: Lcom/cat/picture/ShowImageActivity;->mClipImageLayout:Lcom/cat/picture/ClipImageLayout;
    invoke-static {v2}, Lcom/cat/picture/ShowImageActivity;->access$2(Lcom/cat/picture/ShowImageActivity;)Lcom/cat/picture/ClipImageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cat/picture/ClipImageLayout;->clip()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/cat/picture/ShowImageActivity;->aftercut_bitmap:Landroid/graphics/Bitmap;

    .line 157
    iget-object v1, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    iget-object v1, v1, Lcom/cat/picture/ShowImageActivity;->aftercut_bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    iget-object v2, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    iget-object v2, v2, Lcom/cat/picture/ShowImageActivity;->aftercut_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/cat/picture/ShowImageActivity;->saveBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    # getter for: Lcom/cat/picture/ShowImageActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cat/picture/ShowImageActivity;->access$3(Lcom/cat/picture/ShowImageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    iget-object v1, p0, Lcom/cat/picture/ShowImageActivity$2;->this$0:Lcom/cat/picture/ShowImageActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cat/picture/ShowImageActivity;->btn_click:Z

    .line 168
    :cond_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
