.class public Lcom/pubinfo/freewifialliance/view/Suggestion;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "Suggestion.java"


# instance fields
.field refresh:Landroid/widget/ImageButton;

.field refresh2:Landroid/widget/Button;

.field suggestion_text:Landroid/widget/EditText;

.field titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/freewifialliance/view/Suggestion;)Lcom/pubinfo/wifi_core/AppBaseActivity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->context:Lcom/pubinfo/wifi_core/AppBaseActivity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/Suggestion;->setContentView(I)V

    .line 33
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/Suggestion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->titleTextView:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/Suggestion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->suggestion_text:Landroid/widget/EditText;

    .line 35
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/Suggestion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->refresh:Landroid/widget/ImageButton;

    .line 36
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->refresh:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->titleTextView:Landroid/widget/TextView;

    const-string v1, "\u610f\u89c1\u53cd\u9988"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/Suggestion;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->refresh2:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->refresh2:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->refresh2:Landroid/widget/Button;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 42
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->refresh2:Landroid/widget/Button;

    const-string v1, "\u63d0\u4ea4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/Suggestion;->refresh2:Landroid/widget/Button;

    new-instance v1, Lcom/pubinfo/freewifialliance/view/Suggestion$1;

    invoke-direct {v1, p0}, Lcom/pubinfo/freewifialliance/view/Suggestion$1;-><init>(Lcom/pubinfo/freewifialliance/view/Suggestion;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
