.class Lcom/umeng/socialize/view/ax;
.super Ljava/lang/Object;
.source "OauthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/av;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/av;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ax;->a:Lcom/umeng/socialize/view/av;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/umeng/socialize/view/ax;->a:Lcom/umeng/socialize/view/av;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/av;->dismiss()V

    .line 176
    return-void
.end method
