.class Lcom/umeng/socialize/media/UMRichMedia$3;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "UMRichMedia.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/media/UMRichMedia;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/umeng/socialize/media/UMediaObject;

.field private final synthetic b:Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/media/UMediaObject;Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/media/UMRichMedia$3;->a:Lcom/umeng/socialize/media/UMediaObject;

    iput-object p2, p0, Lcom/umeng/socialize/media/UMRichMedia$3;->b:Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;

    .line 283
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/media/UMRichMedia;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia$3;->a:Lcom/umeng/socialize/media/UMediaObject;

    invoke-static {v0}, Lcom/umeng/socialize/media/UMRichMedia;->toUMRichMedia(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMRichMedia;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/media/UMRichMedia;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia$3;->b:Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia$3;->b:Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;->onComplete(Lcom/umeng/socialize/media/UMRichMedia;)V

    .line 306
    :cond_0
    const-string v0, ""

    const-string v1, "### toUMRichMedia completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMRichMedia$3;->a()Lcom/umeng/socialize/media/UMRichMedia;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/media/UMRichMedia;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMRichMedia$3;->a(Lcom/umeng/socialize/media/UMRichMedia;)V

    return-void
.end method
