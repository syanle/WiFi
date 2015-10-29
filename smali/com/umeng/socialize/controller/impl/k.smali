.class Lcom/umeng/socialize/controller/impl/k;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/k;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/k;->e:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 801
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socom/util/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 812
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 817
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 818
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 819
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/k;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/k;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/k;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socom/util/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 820
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/k;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/k;->e:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 819
    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 821
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 805
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 806
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 807
    return-void
.end method
