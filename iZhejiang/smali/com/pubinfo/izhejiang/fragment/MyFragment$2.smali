.class Lcom/pubinfo/izhejiang/fragment/MyFragment$2;
.super Landroid/os/Handler;
.source "MyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/MyFragment;->initialHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/MyFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    .line 159
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 162
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v6

    .line 166
    invoke-virtual {v6}, Lcom/cat/data/ComData;->getUserInfoData()Ljava/util/List;

    move-result-object v3

    .line 167
    .local v3, "lst_userinfo":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UserInfoData;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 172
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/UserInfoData;

    invoke-virtual {v6}, Lcom/cat/data/UserInfoData;->getFace()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->facenew:Ljava/lang/String;

    .line 173
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/UserInfoData;

    invoke-virtual {v6}, Lcom/cat/data/UserInfoData;->getFaceurl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->faceurl:Ljava/lang/String;

    .line 175
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/UserInfoData;

    invoke-virtual {v6}, Lcom/cat/data/UserInfoData;->getPoint()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->point:Ljava/lang/String;

    .line 176
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/UserInfoData;

    invoke-virtual {v6}, Lcom/cat/data/UserInfoData;->getGrade()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->grade:Ljava/lang/String;

    .line 177
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/UserInfoData;

    invoke-virtual {v6}, Lcom/cat/data/UserInfoData;->getNick()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    .line 178
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/UserInfoData;

    invoke-virtual {v6}, Lcom/cat/data/UserInfoData;->getEmail()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->email:Ljava/lang/String;

    .line 179
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/UserInfoData;

    .line 180
    invoke-virtual {v6}, Lcom/cat/data/UserInfoData;->getConnecttimes()Ljava/lang/String;

    move-result-object v6

    .line 179
    iput-object v6, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->connecttimes:Ljava/lang/String;

    .line 181
    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/UserInfoData;

    invoke-virtual {v6}, Lcom/cat/data/UserInfoData;->getIsnewpush()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isnewpush:Ljava/lang/String;

    .line 185
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 186
    const-string v7, "MyFragment"

    invoke-virtual {v6, v7, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 187
    .local v4, "sharedata":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    const-string v7, "face"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->face:Ljava/lang/String;

    .line 189
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 190
    :cond_1
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_nick:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_1
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_level:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->grade:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_jifen:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->point:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_times:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->connecttimes:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isnewpush:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 198
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    .line 200
    const v7, 0x7f0200ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    :goto_2
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->facenew:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->facenew:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 207
    :cond_2
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->chosePhoto()V

    .line 217
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 218
    const-string v7, "MyFragment"

    invoke-virtual {v6, v7, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 219
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 223
    .local v5, "sharedata2":Landroid/content/SharedPreferences$Editor;
    const-string v6, "face"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->face:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    const-string v6, "faceurl"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->faceurl:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    const-string v6, "point"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->point:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    const-string v6, "grade"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->grade:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    const-string v6, "nick"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v6, "email"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->email:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v6, "connecttimes"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->connecttimes:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v6, "isnewpush"

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isnewpush:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 192
    .end local v5    # "sharedata2":Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->tv_nick:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->nick:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 202
    :cond_5
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->iv_pushmsg:Landroid/widget/ImageView;

    .line 204
    const v7, 0x7f0200aa

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 209
    :cond_6
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v6, v6, Lcom/pubinfo/izhejiang/fragment/MyFragment;->facenew:Ljava/lang/String;

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    iget-object v7, v7, Lcom/pubinfo/izhejiang/fragment/MyFragment;->face:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 210
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->chosePhoto()V

    goto/16 :goto_3

    .line 212
    :cond_7
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 213
    new-instance v6, Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;

    iget-object v7, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-direct {v6, v7}, Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;-><init>(Lcom/pubinfo/izhejiang/fragment/MyFragment;)V

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment$MyThread;->start()V

    goto/16 :goto_3

    .line 236
    .end local v3    # "lst_userinfo":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UserInfoData;>;"
    .end local v4    # "sharedata":Landroid/content/SharedPreferences;
    :pswitch_1
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    # invokes: Lcom/pubinfo/izhejiang/fragment/MyFragment;->init()V
    invoke-static {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->access$1(Lcom/pubinfo/izhejiang/fragment/MyFragment;)V

    goto/16 :goto_0

    .line 269
    :pswitch_2
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 270
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->chosePhoto()V

    goto/16 :goto_0

    .line 274
    :pswitch_3
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Lcom/cat/data/ComData;->getpError()Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, "arryerror":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 278
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cat/data/PublicError;

    invoke-virtual {v6}, Lcom/cat/data/PublicError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "errormessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/pubinfo/izhejiang/fragment/MyFragment$2;->this$0:Lcom/pubinfo/izhejiang/fragment/MyFragment;

    invoke-virtual {v6}, Lcom/pubinfo/izhejiang/fragment/MyFragment;->isAdded()Z

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
