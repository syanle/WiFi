.class public Lcom/umeng/socialize/bean/QQShareMsg;
.super Ljava/lang/Object;
.source "QQShareMsg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/bean/QQShareMsg;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/String; = "QQShareMsg"

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/QQShareMsg;->i:Ljava/util/Map;

    .line 239
    new-instance v0, Lcom/umeng/socialize/bean/n;

    invoke-direct {v0}, Lcom/umeng/socialize/bean/n;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/QQShareMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 249
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    .line 36
    const-string v0, "http://www.umeng.com/social"

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    .line 40
    const-string v0, "http://www.umeng.com/social"

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->d:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->e:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->f:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/umeng/socialize/bean/QQShareMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/umeng/socialize/bean/QQShareMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    .line 36
    const-string v0, "http://www.umeng.com/social"

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    .line 40
    const-string v0, "http://www.umeng.com/social"

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->d:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->e:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->f:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private h(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/umeng/socialize/bean/QQShareMsg;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    .line 137
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/umeng/socialize/bean/QQShareMsg;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iput-object p1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->d:Ljava/lang/String;

    .line 152
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->e:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->f:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x1

    .line 202
    iget-object v1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 205
    const-string v1, "QQShareMsg"

    .line 206
    const-string v2, "\u9519\u8bef\u63d0\u793a : UMQQSsoHandler\u7684title,summary,imageurl\u5fc5\u987b\u8bbe\u7f6e\u5176\u4e2d\u4e00\u4e2a!!!"

    .line 205
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    .line 228
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/umeng/socialize/bean/QQShareMsg;->i:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Title : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Summary : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string v1, ", ImageUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TargetUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    const-string v1, ", ContentUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/bean/QQShareMsg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/umeng/socialize/bean/QQShareMsg;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    return-void
.end method
