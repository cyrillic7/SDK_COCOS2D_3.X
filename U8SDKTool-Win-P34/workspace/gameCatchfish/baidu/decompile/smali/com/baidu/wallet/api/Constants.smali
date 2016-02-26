.class public final Lcom/baidu/wallet/api/Constants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/api/Constants$InterfaceId;
    }
.end annotation


# static fields
.field public static final INTERFACE_ID_KEY:Ljava/lang/String; = "interface_id"

.field public static final JUMP_URL:Ljava/lang/String; = "jump_url"

.field public static final PAY_STATUS_CANCEL:I = 0x2

.field public static final PAY_STATUS_ERROR:I = 0x6

.field public static final PAY_STATUS_LOGIN_ERROR:I = 0x5

.field public static final PAY_STATUS_NOSUPPORT:I = 0x3

.field public static final PAY_STATUS_PAYING:I = 0x1

.field public static final PAY_STATUS_SUCCESS:I = 0x0

.field public static final PAY_STATUS_TOKEN_INVALID:I = 0x4

.field public static final TOKEN_VALUE_KEY:Ljava/lang/String; = "tokenValue"

.field public static final USER_TYPE_KEY:Ljava/lang/String; = "userType"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
