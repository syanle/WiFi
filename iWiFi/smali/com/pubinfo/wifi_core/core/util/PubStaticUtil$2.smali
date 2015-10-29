.class Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$2;
.super Ljava/lang/Object;
.source "PubStaticUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;->finishApp(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$2;->val$activity:Landroid/app/Activity;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 329
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 330
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 331
    return-void
.end method
