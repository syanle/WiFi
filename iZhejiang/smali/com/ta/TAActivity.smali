.class public abstract Lcom/ta/TAActivity;
.super Landroid/app/Activity;
.source "TAActivity.java"


# static fields
.field private static final DIALOG_ID_PROGRESS_DEFAULT:I = 0x174980

.field private static final TAIDENTITYCOMMAND:Ljava/lang/String; = "taidentitycommand"


# instance fields
.field private layouName:Ljava/lang/String;

.field private moduleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/TAActivity;->moduleName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/TAActivity;->layouName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private initActivity()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getModuleName()Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getLayouName()Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/ta/TAActivity;->initInjector()V

    .line 84
    invoke-direct {p0}, Lcom/ta/TAActivity;->loadDefautLayout()V

    .line 85
    return-void
.end method

.method private initInjector()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getInjector()Lcom/ta/util/TAInjector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/util/TAInjector;->injectResource(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getInjector()Lcom/ta/util/TAInjector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/util/TAInjector;->inject(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method private loadDefautLayout()V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/TAApplication;->getLayoutLoader()Lcom/ta/util/layoutloader/TAILayoutLoader;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/ta/TAActivity;->layouName:Ljava/lang/String;

    .line 109
    invoke-interface {v2, v3}, Lcom/ta/util/layoutloader/TAILayoutLoader;->getLayoutID(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "layoutResID":I
    invoke-virtual {p0, v1}, Lcom/ta/TAActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "layoutResID":I
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private notifiyApplicationActivityCreated()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/TAApplication;->onActivityCreated(Lcom/ta/TAActivity;)V

    .line 66
    return-void
.end method

.method private notifiyApplicationActivityCreating()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/TAApplication;->onActivityCreating(Lcom/ta/TAActivity;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final back()V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->back()V

    .line 311
    return-void
.end method

.method public final doActivity(I)V
    .locals 1
    .param p1, "activityResID"    # I

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ta/TAActivity;->doActivity(ILandroid/os/Bundle;)V

    .line 394
    return-void
.end method

.method public final doActivity(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "activityResID"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 398
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 399
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p2}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setActivityKeyResID(I)V

    .line 402
    const-string v1, "taidentitycommand"

    invoke-virtual {p0, v1, v0}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;)V

    .line 403
    return-void
.end method

.method public final doCommand(ILcom/ta/mvc/common/TARequest;)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/ta/TAActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "commandKey":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;Z)V

    .line 230
    return-void
.end method

.method public final doCommand(ILcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/ta/TAActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "commandKey":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;Z)V

    .line 242
    return-void
.end method

.method public final doCommand(ILcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;Z)V
    .locals 6
    .param p1, "resId"    # I
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .param p4, "showProgress"    # Z

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/ta/TAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "commandKey":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "go with cmdid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    const-string v2, ", request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZ)V

    .line 257
    return-void
.end method

.method public final doCommand(ILcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZ)V
    .locals 7
    .param p1, "resId"    # I
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .param p4, "showProgress"    # Z
    .param p5, "record"    # Z

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/ta/TAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "commandKey":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "go with cmdid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    const-string v2, ", record: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZZ)V

    .line 274
    return-void
.end method

.method public final doCommand(ILcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZZ)V
    .locals 7
    .param p1, "resId"    # I
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .param p4, "showProgress"    # Z
    .param p5, "record"    # Z
    .param p6, "resetStack"    # Z

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/ta/TAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "commandKey":Ljava/lang/String;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 289
    invoke-virtual/range {v0 .. v6}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZZ)V

    .line 291
    return-void
.end method

.method public final doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;)V
    .locals 2
    .param p1, "commandKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;

    .prologue
    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;Z)V

    .line 235
    return-void
.end method

.method public final doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;)V
    .locals 1
    .param p1, "commandKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;

    .prologue
    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;Z)V

    .line 248
    return-void
.end method

.method public final doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;Z)V
    .locals 6
    .param p1, "commandKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .param p4, "showProgress"    # Z

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "go with cmdid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string v1, ", request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZ)V

    .line 265
    return-void
.end method

.method public final doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZ)V
    .locals 7
    .param p1, "commandKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .param p4, "showProgress"    # Z
    .param p5, "record"    # Z

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "go with cmdid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    const-string v1, ", record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ta/TAActivity;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZZ)V

    .line 282
    return-void
.end method

.method public final doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZZ)V
    .locals 6
    .param p1, "commandKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "listener"    # Lcom/ta/mvc/common/TAIResponseListener;
    .param p4, "showProgress"    # Z
    .param p5, "record"    # Z
    .param p6, "resetStack"    # Z

    .prologue
    .line 297
    if-eqz p4, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/ta/TAActivity;->showProgress()V

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/ta/TAApplication;->doCommand(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;Lcom/ta/mvc/common/TAIResponseListener;ZZ)V

    .line 303
    return-void
.end method

.method public exitApp()V
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ta/TAApplication;->exitApp(Ljava/lang/Boolean;)V

    .line 375
    return-void
.end method

.method public exitApp(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isBackground"    # Ljava/lang/Boolean;

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ta/TAApplication;->exitApp(Ljava/lang/Boolean;)V

    .line 366
    return-void
.end method

.method public exitAppToBackground()V
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ta/TAApplication;->exitApp(Ljava/lang/Boolean;)V

    .line 384
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 355
    return-void
.end method

.method public getLayouName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ta/TAActivity;->layouName:Ljava/lang/String;

    .line 184
    .local v0, "layouName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/ta/TAActivity;->moduleName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ta/TAActivity;->layouName:Ljava/lang/String;

    .line 188
    :cond_1
    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 156
    iget-object v1, p0, Lcom/ta/TAActivity;->moduleName:Ljava/lang/String;

    .line 157
    .local v1, "moduleName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    .line 159
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "arrays":[Ljava/lang/String;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 162
    iput-object v1, p0, Lcom/ta/TAActivity;->moduleName:Ljava/lang/String;

    .line 165
    .end local v0    # "arrays":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getTAApplication()Lcom/ta/TAApplication;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/ta/TAApplication;

    return-object v0
.end method

.method protected hideProgress()V
    .locals 1

    .prologue
    .line 328
    const v0, 0x174980

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ta/TAActivity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onAfterOnCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    return-void
.end method

.method protected onAfterSetContentView()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/ta/TAActivity;->back()V

    .line 409
    return-void
.end method

.method public onConnect(Lcom/ta/util/netstate/TANetWorkUtil$netType;)V
    .locals 0
    .param p1, "type"    # Lcom/ta/util/netstate/TANetWorkUtil$netType;

    .prologue
    .line 340
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ta/TAActivity;->notifiyApplicationActivityCreating()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/ta/TAActivity;->onPreOnCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getAppManager()Lcom/ta/TAAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/TAAppManager;->addActivity(Landroid/app/Activity;)V

    .line 48
    invoke-direct {p0}, Lcom/ta/TAActivity;->initActivity()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/ta/TAActivity;->onAfterOnCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/ta/TAActivity;->notifiyApplicationActivityCreated()V

    .line 51
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 212
    packed-switch p1, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 215
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "dlg":Landroid/app/ProgressDialog;
    const-string v1, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x174980
        :pswitch_0
    .end packed-switch
.end method

.method public onDisConnect()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method protected onPreOnCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    const-string v1, "taidentitycommand"

    .line 72
    const-class v2, Lcom/ta/mvc/command/TAIdentityCommand;

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/ta/TAApplication;->registerCommand(Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    return-void
.end method

.method public preProcessData(Lcom/ta/mvc/common/TAResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/ta/mvc/common/TAResponse;

    .prologue
    .line 202
    return-void
.end method

.method public processData(Lcom/ta/mvc/common/TAResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/ta/mvc/common/TAResponse;

    .prologue
    .line 207
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getInjector()Lcom/ta/util/TAInjector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/util/TAInjector;->injectView(Landroid/app/Activity;)V

    .line 126
    invoke-virtual {p0}, Lcom/ta/TAActivity;->onAfterSetContentView()V

    .line 127
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getInjector()Lcom/ta/util/TAInjector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/util/TAInjector;->injectView(Landroid/app/Activity;)V

    .line 142
    invoke-virtual {p0}, Lcom/ta/TAActivity;->onAfterSetContentView()V

    .line 143
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {p0}, Lcom/ta/TAActivity;->getTAApplication()Lcom/ta/TAApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/TAApplication;->getInjector()Lcom/ta/util/TAInjector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ta/util/TAInjector;->injectView(Landroid/app/Activity;)V

    .line 134
    invoke-virtual {p0}, Lcom/ta/TAActivity;->onAfterSetContentView()V

    .line 135
    return-void
.end method

.method protected setLayouName(Ljava/lang/String;)V
    .locals 0
    .param p1, "layouName"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/ta/TAActivity;->layouName:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ta/TAActivity;->moduleName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method protected showProgress()V
    .locals 1

    .prologue
    .line 318
    const v0, 0x174980

    invoke-virtual {p0, v0}, Lcom/ta/TAActivity;->showDialog(I)V

    .line 319
    return-void
.end method
