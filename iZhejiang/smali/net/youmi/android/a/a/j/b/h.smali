.class Lnet/youmi/android/a/a/j/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/a/a/j/b/f;


# direct methods
.method constructor <init>(Lnet/youmi/android/a/a/j/b/f;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/a/a/j/b/h;->a:Lnet/youmi/android/a/a/j/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/a/a/j/b/h;->a:Lnet/youmi/android/a/a/j/b/f;

    invoke-virtual {v0}, Lnet/youmi/android/a/a/j/b/f;->requestLayout()V

    return-void
.end method
