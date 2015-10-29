.class Lcom/pubinfo/izhejiang/CountryListActivity$3;
.super Ljava/lang/Object;
.source "CountryListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/CountryListActivity;->getIndexView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/CountryListActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/CountryListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 275
    .local v3, "y":F
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->height:I
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$7(Lcom/pubinfo/izhejiang/CountryListActivity;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    float-to-int v0, v4

    .line 276
    .local v0, "index":I
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$4(Lcom/pubinfo/izhejiang/CountryListActivity;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$4(Lcom/pubinfo/izhejiang/CountryListActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v0

    .line 278
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->selector:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$6(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->selector:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$6(Lcom/pubinfo/izhejiang/CountryListActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 280
    .local v2, "pos":I
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$8(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$8(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/ListView;

    move-result-object v4

    .line 282
    iget-object v5, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$8(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v5, v2

    .line 281
    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 286
    :goto_0
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->tv_show:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$9(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->tv_show:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$9(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->indexStr:[Ljava/lang/String;
    invoke-static {v5}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$4(Lcom/pubinfo/izhejiang/CountryListActivity;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pos":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 305
    :goto_1
    :pswitch_0
    const/4 v4, 0x1

    return v4

    .line 284
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "pos":I
    :cond_1
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$8(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 292
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pos":I
    :pswitch_1
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->layoutIndex:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$10(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 293
    const-string v5, "#606060"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 292
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 300
    :pswitch_2
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->layoutIndex:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$10(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 301
    const-string v5, "#00ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 300
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 302
    iget-object v4, p0, Lcom/pubinfo/izhejiang/CountryListActivity$3;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    # getter for: Lcom/pubinfo/izhejiang/CountryListActivity;->tv_show:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/pubinfo/izhejiang/CountryListActivity;->access$9(Lcom/pubinfo/izhejiang/CountryListActivity;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
