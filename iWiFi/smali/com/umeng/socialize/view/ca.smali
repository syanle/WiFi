.class Lcom/umeng/socialize/view/ca;
.super Ljava/lang/Object;
.source "ShareAtDialogV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/bw;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/bw;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ca;->a:Lcom/umeng/socialize/view/bw;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/umeng/socialize/view/ca;->a:Lcom/umeng/socialize/view/bw;

    invoke-static {v0}, Lcom/umeng/socialize/view/bw;->h(Lcom/umeng/socialize/view/bw;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 188
    iget-object v0, p0, Lcom/umeng/socialize/view/ca;->a:Lcom/umeng/socialize/view/bw;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 189
    return-void
.end method
