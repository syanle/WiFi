.class Lcom/umeng/socialize/view/abs/au;
.super Ljava/lang/Object;
.source "UserCenterItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;

.field private final synthetic b:Lcom/umeng/socialize/bean/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/UserCenterItems$c;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/au;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/au;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/au;->a:Lcom/umeng/socialize/view/abs/UserCenterItems$c;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/au;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$c;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 374
    return-void
.end method
