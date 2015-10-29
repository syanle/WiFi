.class Lcom/ta/exception/TAAppException$1$1;
.super Ljava/lang/Object;
.source "TAAppException.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/exception/TAAppException$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ta/exception/TAAppException$1;


# direct methods
.method constructor <init>(Lcom/ta/exception/TAAppException$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/exception/TAAppException$1$1;->this$1:Lcom/ta/exception/TAAppException$1;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 95
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 96
    return-void
.end method
