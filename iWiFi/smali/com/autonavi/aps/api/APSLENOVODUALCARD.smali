.class public Lcom/autonavi/aps/api/APSLENOVODUALCARD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/aps/api/IAPS;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/autonavi/aps/api/APSLENOVODUALCARD;

.field private static d:Landroid/content/Context;

.field private static e:Lcom/autonavi/aps/api/TelephoneBean;

.field private static f:I

.field private static g:Landroid/net/ConnectivityManager;

.field private static h:Landroid/net/wifi/WifiManager;

.field private static i:Landroid/telephony/TelephonyManager;

.field private static j:Landroid/location/LocationManager;

.field private static k:Landroid/location/LocationListener;

.field private static l:Ljava/util/ArrayList;

.field private static m:Ljava/util/ArrayList;

.field private static n:Ljava/util/List;

.field private static o:Lcom/autonavi/aps/api/Des;

.field private static p:Landroid/telephony/PhoneStateListener;

.field private static q:I

.field private static r:Lcom/autonavi/aps/api/j;

.field private static s:Landroid/net/wifi/WifiInfo;

.field private static t:Ljava/lang/String;

.field private static u:Lcom/autonavi/aps/api/Location;

.field private static v:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->a:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->b:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->c:Lcom/autonavi/aps/api/APSLENOVODUALCARD;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->e:Lcom/autonavi/aps/api/TelephoneBean;

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->f:I

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->g:Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->h:Landroid/net/wifi/WifiManager;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->i:Landroid/telephony/TelephonyManager;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->j:Landroid/location/LocationManager;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->k:Landroid/location/LocationListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->n:Ljava/util/List;

    new-instance v0, Lcom/autonavi/aps/api/Des;

    const-string v1, "autonavi00spas$#@!666666"

    invoke-direct {v0, v1}, Lcom/autonavi/aps/api/Des;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->o:Lcom/autonavi/aps/api/Des;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->p:Landroid/telephony/PhoneStateListener;

    const/16 v0, 0xa

    sput v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->q:I

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->r:Lcom/autonavi/aps/api/j;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->t:Ljava/lang/String;

    sput-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->u:Lcom/autonavi/aps/api/Location;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->v:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->h:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcom/autonavi/aps/api/Location;
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/aps/api/NetManagerApache;->getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/NetManagerApache;

    move-result-object v0

    const-string v1, "http://aps.amap.com/APS/r"

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/aps/api/NetManagerApache;->doPostXmlAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->o:Lcom/autonavi/aps/api/Des;

    new-instance v2, Lcom/autonavi/aps/api/ParserResponse;

    invoke-direct {v2}, Lcom/autonavi/aps/api/ParserResponse;-><init>()V

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/api/ParserResponse;->ParserSapsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GBK"

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/aps/api/Des;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/autonavi/aps/api/ParserResponse;

    invoke-direct {v1}, Lcom/autonavi/aps/api/ParserResponse;-><init>()V

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/api/ParserResponse;->ParserApsXml(Ljava/lang/String;)Lcom/autonavi/aps/api/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/aps/api/Location;->getCenx()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(I)V
    .locals 0

    return-void
.end method

.method static synthetic b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(I)V
    .locals 0

    sput p0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->q:I

    return-void
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->q:I

    return v0
.end method

.method static synthetic e()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized f()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x3

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->getProductName()Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v6, :cond_1

    new-instance v1, Lcom/autonavi/aps/api/g;

    invoke-direct {v1, p0}, Lcom/autonavi/aps/api/g;-><init>(Lcom/autonavi/aps/api/APSLENOVODUALCARD;)V

    invoke-virtual {v1}, Lcom/autonavi/aps/api/g;->start()V

    :cond_1
    const/4 v1, 0x0

    sget-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->i:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    :cond_2
    sget-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->p:Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->p:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"GBK\" ?>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<location>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<license>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</license>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<src>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</src>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<imei>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->e:Lcom/autonavi/aps/api/TelephoneBean;

    invoke-virtual {v3}, Lcom/autonavi/aps/api/TelephoneBean;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</imei>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "<network>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</network>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_0
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    :cond_5
    const-string v0, "<macs>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</macs>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    const-string v0, "<clienttime>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->getCurrenttime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</clienttime>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</location>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/aps/api/ApsRequest;

    invoke-direct {v0}, Lcom/autonavi/aps/api/ApsRequest;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/api/ApsRequest;->convertApsRequestXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"GBK\" ?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<saps>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<src>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</src>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "<sreq>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->o:Lcom/autonavi/aps/api/Des;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/autonavi/aps/api/Des;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</sreq>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    const-string v1, "</saps>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_7
    if-gt v1, v6, :cond_5

    :try_start_3
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v6, :cond_6

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "<macs>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</macs>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9
    :try_start_4
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method public static getCurrenttime()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/APSLENOVODUALCARD;
    .locals 4

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->c:Lcom/autonavi/aps/api/APSLENOVODUALCARD;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;

    invoke-direct {v0}, Lcom/autonavi/aps/api/APSLENOVODUALCARD;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->c:Lcom/autonavi/aps/api/APSLENOVODUALCARD;

    sput-object p0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->h:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/autonavi/aps/api/j;

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->c:Lcom/autonavi/aps/api/APSLENOVODUALCARD;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/autonavi/aps/api/j;-><init>(Lcom/autonavi/aps/api/APSLENOVODUALCARD;)V

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->r:Lcom/autonavi/aps/api/j;

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    new-instance v0, Lcom/autonavi/aps/api/h;

    invoke-direct {v0}, Lcom/autonavi/aps/api/h;-><init>()V

    invoke-virtual {v0}, Lcom/autonavi/aps/api/h;->start()V

    :cond_0
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->r:Lcom/autonavi/aps/api/j;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->g:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->i:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    const-string v2, "lenovodualcard"

    invoke-static {v0, v1, v2}, Lcom/autonavi/aps/api/TelephoneBean;->getInstance(Landroid/telephony/TelephonyManager;Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/aps/api/TelephoneBean;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->e:Lcom/autonavi/aps/api/TelephoneBean;

    new-instance v0, Lcom/autonavi/aps/api/i;

    invoke-direct {v0}, Lcom/autonavi/aps/api/i;-><init>()V

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->p:Landroid/telephony/PhoneStateListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    sget-object v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->r:Lcom/autonavi/aps/api/j;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->c:Lcom/autonavi/aps/api/APSLENOVODUALCARD;

    return-object v0
.end method


# virtual methods
.method public getCurrentLocation(Landroid/location/Location;)Lcom/autonavi/aps/api/Location;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->u:Lcom/autonavi/aps/api/Location;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->u:Lcom/autonavi/aps/api/Location;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->u:Lcom/autonavi/aps/api/Location;

    goto :goto_0

    :cond_1
    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->t:Ljava/lang/String;

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->a(Ljava/lang/String;)Lcom/autonavi/aps/api/Location;

    move-result-object v0

    sput-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->u:Lcom/autonavi/aps/api/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->v:J

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->u:Lcom/autonavi/aps/api/Location;

    goto :goto_0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.201208161816"

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->d:Landroid/content/Context;

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->r:Lcom/autonavi/aps/api/j;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->i:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->p:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sput-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->i:Landroid/telephony/TelephonyManager;

    sput-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->k:Landroid/location/LocationListener;

    sput-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->p:Landroid/telephony/PhoneStateListener;

    sput-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->s:Landroid/net/wifi/WifiInfo;

    sput-object v3, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->c:Lcom/autonavi/aps/api/APSLENOVODUALCARD;

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public setLicence(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->a:Ljava/lang/String;

    return-void
.end method

.method public setOpenGps(Z)V
    .locals 0

    return-void
.end method

.method public setOpenSystemNetworkLocation(Z)V
    .locals 0

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/autonavi/aps/api/APSLENOVODUALCARD;->b:Ljava/lang/String;

    return-void
.end method
