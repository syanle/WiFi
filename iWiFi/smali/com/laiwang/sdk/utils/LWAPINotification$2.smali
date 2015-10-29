.class Lcom/laiwang/sdk/utils/LWAPINotification$2;
.super Ljava/lang/Object;
.source "LWAPINotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(ILandroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$msg:I

.field private final synthetic val$tempDuration:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/sdk/utils/LWAPINotification$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/laiwang/sdk/utils/LWAPINotification$2;->val$msg:I

    iput p3, p0, Lcom/laiwang/sdk/utils/LWAPINotification$2;->val$tempDuration:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    iget-object v1, p0, Lcom/laiwang/sdk/utils/LWAPINotification$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/laiwang/sdk/utils/LWAPINotification$2;->val$msg:I

    iget v3, p0, Lcom/laiwang/sdk/utils/LWAPINotification$2;->val$tempDuration:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 51
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    return-void
.end method
