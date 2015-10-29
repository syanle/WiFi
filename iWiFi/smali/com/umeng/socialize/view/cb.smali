.class Lcom/umeng/socialize/view/cb;
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
    iput-object p1, p0, Lcom/umeng/socialize/view/cb;->a:Lcom/umeng/socialize/view/bw;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/view/cb;->a:Lcom/umeng/socialize/view/bw;

    invoke-static {v0}, Lcom/umeng/socialize/view/bw;->a(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/wigets/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/umeng/socialize/view/cb;->a:Lcom/umeng/socialize/view/bw;

    invoke-static {v0}, Lcom/umeng/socialize/view/bw;->i(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/controller/ShareAtController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b()V

    .line 204
    :cond_0
    return-void
.end method
