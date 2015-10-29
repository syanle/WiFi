.class Lcom/umeng/socialize/view/by;
.super Ljava/lang/Object;
.source "ShareAtDialogV2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/bw;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/bw;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/by;->a:Lcom/umeng/socialize/view/bw;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/umeng/socialize/view/by;->a:Lcom/umeng/socialize/view/bw;

    invoke-static {v0}, Lcom/umeng/socialize/view/bw;->a(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/wigets/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/view/wigets/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    .line 134
    iget-object v1, p0, Lcom/umeng/socialize/view/by;->a:Lcom/umeng/socialize/view/bw;

    invoke-static {v1, v0}, Lcom/umeng/socialize/view/bw;->a(Lcom/umeng/socialize/view/bw;Lcom/umeng/socialize/bean/UMFriend;)V

    .line 135
    return-void
.end method
