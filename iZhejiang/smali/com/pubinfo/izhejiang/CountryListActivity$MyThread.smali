.class public Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;
.super Ljava/lang/Thread;
.source "CountryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/CountryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/CountryListActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/CountryListActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 162
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # invokes: Lcom/pubinfo/izhejiang/CountryListActivity;->setData()V
    invoke-static {v3}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$0(Lcom/pubinfo/izhejiang/CountryListActivity;)V

    .line 163
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->persons:Ljava/util/List;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$1(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->sortIndex(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "allNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # invokes: Lcom/pubinfo/izhejiang/CountryListActivity;->sortList([Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$2(Lcom/pubinfo/izhejiang/CountryListActivity;[Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$3(Lcom/pubinfo/izhejiang/CountryListActivity;Ljava/util/HashMap;)V

    .line 166
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$4(Lcom/pubinfo/izhejiang/CountryListActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v3, :cond_0

    .line 177
    .end local v0    # "allNames":[Ljava/lang/String;
    .end local v2    # "j":I
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 178
    return-void

    .line 167
    .restart local v0    # "allNames":[Ljava/lang/String;
    .restart local v2    # "j":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$5(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->newPersons:Ljava/util/List;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$5(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cat/data/Person;

    invoke-virtual {v3}, Lcom/cat/data/Person;->getCountrycn()Ljava/lang/String;

    move-result-object v3

    .line 169
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$4(Lcom/pubinfo/izhejiang/CountryListActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->selector:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$6(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$4(Lcom/pubinfo/izhejiang/CountryListActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 175
    .end local v0    # "allNames":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "j":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method
