.class Lcom/umeng/socialize/view/an;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/am;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/am;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/an;->a:Lcom/umeng/socialize/view/am;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/an;->a:Lcom/umeng/socialize/view/am;

    invoke-static {v0}, Lcom/umeng/socialize/view/am;->a(Lcom/umeng/socialize/view/am;)Lcom/umeng/socialize/view/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 81
    return-void
.end method
