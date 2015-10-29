.class Lcom/laiwang/sdk/utils/LWAPINotification$1;
.super Ljava/lang/Object;
.source "LWAPINotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$tempDuration:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/sdk/utils/LWAPINotification$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/laiwang/sdk/utils/LWAPINotification$1;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/laiwang/sdk/utils/LWAPINotification$1;->val$tempDuration:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    iget-object v1, p0, Lcom/laiwang/sdk/utils/LWAPINotification$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/laiwang/sdk/utils/LWAPINotification$1;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcom/laiwang/sdk/utils/LWAPINotification$1;->val$tempDuration:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 34
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 35
    return-void
.end method
