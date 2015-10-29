.class Lcom/bread/breadservice/BRDDesktopActivity$2;
.super Ljava/lang/Object;
.source "BRDDesktopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bread/breadservice/BRDDesktopActivity;->showImageviewAds(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bread/breadservice/BRDDesktopActivity;


# direct methods
.method constructor <init>(Lcom/bread/breadservice/BRDDesktopActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bread/breadservice/BRDDesktopActivity$2;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bread/breadservice/BRDDesktopActivity$2;->this$0:Lcom/bread/breadservice/BRDDesktopActivity;

    invoke-virtual {v0}, Lcom/bread/breadservice/BRDDesktopActivity;->finish()V

    .line 106
    return-void
.end method
