.class public Lcom/nearme/game/sdk/common/config/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ASSERT_PLGUIN_APK_NAME:Ljava/lang/String; = "oppo_game_service_210.so"

.field public static final ASSERT_PLGUIN_APK_VERSION:I = 0xd2

.field public static ENV:I = 0x0

.field public static final ENV_DEV:I = 0x2

.field public static final ENV_GAMMA:I = 0x3

.field public static final ENV_RELEASE:I = 0x0

.field public static final ENV_TEST:I = 0x1

.field public static final KEY_MESSAGER:Ljava/lang/String; = "key_messager"

.field public static final KEY_REQUEST_CODE:Ljava/lang/String; = "key_request_code"

.field public static final KEY_SEQ:Ljava/lang/String; = "key_seq"

.field public static final LOG_TAG:Ljava/lang/String; = "GameCenterSDK"

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final PAY_RESULT_RECEIVER_ACTION:Ljava/lang/String; = "nearme.pay.response"

.field public static final PLUGIN_ACTIVITY_PACKAGE_NAME:Ljava/lang/String; = "com.nearme.game.service.ui.activity"

.field public static final PLUGIN_API_SERVICE_NAME:Ljava/lang/String; = "com.nearme.game.service.ui.service.ApiPluginService"

.field public static final PLUGIN_APK_NAME:Ljava/lang/String; = "oppo_game_service.so"

.field public static final PLUGIN_APK_NAME_WITH_OUT_EXTATION:Ljava/lang/String; = "oppo_game_service"

.field public static final PLUGIN_UC_OPRETATE_RECEIVER_NAME:Ljava/lang/String; = "com.oppo.usercenter.sdk.helper.UserCenterOperateReceiver"

.field public static SDK_JAR_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/16 v0, 0xcd

    sput v0, Lcom/nearme/game/sdk/common/config/Constants;->SDK_JAR_VERSION:I

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/nearme/game/sdk/common/config/Constants;->ENV:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
