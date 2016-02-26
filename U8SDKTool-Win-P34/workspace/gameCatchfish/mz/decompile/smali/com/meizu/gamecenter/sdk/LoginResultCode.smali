.class public Lcom/meizu/gamecenter/sdk/LoginResultCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOGIN_ERROR_AUTH_ERROR:I = 0x4

.field public static final LOGIN_ERROR_BAD_REQUEST:I = 0x3

.field public static final LOGIN_ERROR_CANCEL:I = 0x2

.field public static final LOGIN_ERROR_EXCEPTION:I = 0x65

.field public static final LOGIN_ERROR_GAME_VERIFY_ERROR:I = 0x5

.field public static final LOGIN_ERROR_NETWORK_ERROR:I = 0x1

.field public static final LOGIN_ERROR_SERVICE_NOT_AVAILABLE:I = 0x64

.field public static final LOGIN_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixCode(I)I
    .registers 2

    .prologue
    .line 18
    if-lez p0, :cond_6

    const/4 v0, 0x5

    if-gt p0, v0, :cond_6

    .line 21
    :goto_5
    return p0

    :cond_6
    const/16 p0, 0x65

    goto :goto_5
.end method
