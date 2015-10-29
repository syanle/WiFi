.class Lcom/pubinfo/izhejiang/AroundMoreActivity$1;
.super Ljava/lang/Object;
.source "AroundMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/AroundMoreActivity;->init()V
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$1;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 123
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "data":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$1;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    iget-object v1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$1;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/AroundMoreActivity;->finish()V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a002c
        :pswitch_0
    .end packed-switch
.end method
