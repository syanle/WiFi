.class Lcom/pubinfo/izhejiang/CountryListActivity$1;
.super Ljava/lang/Object;
.source "CountryListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/CountryListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/CountryListActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/CountryListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/CountryListActivity;->activity:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/CountryListActivity;->activity:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/CountryListActivity;->activity:Ljava/lang/String;

    const-string v2, "RegistFirstActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "code"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$5(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/Person;

    invoke-virtual {v1}, Lcom/cat/data/Person;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v2, "countrycn"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$5(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/Person;

    .line 97
    invoke-virtual {v1}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/pubinfo/izhejiang/CountryListActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/CountryListActivity;->finish()V

    .line 131
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/CountryListActivity;->activity:Ljava/lang/String;

    const-string v2, "LoginActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .restart local v0    # "data":Landroid/content/Intent;
    const-string v2, "code"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$5(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/Person;

    invoke-virtual {v1}, Lcom/cat/data/Person;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "countrycn"

    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$5(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cat/data/Person;

    .line 114
    invoke-virtual {v1}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "Activity"

    const-string v2, "CountryListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/pubinfo/izhejiang/CountryListActivity;->setResult(ILandroid/content/Intent;)V

    .line 117
    iget-object v1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$1;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    invoke-virtual {v1}, Lcom/pubinfo/izhejiang/CountryListActivity;->finish()V

    goto :goto_0
.end method
