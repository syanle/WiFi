.class Lcom/umeng/socialize/view/wigets/SwitchButton$c;
.super Landroid/os/Handler;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/wigets/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/wigets/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/wigets/SwitchButton;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/wigets/SwitchButton;Lcom/umeng/socialize/view/wigets/SwitchButton$c;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SwitchButton$c;-><init>(Lcom/umeng/socialize/view/wigets/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v3}, Lcom/umeng/socialize/view/wigets/SwitchButton;->a(Lcom/umeng/socialize/view/wigets/SwitchButton;)Z

    move-result v3

    if-eq v3, v0, :cond_4

    .line 201
    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v3, v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->a(Lcom/umeng/socialize/view/wigets/SwitchButton;Z)V

    .line 205
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->b(Lcom/umeng/socialize/view/wigets/SwitchButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 199
    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/wigets/SwitchButton;->b(Lcom/umeng/socialize/view/wigets/SwitchButton;Z)V

    .line 210
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->c(Lcom/umeng/socialize/view/wigets/SwitchButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->c(Lcom/umeng/socialize/view/wigets/SwitchButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v3}, Lcom/umeng/socialize/view/wigets/SwitchButton;->a(Lcom/umeng/socialize/view/wigets/SwitchButton;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->d(Lcom/umeng/socialize/view/wigets/SwitchButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->d(Lcom/umeng/socialize/view/wigets/SwitchButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v3}, Lcom/umeng/socialize/view/wigets/SwitchButton;->a(Lcom/umeng/socialize/view/wigets/SwitchButton;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$c;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/wigets/SwitchButton;->b(Lcom/umeng/socialize/view/wigets/SwitchButton;Z)V

    .line 219
    :cond_4
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1
.end method
