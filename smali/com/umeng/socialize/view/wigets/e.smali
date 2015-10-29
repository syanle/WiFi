.class Lcom/umeng/socialize/view/wigets/e;
.super Ljava/lang/Object;
.source "SearchBox.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/wigets/SearchBox;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/wigets/SearchBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/e;->a:Lcom/umeng/socialize/view/wigets/SearchBox;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/e;->a:Lcom/umeng/socialize/view/wigets/SearchBox;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/umeng/socialize/view/wigets/SearchBox;->searchText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->access$0(Lcom/umeng/socialize/view/wigets/SearchBox;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
