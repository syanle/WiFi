.class Lcom/umeng/socialize/media/UMRichMedia$2;
.super Landroid/os/AsyncTask;
.source "UMRichMedia.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/media/UMRichMedia;

.field private final synthetic b:Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/media/UMRichMedia;Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/media/UMRichMedia$2;->a:Lcom/umeng/socialize/media/UMRichMedia;

    iput-object p2, p0, Lcom/umeng/socialize/media/UMRichMedia$2;->b:Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;

    .line 133
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([B)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia$2;->b:Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;->onComplete([B)V

    .line 143
    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[B
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/umeng/socialize/media/UMRichMedia$2;->a:Lcom/umeng/socialize/media/UMRichMedia;

    invoke-static {v0}, Lcom/umeng/socialize/media/UMRichMedia;->a(Lcom/umeng/socialize/media/UMRichMedia;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMRichMedia$2;->a([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMRichMedia$2;->a([B)V

    return-void
.end method
