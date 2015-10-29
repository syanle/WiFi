.class Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$1;
.super Ljava/lang/Object;
.source "ThinkAndroidBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->showDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;

.field private final synthetic val$isFinish:Z


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$1;->this$0:Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;

    iput-boolean p2, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$1;->val$isFinish:Z

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 114
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity$1;->val$isFinish:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    :cond_0
    return-void
.end method
