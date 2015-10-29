.class Lcom/mapabc/mapapi/location/a$a;
.super Landroid/os/Handler;
.source "IAPSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mapabc/mapapi/location/a;


# direct methods
.method constructor <init>(Lcom/mapabc/mapapi/location/a;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mapabc/mapapi/location/a;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/a;->a(Lcom/mapabc/mapapi/location/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 217
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 218
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/a;->a(Lcom/mapabc/mapapi/location/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mapabc/mapapi/location/a$b;

    .line 219
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/location/a$b;

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/location/a$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v1, v1, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/location/a$b;

    iget-object v0, v0, Lcom/mapabc/mapapi/location/a$b;->f:Landroid/location/Location;

    invoke-interface {v1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 217
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 224
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mapabc/mapapi/location/a;->d()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 225
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/a;->b(Lcom/mapabc/mapapi/location/a;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v0}, Lcom/mapabc/mapapi/location/a;->b(Lcom/mapabc/mapapi/location/a;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    iget-object v2, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v2}, Lcom/mapabc/mapapi/location/a;->c(Lcom/mapabc/mapapi/location/a;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v4}, Lcom/mapabc/mapapi/location/a;->d(Lcom/mapabc/mapapi/location/a;)F

    move-result v4

    iget-object v5, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v5}, Lcom/mapabc/mapapi/location/a;->e(Lcom/mapabc/mapapi/location/a;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 229
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/location/a;->a(Lcom/mapabc/mapapi/location/a;Z)Z

    .line 249
    :cond_2
    :goto_1
    return-void

    .line 231
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mapabc/mapapi/location/a;->e()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mapabc/mapapi/location/a$b;

    .line 233
    iget-object v1, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v1}, Lcom/mapabc/mapapi/location/a;->a(Lcom/mapabc/mapapi/location/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v1}, Lcom/mapabc/mapapi/location/a;->a(Lcom/mapabc/mapapi/location/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mapabc/mapapi/location/a;->f()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 237
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/LocationListener;

    .line 239
    iget-object v1, p0, Lcom/mapabc/mapapi/location/a$a;->a:Lcom/mapabc/mapapi/location/a;

    invoke-static {v1}, Lcom/mapabc/mapapi/location/a;->a(Lcom/mapabc/mapapi/location/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapabc/mapapi/location/a$b;

    .line 243
    iget-object v1, v1, Lcom/mapabc/mapapi/location/a$b;->c:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method
