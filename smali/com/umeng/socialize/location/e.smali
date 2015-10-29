.class Lcom/umeng/socialize/location/e;
.super Ljava/lang/Object;
.source "SocializeLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/location/d;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J

.field private final synthetic d:F

.field private final synthetic e:Landroid/location/LocationListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/location/d;Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/location/e;->a:Lcom/umeng/socialize/location/d;

    iput-object p2, p0, Lcom/umeng/socialize/location/e;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/umeng/socialize/location/e;->c:J

    iput p5, p0, Lcom/umeng/socialize/location/e;->d:F

    iput-object p6, p0, Lcom/umeng/socialize/location/e;->e:Landroid/location/LocationListener;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/location/e;->a:Lcom/umeng/socialize/location/d;

    iget-object v0, v0, Lcom/umeng/socialize/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/umeng/socialize/location/e;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/umeng/socialize/location/e;->c:J

    iget v4, p0, Lcom/umeng/socialize/location/e;->d:F

    iget-object v5, p0, Lcom/umeng/socialize/location/e;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 52
    return-void
.end method
