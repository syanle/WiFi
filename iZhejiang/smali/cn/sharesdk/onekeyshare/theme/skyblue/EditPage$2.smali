.class Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->initImageListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;>;"
    if-nez p1, :cond_1

    .line 141
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    const-string v3, "imagesLinearLayout"

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 136
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    .line 137
    .local v0, "imageInfo":Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    iget-object v3, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    # invokes: Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->makeImageItemView(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Landroid/view/View;
    invoke-static {v3, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->access$1(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
