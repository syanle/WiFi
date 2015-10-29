.class Lcom/umeng/socialize/view/bi;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bi;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/umeng/socialize/view/bi;->a:Lcom/umeng/socialize/view/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->a(Lcom/umeng/socialize/view/ShareActivity;Landroid/location/Location;)V

    .line 820
    iget-object v0, p0, Lcom/umeng/socialize/view/bi;->a:Lcom/umeng/socialize/view/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->b(Lcom/umeng/socialize/view/ShareActivity;Z)V

    .line 821
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 822
    return-void
.end method
