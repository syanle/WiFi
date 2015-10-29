.class Lcom/pubinfo/izhejiang/PushWebview$1;
.super Ljava/lang/Object;
.source "PushWebview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/PushWebview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PushWebview;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/PushWebview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PushWebview$1;->this$0:Lcom/pubinfo/izhejiang/PushWebview;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PushWebview$1;->this$0:Lcom/pubinfo/izhejiang/PushWebview;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/PushWebview;->finish()V

    .line 38
    return-void
.end method
