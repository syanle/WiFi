.class Lcom/umeng/socialize/view/cl;
.super Ljava/lang/Object;
.source "UCenterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ck;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ck;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/cl;->a:Lcom/umeng/socialize/view/ck;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/umeng/socialize/view/cl;->a:Lcom/umeng/socialize/view/ck;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ck;->dismiss()V

    .line 83
    return-void
.end method
