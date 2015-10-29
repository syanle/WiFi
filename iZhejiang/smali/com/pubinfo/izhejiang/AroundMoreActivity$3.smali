.class Lcom/pubinfo/izhejiang/AroundMoreActivity$3;
.super Ljava/lang/Object;
.source "AroundMoreActivity.java"

# interfaces
.implements Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;


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


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/AroundMoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$3;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStayViewGone()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$3;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public onStayViewShow()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$3;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    return-void
.end method
