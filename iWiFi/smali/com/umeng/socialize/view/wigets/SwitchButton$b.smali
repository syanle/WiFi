.class final Lcom/umeng/socialize/view/wigets/SwitchButton$b;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/wigets/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/wigets/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/wigets/SwitchButton;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$b;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/wigets/SwitchButton;Lcom/umeng/socialize/view/wigets/SwitchButton$b;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SwitchButton$b;-><init>(Lcom/umeng/socialize/view/wigets/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$b;->a:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->performClick()Z

    .line 311
    return-void
.end method
