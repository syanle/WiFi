.class Lcom/umeng/socialize/view/abs/ad;
.super Ljava/lang/Object;
.source "UCenterView.java"

# interfaces
.implements Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/aa;

.field private final synthetic b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

.field private final synthetic c:Lcom/umeng/socialize/bean/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/aa;Lcom/umeng/socialize/view/wigets/SwitchImageView;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/ad;->a:Lcom/umeng/socialize/view/abs/aa;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/ad;->b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    iput-object p3, p0, Lcom/umeng/socialize/view/abs/ad;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/ad;)Lcom/umeng/socialize/view/abs/aa;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ad;->a:Lcom/umeng/socialize/view/abs/aa;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/wigets/SwitchImageView;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    if-eqz p3, :cond_0

    .line 181
    iput-boolean v0, p2, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 182
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ad;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->a(Lcom/umeng/socialize/view/abs/aa;)Lcom/umeng/socialize/view/controller/UserCenterController;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/view/abs/ae;

    invoke-direct {v1, p0, p2, p1}, Lcom/umeng/socialize/view/abs/ae;-><init>(Lcom/umeng/socialize/view/abs/ad;Lcom/umeng/socialize/view/wigets/SwitchImageView;Lcom/umeng/socialize/bean/SnsPlatform;)V

    invoke-virtual {v0, p1, v1}, Lcom/umeng/socialize/view/controller/UserCenterController;->b(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/UserCenterController$ASYNCListener;)V

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-boolean v0, p2, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 206
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ad;->a:Lcom/umeng/socialize/view/abs/aa;

    invoke-static {v0}, Lcom/umeng/socialize/view/abs/aa;->j(Lcom/umeng/socialize/view/abs/aa;)Lcom/umeng/socialize/view/abs/UserCenterItems$b;

    move-result-object v0

    .line 207
    const/4 v1, 0x3

    .line 206
    invoke-virtual {v0, p1, v1}, Lcom/umeng/socialize/view/abs/UserCenterItems$b;->a(Lcom/umeng/socialize/bean/SnsPlatform;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ad;->b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    iget-boolean v0, v0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/ad;->c:Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v1, p0, Lcom/umeng/socialize/view/abs/ad;->b:Lcom/umeng/socialize/view/wigets/SwitchImageView;

    invoke-direct {p0, v0, v1, p1}, Lcom/umeng/socialize/view/abs/ad;->a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/wigets/SwitchImageView;Z)V

    .line 175
    :cond_0
    return-void
.end method
