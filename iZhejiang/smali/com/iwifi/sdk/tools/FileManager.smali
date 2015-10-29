.class public Lcom/iwifi/sdk/tools/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field public static final MIME_TYPE_TABLE:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 438
    const/16 v0, 0xde

    new-array v0, v0, [[Ljava/lang/String;

    .line 439
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".doc"

    aput-object v2, v1, v4

    const-string v2, "application/msword"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 440
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".docx"

    aput-object v2, v1, v4

    const-string v2, "application/msword"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".pdf"

    aput-object v2, v1, v4

    const-string v2, "application/pdf"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 441
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xls"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 442
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xlsx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 443
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ppt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 444
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pptx"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 445
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rar"

    aput-object v3, v2, v4

    const-string v3, "application/x-rar-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 446
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".zip"

    aput-object v3, v2, v4

    const-string v3, "application/zip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpeg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 447
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bmp"

    aput-object v3, v2, v4

    const-string v3, "image/bmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 448
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".png"

    aput-object v3, v2, v4

    const-string v3, "image/png"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".txt"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 449
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp3"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 450
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".java"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 451
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".apk"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.android.package-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 452
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpe"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xml"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 453
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".3gp"

    aput-object v3, v2, v4

    const-string v3, "video/3gpp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".stl"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pkistl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 454
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rmvb"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wma"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 455
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wmv"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wmv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".c"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 456
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".h"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".evy"

    aput-object v3, v2, v4

    const-string v3, "application/envoy"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 457
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".fif"

    aput-object v3, v2, v4

    const-string v3, "application/fractals"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 458
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".spl"

    aput-object v3, v2, v4

    const-string v3, "application/futuresplash"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 459
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".hta"

    aput-object v3, v2, v4

    const-string v3, "application/hta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 460
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".acx"

    aput-object v3, v2, v4

    const-string v3, "application/internet-property-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 461
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".hqx"

    aput-object v3, v2, v4

    const-string v3, "application/mac-binhex40"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".conf"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 462
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cpp"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".dot"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 463
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bin"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 464
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".class"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 465
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".dms"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 466
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".exe"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 467
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".lha"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 468
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".lzh"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 469
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".oda"

    aput-object v3, v2, v4

    const-string v3, "application/oda"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".axs"

    aput-object v3, v2, v4

    const-string v3, "application/olescript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 470
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".prf"

    aput-object v3, v2, v4

    const-string v3, "application/pics-rules"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 471
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jar"

    aput-object v3, v2, v4

    const-string v3, "application/java-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 472
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".p10"

    aput-object v3, v2, v4

    const-string v3, "application/pkcs10"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 473
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".crl"

    aput-object v3, v2, v4

    const-string v3, "application/pkix-crl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 474
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ai"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".log"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 475
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".eps"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 476
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ps"

    aput-object v3, v2, v4

    const-string v3, "application/postscript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rtf"

    aput-object v3, v2, v4

    const-string v3, "application/rtf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 477
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".setpay"

    aput-object v3, v2, v4

    const-string v3, "application/set-payment-initiation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 478
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".setreg"

    aput-object v3, v2, v4

    const-string v3, "application/set-registration-initiation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 479
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4a"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4b"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 480
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4p"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4u"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 481
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4v"

    aput-object v3, v2, v4

    const-string v3, "video/x-m4v"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp2"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 482
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mpohun.certificate"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 483
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpg4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpga"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 484
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xla"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 485
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xlc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 486
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xlm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 487
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xlt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 488
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xlw"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ogg"

    aput-object v3, v2, v4

    const-string v3, "audio/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 489
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".msg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-outlook"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 490
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sst"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pkicertstore"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 491
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cat"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-pkiseccat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 492
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sh"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".prop"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 493
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rc"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 494
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pot"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 495
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 496
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpp"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-project"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 497
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wcm"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 498
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wdb"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 499
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wks"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 500
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 501
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".hlp"

    aput-object v3, v2, v4

    const-string v3, "application/winhlp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 502
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bcpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-bcpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 503
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cdf"

    aput-object v3, v2, v4

    const-string v3, "application/x-cdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 504
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".z"

    aput-object v3, v2, v4

    const-string v3, "application/x-compress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 505
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tgz"

    aput-object v3, v2, v4

    const-string v3, "application/x-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 506
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-cpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".csh"

    aput-object v3, v2, v4

    const-string v3, "application/x-csh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 507
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".dcr"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 508
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".dir"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 509
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".dxr"

    aput-object v3, v2, v4

    const-string v3, "application/x-director"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 510
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".dvi"

    aput-object v3, v2, v4

    const-string v3, "application/x-dvi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gtar"

    aput-object v3, v2, v4

    const-string v3, "application/x-gtar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 511
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gz"

    aput-object v3, v2, v4

    const-string v3, "application/x-gzip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".hdf"

    aput-object v3, v2, v4

    const-string v3, "application/x-hdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 512
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ins"

    aput-object v3, v2, v4

    const-string v3, "application/x-internet-signup"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 513
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".isp"

    aput-object v3, v2, v4

    const-string v3, "application/x-internet-signup"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 514
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".iii"

    aput-object v3, v2, v4

    const-string v3, "application/x-iphone"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 515
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".js"

    aput-object v3, v2, v4

    const-string v3, "application/x-javascript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 516
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".latex"

    aput-object v3, v2, v4

    const-string v3, "application/x-latex"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 517
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mdb"

    aput-object v3, v2, v4

    const-string v3, "application/x-msaccess"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 518
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".crd"

    aput-object v3, v2, v4

    const-string v3, "application/x-mscardfile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 519
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".clp"

    aput-object v3, v2, v4

    const-string v3, "application/x-msclip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 520
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".dll"

    aput-object v3, v2, v4

    const-string v3, "application/x-msdownload"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 521
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m13"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 522
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m14"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 523
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mvb"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmediaview"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 524
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wmf"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmetafile"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 525
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mny"

    aput-object v3, v2, v4

    const-string v3, "application/x-msmoney"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 526
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pub"

    aput-object v3, v2, v4

    const-string v3, "application/x-mspublisher"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 527
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".scd"

    aput-object v3, v2, v4

    const-string v3, "application/x-msschedule"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 528
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".trm"

    aput-object v3, v2, v4

    const-string v3, "application/x-msterminal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 529
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wri"

    aput-object v3, v2, v4

    const-string v3, "application/x-mswrite"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 530
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cdf"

    aput-object v3, v2, v4

    const-string v3, "application/x-netcdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 531
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".nc"

    aput-object v3, v2, v4

    const-string v3, "application/x-netcdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 532
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pma"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 533
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pmc"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 534
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pml"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 535
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pmr"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 536
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pmw"

    aput-object v3, v2, v4

    const-string v3, "application/x-perfmon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 537
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".p12"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 538
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pfx"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs12"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 539
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".p7b"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certificates"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 540
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".spc"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certificates"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 541
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".p7r"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-certreqresp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 542
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".p7c"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-mime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 543
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".p7m"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-mime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 544
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".p7s"

    aput-object v3, v2, v4

    const-string v3, "application/x-pkcs7-signature"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 545
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sh"

    aput-object v3, v2, v4

    const-string v3, "application/x-sh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".shar"

    aput-object v3, v2, v4

    const-string v3, "application/x-shar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 546
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".swf"

    aput-object v3, v2, v4

    const-string v3, "application/x-shockwave-flash"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 547
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sit"

    aput-object v3, v2, v4

    const-string v3, "application/x-stuffit"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 548
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sv4cpio"

    aput-object v3, v2, v4

    const-string v3, "application/x-sv4cpio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 549
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sv4crc"

    aput-object v3, v2, v4

    const-string v3, "application/x-sv4crc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 550
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tar"

    aput-object v3, v2, v4

    const-string v3, "application/x-tar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tcl"

    aput-object v3, v2, v4

    const-string v3, "application/x-tcl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 551
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tex"

    aput-object v3, v2, v4

    const-string v3, "application/x-tex"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 552
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".texi"

    aput-object v3, v2, v4

    const-string v3, "application/x-texinfo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 553
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".texinfo"

    aput-object v3, v2, v4

    const-string v3, "application/x-texinfo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 554
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".roff"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 555
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".t"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tr"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 556
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".man"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff-man"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 557
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".me"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff-me"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 558
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ms"

    aput-object v3, v2, v4

    const-string v3, "application/x-troff-ms"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 559
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ustar"

    aput-object v3, v2, v4

    const-string v3, "application/x-ustar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 560
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".src"

    aput-object v3, v2, v4

    const-string v3, "application/x-wais-source"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 561
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cer"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 562
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".crt"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 563
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".der"

    aput-object v3, v2, v4

    const-string v3, "application/x-x509-ca-cert"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 564
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pko"

    aput-object v3, v2, v4

    const-string v3, "application/ynd.ms-pkipko"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".au"

    aput-object v3, v2, v4

    const-string v3, "audio/basic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 565
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".snd"

    aput-object v3, v2, v4

    const-string v3, "audio/basic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mid"

    aput-object v3, v2, v4

    const-string v3, "audio/mid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    .line 566
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rmi"

    aput-object v3, v2, v4

    const-string v3, "audio/mid"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp3"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    .line 567
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".aif"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".aifc"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 568
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".aiff"

    aput-object v3, v2, v4

    const-string v3, "audio/x-aiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m3u"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    .line 569
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ra"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    .line 570
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ram"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wav"

    aput-object v3, v2, v4

    const-string v3, "audio/x-wav"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    .line 571
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cod"

    aput-object v3, v2, v4

    const-string v3, "image/cis-cod"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gif"

    aput-object v3, v2, v4

    const-string v3, "image/gif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    .line 572
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ief"

    aput-object v3, v2, v4

    const-string v3, "image/ief"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jfif"

    aput-object v3, v2, v4

    const-string v3, "image/pipeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    .line 573
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".svg"

    aput-object v3, v2, v4

    const-string v3, "image/svg+xml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tif"

    aput-object v3, v2, v4

    const-string v3, "image/tiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xab

    .line 574
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tiff"

    aput-object v3, v2, v4

    const-string v3, "image/tiff"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ras"

    aput-object v3, v2, v4

    const-string v3, "image/x-cmu-raster"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xad

    .line 575
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cmx"

    aput-object v3, v2, v4

    const-string v3, "image/x-cmx"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ico"

    aput-object v3, v2, v4

    const-string v3, "image/x-icon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    .line 576
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pnm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-anymap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    .line 577
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pbm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-bitmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    .line 578
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pgm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-graymap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    .line 579
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ppm"

    aput-object v3, v2, v4

    const-string v3, "image/x-portable-pixmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rgb"

    aput-object v3, v2, v4

    const-string v3, "image/x-rgb"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    .line 580
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xbm"

    aput-object v3, v2, v4

    const-string v3, "image/x-xbitmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xpm"

    aput-object v3, v2, v4

    const-string v3, "image/x-xpixmap"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    .line 581
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xwd"

    aput-object v3, v2, v4

    const-string v3, "image/x-xwindowdump"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mht"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    .line 582
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mhtml"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".nws"

    aput-object v3, v2, v4

    const-string v3, "message/rfc822"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xba

    .line 583
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".css"

    aput-object v3, v2, v4

    const-string v3, "text/css"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".323"

    aput-object v3, v2, v4

    const-string v3, "text/h323"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    .line 584
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".htm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".html"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    .line 585
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".stm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".uls"

    aput-object v3, v2, v4

    const-string v3, "text/iuls"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    .line 586
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bas"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rtx"

    aput-object v3, v2, v4

    const-string v3, "text/richtext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    .line 587
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sct"

    aput-object v3, v2, v4

    const-string v3, "text/scriptlet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    .line 588
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tsv"

    aput-object v3, v2, v4

    const-string v3, "text/tab-separated-values"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    .line 589
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".htt"

    aput-object v3, v2, v4

    const-string v3, "text/webviewhtml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".htc"

    aput-object v3, v2, v4

    const-string v3, "text/x-component"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    .line 590
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".etx"

    aput-object v3, v2, v4

    const-string v3, "text/x-setext"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".vcf"

    aput-object v3, v2, v4

    const-string v3, "text/x-vcard"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 591
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp2"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpa"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xca

    .line 592
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpe"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpeg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    .line 593
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpv2"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xce

    .line 594
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mov"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".qt"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    .line 595
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".lsf"

    aput-object v3, v2, v4

    const-string v3, "video/x-la-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".lsx"

    aput-object v3, v2, v4

    const-string v3, "video/x-la-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    .line 596
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".asf"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".asr"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    .line 597
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".asx"

    aput-object v3, v2, v4

    const-string v3, "video/x-ms-asf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".avi"

    aput-object v3, v2, v4

    const-string v3, "video/x-msvideo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    .line 598
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".movie"

    aput-object v3, v2, v4

    const-string v3, "video/x-sgi-movie"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".flr"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    .line 599
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".vrml"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wrl"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xda

    .line 600
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wrz"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xaf"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    .line 601
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xof"

    aput-object v3, v2, v4

    const-string v3, "x-world/x-vrml"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, "*/*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 438
    sput-object v0, Lcom/iwifi/sdk/tools/FileManager;->MIME_TYPE_TABLE:[[Ljava/lang/String;

    .line 601
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanEmailUnreadCount(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 616
    .line 617
    const-string v2, "emailUnreadCount"

    .line 616
    invoke-static {p0, v2, v3}, Lcom/iwifi/sdk/tools/FileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 618
    .local v1, "settingPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 619
    .local v0, "mSettingEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "emailUnreadCount"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 620
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    return-void
.end method

.method public static createFileAndWriteToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "rootFilename"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/iwifi/sdk/tools/FileManager;->createPath(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 111
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Lcom/iwifi/sdk/tools/FileManager;->sdcardIsExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 86
    .end local v0    # "destDir":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "rootFilename"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/iwifi/sdk/tools/FileManager;->createPath(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 137
    return-void
.end method

.method public static fileIsExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "rootFileName"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {}, Lcom/iwifi/sdk/tools/FileManager;->sdcardIsExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDevId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 716
    .line 717
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 716
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 719
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    const-string v4, ""

    .line 322
    .local v4, "ipPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 324
    .local v7, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "config.xml"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 325
    new-instance v5, Lorg/dom4j/io/SAXReader;

    invoke-direct {v5}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 326
    .local v5, "reader":Lorg/dom4j/io/SAXReader;
    invoke-virtual {v5, v7}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v0

    .line 327
    .local v0, "doc":Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v6

    .line 328
    .local v6, "root":Lorg/dom4j/Element;
    const-string v8, "IpConfig"

    invoke-interface {v6, v8}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 339
    if-eqz v7, :cond_0

    .line 341
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 349
    .end local v0    # "doc":Lorg/dom4j/Document;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "reader":Lorg/dom4j/io/SAXReader;
    .end local v6    # "root":Lorg/dom4j/Element;
    :cond_0
    :goto_1
    return-object v4

    .line 329
    .restart local v0    # "doc":Lorg/dom4j/Document;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v5    # "reader":Lorg/dom4j/io/SAXReader;
    .restart local v6    # "root":Lorg/dom4j/Element;
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 330
    .local v2, "foo":Lorg/dom4j/Element;
    const-string v8, "Ip"

    invoke-interface {v2, v8}, Lorg/dom4j/Element;->elementText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/dom4j/DocumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 332
    .end local v0    # "doc":Lorg/dom4j/Document;
    .end local v2    # "foo":Lorg/dom4j/Element;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "reader":Lorg/dom4j/io/SAXReader;
    .end local v6    # "root":Lorg/dom4j/Element;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 334
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    if-eqz v7, :cond_0

    .line 341
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 342
    :catch_1
    move-exception v1

    .line 343
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 335
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 336
    .local v1, "e":Lorg/dom4j/DocumentException;
    :try_start_5
    invoke-virtual {v1}, Lorg/dom4j/DocumentException;->printStackTrace()V

    .line 337
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getDocumentErr(Lorg/dom4j/DocumentException;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 339
    if-eqz v7, :cond_0

    .line 341
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 342
    :catch_3
    move-exception v1

    .line 343
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 338
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 339
    if-eqz v7, :cond_2

    .line 341
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 347
    :cond_2
    :goto_2
    throw v8

    .line 342
    :catch_4
    move-exception v1

    .line 343
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    new-instance v9, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v9}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v9}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_2

    .line 342
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "doc":Lorg/dom4j/Document;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v5    # "reader":Lorg/dom4j/io/SAXReader;
    .restart local v6    # "root":Lorg/dom4j/Element;
    :catch_5
    move-exception v1

    .line 343
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 344
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    const-string v4, ""

    .line 693
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 694
    const-string v6, "cat /sys/class/net/wlan0/address "

    .line 693
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 695
    .local v3, "pp":Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 696
    .local v2, "ir":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .local v1, "input":Ljava/io/LineNumberReader;
    :cond_0
    if-nez v4, :cond_1

    .line 704
    const-string v5, ""

    .line 708
    .end local v1    # "input":Ljava/io/LineNumberReader;
    .end local v2    # "ir":Ljava/io/InputStreamReader;
    .end local v3    # "pp":Ljava/lang/Process;
    :goto_0
    return-object v5

    .line 699
    .restart local v1    # "input":Ljava/io/LineNumberReader;
    .restart local v2    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "pp":Ljava/lang/Process;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 700
    if-eqz v4, :cond_0

    .line 701
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    .line 705
    .end local v1    # "input":Ljava/io/LineNumberReader;
    .end local v2    # "ir":Ljava/io/InputStreamReader;
    .end local v3    # "pp":Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 707
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 708
    const-string v5, ""

    goto :goto_0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 642
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSsidList(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    const-string v6, ""

    .line 356
    .local v6, "ssidList":Ljava/lang/String;
    const/4 v7, 0x0

    .line 358
    .local v7, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "ssid.xml"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 359
    new-instance v4, Lorg/dom4j/io/SAXReader;

    invoke-direct {v4}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 360
    .local v4, "reader":Lorg/dom4j/io/SAXReader;
    invoke-virtual {v4, v7}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v0

    .line 361
    .local v0, "doc":Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    .line 362
    .local v5, "root":Lorg/dom4j/Element;
    const-string v8, "Ssid"

    invoke-interface {v5, v8}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 373
    if-eqz v7, :cond_0

    .line 375
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 383
    .end local v0    # "doc":Lorg/dom4j/Document;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "reader":Lorg/dom4j/io/SAXReader;
    .end local v5    # "root":Lorg/dom4j/Element;
    :cond_0
    :goto_1
    return-object v6

    .line 363
    .restart local v0    # "doc":Lorg/dom4j/Document;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "reader":Lorg/dom4j/io/SAXReader;
    .restart local v5    # "root":Lorg/dom4j/Element;
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 364
    .local v2, "foo":Lorg/dom4j/Element;
    const-string v8, "SsidString"

    invoke-interface {v2, v8}, Lorg/dom4j/Element;->elementText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/dom4j/DocumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 366
    .end local v0    # "doc":Lorg/dom4j/Document;
    .end local v2    # "foo":Lorg/dom4j/Element;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "reader":Lorg/dom4j/io/SAXReader;
    .end local v5    # "root":Lorg/dom4j/Element;
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    if-eqz v7, :cond_0

    .line 375
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 376
    :catch_1
    move-exception v1

    .line 377
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 369
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 370
    .local v1, "e":Lorg/dom4j/DocumentException;
    :try_start_5
    invoke-virtual {v1}, Lorg/dom4j/DocumentException;->printStackTrace()V

    .line 371
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getDocumentErr(Lorg/dom4j/DocumentException;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    if-eqz v7, :cond_0

    .line 375
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 376
    :catch_3
    move-exception v1

    .line 377
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 372
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 373
    if-eqz v7, :cond_2

    .line 375
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 381
    :cond_2
    :goto_2
    throw v8

    .line 376
    :catch_4
    move-exception v1

    .line 377
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    new-instance v9, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v9}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v9}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_2

    .line 376
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "doc":Lorg/dom4j/Document;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "reader":Lorg/dom4j/io/SAXReader;
    .restart local v5    # "root":Lorg/dom4j/Element;
    :catch_5
    move-exception v1

    .line 377
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    const-string v7, ""

    .line 404
    .local v7, "version":Ljava/lang/String;
    const/4 v6, 0x0

    .line 406
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "config.xml"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 407
    new-instance v4, Lorg/dom4j/io/SAXReader;

    invoke-direct {v4}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 408
    .local v4, "reader":Lorg/dom4j/io/SAXReader;
    invoke-virtual {v4, v6}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v0

    .line 409
    .local v0, "doc":Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v5

    .line 410
    .local v5, "root":Lorg/dom4j/Element;
    const-string v8, "IpConfig"

    invoke-interface {v5, v8}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 421
    if-eqz v6, :cond_0

    .line 423
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 431
    .end local v0    # "doc":Lorg/dom4j/Document;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "reader":Lorg/dom4j/io/SAXReader;
    .end local v5    # "root":Lorg/dom4j/Element;
    :cond_0
    :goto_1
    return-object v7

    .line 411
    .restart local v0    # "doc":Lorg/dom4j/Document;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "reader":Lorg/dom4j/io/SAXReader;
    .restart local v5    # "root":Lorg/dom4j/Element;
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 412
    .local v2, "foo":Lorg/dom4j/Element;
    const-string v8, "Version"

    invoke-interface {v2, v8}, Lorg/dom4j/Element;->elementText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/dom4j/DocumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 414
    .end local v0    # "doc":Lorg/dom4j/Document;
    .end local v2    # "foo":Lorg/dom4j/Element;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "reader":Lorg/dom4j/io/SAXReader;
    .end local v5    # "root":Lorg/dom4j/Element;
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 416
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    if-eqz v6, :cond_0

    .line 423
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 424
    :catch_1
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 417
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 418
    .local v1, "e":Lorg/dom4j/DocumentException;
    :try_start_5
    invoke-virtual {v1}, Lorg/dom4j/DocumentException;->printStackTrace()V

    .line 419
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getDocumentErr(Lorg/dom4j/DocumentException;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 421
    if-eqz v6, :cond_0

    .line 423
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 424
    :catch_3
    move-exception v1

    .line 425
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 420
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 421
    if-eqz v6, :cond_2

    .line 423
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 429
    :cond_2
    :goto_2
    throw v8

    .line 424
    :catch_4
    move-exception v1

    .line 425
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    new-instance v9, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v9}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v9}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_2

    .line 424
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "doc":Lorg/dom4j/Document;
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v4    # "reader":Lorg/dom4j/io/SAXReader;
    .restart local v5    # "root":Lorg/dom4j/Element;
    :catch_5
    move-exception v1

    .line 425
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 426
    new-instance v8, Lcom/iwifi/sdk/tools/FileManager;

    invoke-direct {v8}, Lcom/iwifi/sdk/tools/FileManager;-><init>()V

    invoke-static {v1, v8}, Lcom/iwifi/sdk/tools/ErrDeal;->getActivityErr(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getWifiIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 674
    .line 675
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 674
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 676
    .local v2, "wifi_service":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 678
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 679
    .local v1, "gateway":I
    if-eqz v1, :cond_0

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    and-int/lit16 v4, v1, 0xff

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 681
    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v1, 0x18

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 680
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v2, "out":Ljava/lang/StringBuffer;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 232
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 233
    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static readFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "rootFileName"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v4, ""

    .line 156
    .local v4, "response":Ljava/lang/String;
    invoke-static {}, Lcom/iwifi/sdk/tools/FileManager;->sdcardIsExist()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 161
    .local v3, "length":I
    new-array v0, v3, [B

    .line 162
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 163
    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v0    # "buffer":[B
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "length":I
    :cond_0
    :goto_0
    return-object v4

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 168
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "change"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string v2, ""

    .line 254
    .local v2, "ret":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 257
    .local v1, "prevPos":I
    if-nez p2, :cond_0

    .line 258
    const-string p2, ""

    .line 261
    :cond_0
    :goto_0
    if-gez v0, :cond_1

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    return-object v2

    .line 262
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 265
    move v1, v0

    .line 266
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static sdcardIsExist()Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setIp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    .line 209
    const-string v2, "newServiceAddress"

    const/4 v3, 0x0

    .line 208
    invoke-static {p1, v2, v3}, Lcom/iwifi/sdk/tools/FileManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, "ipPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 211
    .local v1, "mSettingEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "newServiceAddress"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    return-void
.end method


# virtual methods
.method public findLocalAttachment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 289
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 293
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 299
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
