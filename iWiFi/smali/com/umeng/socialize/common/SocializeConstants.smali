.class public Lcom/umeng/socialize/common/SocializeConstants;
.super Ljava/lang/Object;
.source "SocializeConstants.java"


# static fields
.field public static APPKEY:Ljava/lang/String; = null

.field public static BACKKEY_COMPLETE_CLOSE:Z = false

.field public static final COMMON_TAG:Ljava/lang/String; = "com.umeng.socialize"

.field public static DEBUG_MODE:Z = false

.field public static final FILE_KEY:Ljava/lang/String; = "umeng_socialize_key"

.field public static final FILE_SECRET:Ljava/lang/String; = "umeng_socialize_secret"

.field public static final FLAG_USER_CENTER_HIDE_LOGININFO:I = 0x10

.field public static final FLAG_USER_CENTER_HIDE_SNSINFO:I = 0x20

.field public static final FLAG_USER_CENTER_LOGIN_VERIFY:I = 0x1

.field public static GUIDENAME:Ljava/lang/String; = null

.field public static final KEY_OAUTH_FAIL:Ljava/lang/String; = "-3-f"

.field public static final KEY_OAUTH_SUCCESS:Ljava/lang/String; = "-3-s"

.field public static final KEY_SHAKE:Ljava/lang/String; = "shake"

.field public static final MASK_USER_CENTER_HIDE_AREA:I = 0xf0

.field public static final MASK_USER_CENTER_LOGIN_VERIFY:I = 0xf

.field public static final OP_CLOSE_PAREN:Ljava/lang/String; = ")"

.field public static final OP_DELETE_OAUTH:I = 0xa

.field public static final OP_DIRECT_SHARE:I = 0x8

.field public static final OP_DIVIDER_MINUS:Ljava/lang/String; = "-"

.field public static final OP_DIVIDER_PLUS:Ljava/lang/String; = "+"

.field public static final OP_DO_OAUTH_DIALOG:I = 0x12

.field public static final OP_DO_OAUTH_VERIFY:I = 0x3

.field public static final OP_DO_SSO:I = 0xc

.field public static final OP_EDIT_PAGE:I = 0xf

.field public static final OP_FILE_NAME_METHOD:Ljava/lang/String; = "umeng_social_method"

.field public static final OP_FILE_NAME_OAUTH:Ljava/lang/String; = "umeng_social_oauth"

.field public static final OP_FILE_NAME_SHAKE:Ljava/lang/String; = "umeng_social_shake"

.field public static final OP_KEY:Ljava/lang/String; = "param"

.field public static final OP_LOGIN:I = 0x5

.field public static final OP_LOGIN_OUT:I = 0x9

.field public static final OP_METHOD_MAX:I = 0x18

.field public static final OP_OAUTH_FAIL:I = 0x0

.field public static final OP_OAUTH_NOT:I = -0x1

.field public static final OP_OAUTH_SUCCESS:I = 0x1

.field public static final OP_OPEN_PAREN:Ljava/lang/String; = "("

.field public static final OP_OPEN_SHARE:I = 0x1

.field public static final OP_OPEN_SHARE_PLATFORM:I = 0x0

.field public static final OP_OPEN_USER_CENTER:I = 0x4

.field public static final OP_POST_SHARE:I = 0x2

.field public static final OP_POST_SHARE_BY_CUSTOM:I = 0x13

.field public static final OP_POST_SHARE_MULTI:I = 0xb

.field public static final OP_SHARE_CLICK:I = 0xe

.field public static final OP_SHARE_TO_FB:I = 0x16

.field public static final OP_SHARE_TO_INSTAGRAM:I = 0x17

.field public static final OP_SHARE_TO_LW:I = 0x14

.field public static final OP_SHARE_TO_O:I = 0x7

.field public static final OP_SHARE_TO_P:I = 0x6

.field public static final OP_SHARE_TO_QQ:I = 0x10

.field public static final OP_SHARE_TO_QZONE_WEBVIEW:I = 0x18

.field public static final OP_SHARE_TO_YX:I = 0x15

.field public static final OP_SHARE_WEIXIN:I = 0x11

.field public static final OP_UPLOAD_TOKEN:I = 0xd

.field public static final OS:Ljava/lang/String; = "Android"

.field public static final PLATFORM_ID_DOUBAN:I = 0x5

.field public static final PLATFORM_ID_EMAIL:I = 0x6

.field public static final PLATFORM_ID_FACEBOOK:I = 0xb

.field public static final PLATFORM_ID_GOOGLEPLUS:I = 0xd

.field public static final PLATFORM_ID_INSTAGRAM:I = 0x12

.field public static final PLATFORM_ID_LAIWANG:I = 0x10

.field public static final PLATFORM_ID_LAIWANG_DYNAMIC:I = 0x11

.field public static final PLATFORM_ID_QQ:I = 0xa

.field public static final PLATFORM_ID_QZONE:I = 0x1

.field public static final PLATFORM_ID_RENREN:I = 0x4

.field public static final PLATFORM_ID_SINA:I = 0x2

.field public static final PLATFORM_ID_SMS:I = 0x7

.field public static final PLATFORM_ID_TENCENT_WB:I = 0x3

.field public static final PLATFORM_ID_TWITTER:I = 0xc

.field public static final PLATFORM_ID_WEIXIN:I = 0x8

.field public static final PLATFORM_ID_WEIXIN_CIRCLE:I = 0x9

.field public static final PLATFORM_ID_YIXIN:I = 0xe

.field public static final PLATFORM_ID_YIXIN_CIRCLE:I = 0xf

.field public static final PROTOCOL_VERSON:Ljava/lang/String; = "2.0"

.field public static ROUNDER_ICON:Z = false

.field public static final SDK_VERSION:Ljava/lang/String; = "3.3.5140218"

.field public static final SERVER_RETURN_PARAMS_ILLEGAL:I = 0x7ce

.field public static SHOW_ERROR_CODE:Z = false

.field public static final SOCIAL_PREFERENCE_NAME:Ljava/lang/String; = "umeng_socialize"

.field public static final SOCIAL_PREFERENCE_QQ:Ljava/lang/String; = "umeng_socialize_qq"

.field public static SUPPORT_PAD:Z

.field public static UID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/common/SocializeConstants;->GUIDENAME:Ljava/lang/String;

    .line 17
    sput-boolean v1, Lcom/umeng/socialize/common/SocializeConstants;->SUPPORT_PAD:Z

    .line 22
    sput-boolean v1, Lcom/umeng/socialize/common/SocializeConstants;->ROUNDER_ICON:Z

    .line 27
    sput-boolean v1, Lcom/umeng/socialize/common/SocializeConstants;->BACKKEY_COMPLETE_CLOSE:Z

    .line 32
    sput-boolean v2, Lcom/umeng/socialize/common/SocializeConstants;->DEBUG_MODE:Z

    .line 33
    sput-boolean v2, Lcom/umeng/socialize/common/SocializeConstants;->SHOW_ERROR_CODE:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/common/SocializeConstants;->APPKEY:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
