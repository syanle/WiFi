.class Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;
.super Ljava/lang/Object;
.source "PersonInfomationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/PersonInfomationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x3

    const/4 v12, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 99
    :sswitch_0
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    .line 100
    const-class v9, Lcom/pubinfo/izhejiang/EditInfomationActivity;

    .line 99
    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "usertag"

    const-string v9, "nick"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v8, "nick"

    iget-object v9, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->nameTV:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    const/4 v9, 0x4

    invoke-virtual {v8, v4, v9}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 124
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, "data":Landroid/content/Intent;
    const-string v8, "username"

    iget-object v9, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->phone:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v8, "countrycode"

    iget-object v9, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v9, v9, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->countrycode:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v8, "tag"

    const-string v9, "back"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v8, v10, v0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->setResult(ILandroid/content/Intent;)V

    .line 129
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v8}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->finish()V

    goto :goto_0

    .line 132
    .end local v0    # "data":Landroid/content/Intent;
    :sswitch_2
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    .line 133
    const-string v9, "LoginSucess"

    .line 132
    invoke-virtual {v8, v9, v12}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 134
    .local v7, "sharedata":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 135
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v1, "data2":Landroid/content/Intent;
    const-string v8, "tag"

    const-string v9, "zhuxiao"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v8, v10, v1}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->setResult(ILandroid/content/Intent;)V

    .line 141
    :try_start_0
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v8}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lorg/androidpn/client/ServiceManager;->getInstance(Landroid/content/Context;)Lorg/androidpn/client/ServiceManager;

    move-result-object v8

    .line 142
    invoke-virtual {v8}, Lorg/androidpn/client/ServiceManager;->disconnectPnServer()V

    .line 143
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    sget-object v9, Lcom/cat/tools/APPConf;->PHOTO_AFTERCUT_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v5, "newFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/cat/tools/APPConf;->PHOTO_SAVE2_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    sget-object v9, Lcom/cat/tools/APPConf;->PHOTO_BEFORECUT_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v6, "oleFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v5    # "newFile":Ljava/io/File;
    .end local v6    # "oleFile":Ljava/io/File;
    :goto_1
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-virtual {v8}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->finish()V

    goto/16 :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v1    # "data2":Landroid/content/Intent;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "sharedata":Landroid/content/SharedPreferences;
    :sswitch_3
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    new-instance v9, Lcom/cat/tools/SelectPicPopupWindow;

    .line 156
    iget-object v10, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v11, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    # getter for: Lcom/pubinfo/izhejiang/PersonInfomationActivity;->itemsOnClick:Landroid/view/View$OnClickListener;
    invoke-static {v11}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->access$2(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)Landroid/view/View$OnClickListener;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cat/tools/SelectPicPopupWindow;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v9, v8, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->menuWindow:Lcom/cat/tools/SelectPicPopupWindow;

    .line 157
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v8, v8, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->menuWindow:Lcom/cat/tools/SelectPicPopupWindow;

    const-string v9, "\u62cd\u6444"

    const-string v10, "\u4ece\u624b\u673a\u76f8\u518c\u9009\u62e9"

    invoke-virtual {v8, v9, v10}, Lcom/cat/tools/SelectPicPopupWindow;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v8, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    iget-object v8, v8, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->menuWindow:Lcom/cat/tools/SelectPicPopupWindow;

    iget-object v9, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$3;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    .line 160
    const v10, 0x7f0a0022

    invoke-virtual {v9, v10}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x51

    .line 159
    invoke-virtual {v8, v9, v10, v12, v12}, Lcom/cat/tools/SelectPicPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a002c -> :sswitch_1
        0x7f0a006e -> :sswitch_3
        0x7f0a0072 -> :sswitch_0
        0x7f0a00b8 -> :sswitch_2
    .end sparse-switch
.end method
