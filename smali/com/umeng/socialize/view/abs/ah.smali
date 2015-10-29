.class Lcom/umeng/socialize/view/abs/ah;
.super Ljava/lang/Object;
.source "UCenterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/aa;

.field private final synthetic b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ah;->a:Lcom/umeng/socialize/view/abs/aa;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/ah;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ah;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/abs/aa;)Lcom/umeng/socialize/view/controller/UserCenterController;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ah;->b:Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->b(Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    .line 348
    return-void
.end method
