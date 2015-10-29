.class Lcom/pubinfo/izhejiang/HideMenuActivity$4;
.super Ljava/lang/Object;
.source "HideMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/HideMenuActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/HideMenuActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/HideMenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/HideMenuActivity$4;->this$0:Lcom/pubinfo/izhejiang/HideMenuActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/pubinfo/izhejiang/HideMenuActivity$4;->this$0:Lcom/pubinfo/izhejiang/HideMenuActivity;

    const v3, 0x7f0a0053

    invoke-virtual {v2, v3}, Lcom/pubinfo/izhejiang/HideMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 76
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "ip":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6307\u5b9a\u7684ip\u5730\u5740\u4e3a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/pubinfo/izhejiang/HideMenuActivity$4;->this$0:Lcom/pubinfo/izhejiang/HideMenuActivity;

    invoke-virtual {v2, v1}, Lcom/pubinfo/izhejiang/HideMenuActivity;->setIp(Ljava/lang/String;)V

    .line 79
    return-void
.end method
