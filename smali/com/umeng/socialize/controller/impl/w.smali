.class Lcom/umeng/socialize/controller/impl/w;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/w;->a:Lcom/umeng/socialize/controller/impl/c;

    .line 2094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/w;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/c;->d(Lcom/umeng/socialize/controller/impl/c;)Lcom/umeng/socialize/view/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ce;->dismiss()V

    .line 2098
    return-void
.end method
