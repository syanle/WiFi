.class Lcom/umeng/socialize/view/s;
.super Ljava/lang/Object;
.source "CommentPostDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/q;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/q;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/s;->a:Lcom/umeng/socialize/view/q;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/umeng/socialize/view/s;->a:Lcom/umeng/socialize/view/q;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 289
    return-void
.end method
