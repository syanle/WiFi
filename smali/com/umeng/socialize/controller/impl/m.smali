.class Lcom/umeng/socialize/controller/impl/m;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private final synthetic d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/m;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/m;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/m;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/m;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1182
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1183
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1186
    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/m;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/m;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/m;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/m;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1192
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6AppId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/m;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/m;->b:Landroid/content/Context;

    .line 1176
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/m;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v3, ""

    const/4 v4, 0x0

    .line 1175
    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    .line 1177
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1178
    return-void
.end method
