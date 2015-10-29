.class Lcom/umeng/socialize/view/ao;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ak;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ao;->a:Lcom/umeng/socialize/view/ak;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/umeng/socialize/view/ao;->a:Lcom/umeng/socialize/view/ak;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 119
    return-void
.end method
