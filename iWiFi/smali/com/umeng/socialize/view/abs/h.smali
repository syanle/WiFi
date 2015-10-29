.class Lcom/umeng/socialize/view/abs/h;
.super Ljava/lang/Object;
.source "EntityView.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/g;

.field private final synthetic b:[Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/g;[Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/h;->b:[Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 94
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 95
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/abs/g;->onViewUpdate()V

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/g;->c(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 100
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/g;->a(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/g;->b(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->b:[Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->b:[Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_2

    .line 108
    :cond_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5931\u8d25\u4e86\uff0c\u8bf7\u91cd\u8bd5."

    invoke-static {v1, p1, v2}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_2
    aget-object v3, v1, v0

    .line 105
    invoke-interface {v3, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/g;->a(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/g;->b(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-static {v1}, Lcom/umeng/socialize/view/abs/g;->c(Lcom/umeng/socialize/view/abs/g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 85
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->b:[Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/h;->b:[Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 90
    :cond_0
    return-void

    .line 86
    :cond_1
    aget-object v3, v1, v0

    .line 87
    invoke-interface {v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
