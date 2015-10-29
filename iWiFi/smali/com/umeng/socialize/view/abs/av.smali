.class Lcom/umeng/socialize/view/abs/av;
.super Ljava/lang/Object;
.source "UserCenterItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/UserCenterItems$c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/av;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/av;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 397
    return-void
.end method
