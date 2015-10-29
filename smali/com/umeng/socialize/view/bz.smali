.class Lcom/umeng/socialize/view/bz;
.super Ljava/lang/Object;
.source "ShareAtDialogV2.java"

# interfaces
.implements Lcom/umeng/socialize/view/wigets/SearchBox$SearchResultListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/bw;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/bw;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bz;->a:Lcom/umeng/socialize/view/bw;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/view/bz;->a:Lcom/umeng/socialize/view/bw;

    invoke-static {v0}, Lcom/umeng/socialize/view/bw;->b(Lcom/umeng/socialize/view/bw;)Lcom/umeng/socialize/view/wigets/SlideBar;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/wigets/SlideBar;->setVisibility(I)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
