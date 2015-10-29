.class Lcom/umeng/socialize/view/ah;
.super Ljava/lang/Object;
.source "FriendSelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ab;

.field private final synthetic b:Lcom/umeng/socialize/view/wigets/SearchBox;

.field private final synthetic c:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ab;Lcom/umeng/socialize/view/wigets/SearchBox;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ah;->a:Lcom/umeng/socialize/view/ab;

    iput-object p2, p0, Lcom/umeng/socialize/view/ah;->b:Lcom/umeng/socialize/view/wigets/SearchBox;

    iput-object p3, p0, Lcom/umeng/socialize/view/ah;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/umeng/socialize/view/ah;->b:Lcom/umeng/socialize/view/wigets/SearchBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->setInputType(I)V

    .line 286
    iget-object v0, p0, Lcom/umeng/socialize/view/ah;->c:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/umeng/socialize/view/ah;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v1}, Lcom/umeng/socialize/view/ab;->i(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/wigets/SearchBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 287
    iget-object v0, p0, Lcom/umeng/socialize/view/ah;->b:Lcom/umeng/socialize/view/wigets/SearchBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/SearchBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    return v2
.end method
