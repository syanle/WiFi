.class Lcom/ta/exception/TAAppException$1;
.super Ljava/lang/Thread;
.source "TAAppException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/exception/TAAppException;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/exception/TAAppException;


# direct methods
.method constructor <init>(Lcom/ta/exception/TAAppException;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/exception/TAAppException$1;->this$0:Lcom/ta/exception/TAAppException;

    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ta/exception/TAAppException$1;->this$0:Lcom/ta/exception/TAAppException;

    # getter for: Lcom/ta/exception/TAAppException;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ta/exception/TAAppException;->access$0(Lcom/ta/exception/TAAppException;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7a0b\u5e8f\u5d29\u6e83\u4e86..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 87
    const-string v1, "\u6211\u77e5\u9053\u4e86"

    new-instance v2, Lcom/ta/exception/TAAppException$1$1;

    invoke-direct {v2, p0}, Lcom/ta/exception/TAAppException$1$1;-><init>(Lcom/ta/exception/TAAppException$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 98
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 99
    return-void
.end method
