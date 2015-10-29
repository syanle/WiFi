.class Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$5;
.super Ljava/lang/Object;
.source "PubStaticUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->showCustomDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$isFinish:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$5;->val$isFinish:Z

    iput-object p2, p0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$5;->val$activity:Landroid/app/Activity;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$5;->val$isFinish:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 485
    :cond_0
    return-void
.end method
