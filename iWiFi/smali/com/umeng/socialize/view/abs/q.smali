.class Lcom/umeng/socialize/view/abs/q;
.super Ljava/lang/Object;
.source "EntityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/p;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/p;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/q;->a:Lcom/umeng/socialize/view/abs/p;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/q;->a:Lcom/umeng/socialize/view/abs/p;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/p;->a(Lcom/umeng/socialize/view/abs/p;)Lcom/umeng/socialize/view/abs/g;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/g;->h(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 200
    return-void
.end method
