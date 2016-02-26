.class public Lcom/tencent/msdk/db/WxLoginModel;
.super Lcom/tencent/msdk/db/BaseUserInfo;
.source "WxLoginModel.java"

# interfaces
.implements Lcom/tencent/msdk/db/ITbl;


# static fields
.field static final TBL_NAME:Ljava/lang/String; = "wx_login_info"

.field private static col_access_token:Ljava/lang/String;

.field private static col_access_token_expire:Ljava/lang/String;

.field private static col_age:Ljava/lang/String;

.field private static col_avatar:Ljava/lang/String;

.field private static col_create_at:Ljava/lang/String;

.field private static col_gender:Ljava/lang/String;

.field private static col_is_active:Ljava/lang/String;

.field private static col_nickname:Ljava/lang/String;

.field private static col_open_id:Ljava/lang/String;

.field private static col_pf:Ljava/lang/String;

.field private static col_pf_key:Ljava/lang/String;

.field private static col_refresh_token:Ljava/lang/String;

.field private static col_refresh_token_expire:Ljava/lang/String;

.field private static col_update_at:Ljava/lang/String;

.field private static col_wechat_uin:Ljava/lang/String;

.field public static volatile instance:Lcom/tencent/msdk/db/WxLoginModel;


# instance fields
.field private helper:Lcom/tencent/msdk/db/DbManager;

.field private mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

.field public refresh_token:Ljava/lang/String;

.field public refresh_token_expire:J

.field public wechat_uin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "open_id"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    .line 34
    const-string v0, "access_token_expire"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token_expire:Ljava/lang/String;

    .line 35
    const-string v0, "access_token"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token:Ljava/lang/String;

    .line 36
    const-string v0, "refresh_token"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token:Ljava/lang/String;

    .line 37
    const-string v0, "refresh_token_expire"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token_expire:Ljava/lang/String;

    .line 38
    const-string v0, "pf"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_pf:Ljava/lang/String;

    .line 39
    const-string v0, "pf_key"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_pf_key:Ljava/lang/String;

    .line 40
    const-string v0, "wechat_uin"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_wechat_uin:Ljava/lang/String;

    .line 41
    const-string v0, "nickname"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_nickname:Ljava/lang/String;

    .line 42
    const-string v0, "age"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_age:Ljava/lang/String;

    .line 43
    const-string v0, "avatar"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_avatar:Ljava/lang/String;

    .line 44
    const-string v0, "gender"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_gender:Ljava/lang/String;

    .line 45
    const-string v0, "is_active"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_is_active:Ljava/lang/String;

    .line 46
    const-string v0, "create_at"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    .line 47
    const-string v0, "update_at"

    sput-object v0, Lcom/tencent/msdk/db/WxLoginModel;->col_update_at:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/msdk/db/BaseUserInfo;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->wechat_uin:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/msdk/db/BaseUserInfo;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->wechat_uin:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 23
    return-void
.end method

.method public static getCreateTblSql()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    const-string v0, ""

    .line 77
    .local v0, "createTblSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE TABLE IF NOT EXISTS [wx_login_info] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(128)  UNIQUE NOT NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token_expire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token_expire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_pf_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(128)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_wechat_uin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_age:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] INTEGER  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] INTEGER DEFAULT -1 NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_is_active:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] BOOLEAN  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_update_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public static getDropTblSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    const-string v0, "DROP TABLE IF EXISTS wx_login_info"

    return-object v0
.end method

.method private getUsableContentValues()Landroid/content/ContentValues;
    .registers 9

    .prologue
    .line 154
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v3, Lcom/tencent/msdk/tea/TEACoding;

    sget-object v4, Lcom/tencent/msdk/tea/DesUtils;->DB_KEY:[B

    invoke-direct {v3, v4}, Lcom/tencent/msdk/tea/TEACoding;-><init>([B)V

    .line 158
    .local v3, "teaCode":Lcom/tencent/msdk/tea/TEACoding;
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 159
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/tea/TEACoding;->encode2HexBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token_expire:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    :cond_35
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 164
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/tea/TEACoding;->encode2HexBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token_expire:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    :cond_57
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 169
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_pf:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/tea/TEACoding;->encode2HexBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_6e
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 173
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_pf_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/tea/TEACoding;->encode2HexBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    .local v0, "curTime":J
    sget-object v4, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    return-object v2
.end method


# virtual methods
.method public convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;
    .registers 9

    .prologue
    .line 279
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 280
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 284
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 285
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 289
    return-object v0
.end method

.method public create()Z
    .registers 9

    .prologue
    .line 192
    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v5

    .line 194
    :try_start_3
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v4}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3e

    move-result-object v0

    .line 196
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    const-string v4, "wx_login_info"

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/tencent/msdk/db/WxLoginModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v0, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 198
    .local v2, "insertResult":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2a} :catch_2d
    .catchall {:try_start_9 .. :try_end_2a} :catchall_3e

    .line 199
    const/4 v4, 0x1

    :try_start_2b
    monitor-exit v5

    .line 204
    .end local v2    # "insertResult":J
    :goto_2c
    return v4

    .line 200
    :catch_2d
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v4}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 202
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const-string v4, "WXLoginModel create error"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 204
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_2c

    .line 206
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3e
    move-exception v4

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_3e

    throw v4
.end method

.method public delete()I
    .registers 9

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "howManyDeleted":I
    iget-object v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 58
    :try_start_4
    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " `"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "` = ? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    aput-object v7, v3, v5
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_61

    .line 62
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_2d
    const-string v5, "wx_login_info"

    invoke-virtual {v0, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_3c
    .catchall {:try_start_2d .. :try_end_32} :catchall_61

    move-result v2

    .line 69
    :goto_33
    :try_start_33
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_61

    .line 71
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/msdk/login/LoginManager;->resetLastWxLoginModel()V

    .line 72
    return v2

    .line 63
    :catch_3c
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 65
    :try_start_3e
    iget-object v5, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete error,, Selection: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_33

    .line 69
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_61
    move-exception v5

    monitor-exit v6
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_61

    throw v5
.end method

.method public deleteAll()I
    .registers 8

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, "howManyDeleted":I
    iget-object v4, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v4

    .line 296
    :try_start_4
    iget-object v3, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2b

    move-result-object v0

    .line 298
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    const-string v3, "wx_login_info"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_1b
    .catchall {:try_start_a .. :try_end_11} :catchall_2b

    move-result v2

    .line 305
    :goto_12
    :try_start_12
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_2b

    .line 307
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/login/LoginManager;->resetLastWxLoginModel()V

    .line 308
    return v2

    .line 299
    :catch_1b
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    const/4 v2, 0x0

    .line 302
    iget-object v3, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 303
    const-string v3, "WxLoginModel deleteAll error."

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_12

    .line 305
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public find()Lcom/tencent/msdk/db/BaseUserInfo;
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public findAll()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/db/BaseUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastWxLoginUserinfo()Lcom/tencent/msdk/db/WxLoginModel;
    .registers 19

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 105
    :try_start_7
    new-instance v13, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v13}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_ea

    .line 107
    .local v13, "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    const/4 v4, 0x0

    .line 108
    .local v4, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 109
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 110
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 111
    .local v7, "groupBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 112
    .local v8, "having":Ljava/lang/String;
    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "` DESC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "orderBy":Ljava/lang/String;
    const-string v10, "1"

    .line 114
    .local v10, "limit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "wx_login_info"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 117
    .local v15, "rows":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_48

    .line 118
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_45} :catch_ed
    .catchall {:try_start_11 .. :try_end_45} :catchall_ea

    .line 119
    const/4 v13, 0x0

    .end local v13    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    :try_start_46
    monitor-exit v17
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_ea

    .line 149
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v15    # "rows":Landroid/database/Cursor;
    :goto_47
    return-object v13

    .line 121
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    .restart local v13    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    .restart local v15    # "rows":Landroid/database/Cursor;
    :cond_48
    :try_start_48
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    new-instance v16, Lcom/tencent/msdk/tea/TEACoding;

    sget-object v2, Lcom/tencent/msdk/tea/DesUtils;->DB_KEY:[B

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/tencent/msdk/tea/TEACoding;-><init>([B)V

    .line 123
    .local v16, "teaCode":Lcom/tencent/msdk/tea/TEACoding;
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "open_id":Ljava/lang/String;
    if-nez v14, :cond_60

    const-string v14, ""

    .end local v14    # "open_id":Ljava/lang/String;
    :cond_60
    iput-object v14, v13, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    .line 126
    new-instance v12, Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/tea/TEACoding;->decodeFromBase64Str(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([B)V

    .line 127
    .local v12, "encryptValue":Ljava/lang/String;
    if-nez v12, :cond_79

    const-string v12, ""

    .end local v12    # "encryptValue":Ljava/lang/String;
    :cond_79
    iput-object v12, v13, Lcom/tencent/msdk/db/WxLoginModel;->access_token:Ljava/lang/String;

    .line 128
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_access_token_expire:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->access_token_expire:J

    .line 131
    new-instance v12, Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/tea/TEACoding;->decodeFromBase64Str(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([B)V

    .line 132
    .restart local v12    # "encryptValue":Ljava/lang/String;
    if-nez v12, :cond_9c

    const-string v12, ""

    .end local v12    # "encryptValue":Ljava/lang/String;
    :cond_9c
    iput-object v12, v13, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token:Ljava/lang/String;

    .line 133
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_refresh_token_expire:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->refresh_token_expire:J

    .line 135
    new-instance v12, Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_pf:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/tea/TEACoding;->decodeFromBase64Str(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([B)V

    .line 136
    .restart local v12    # "encryptValue":Ljava/lang/String;
    if-nez v12, :cond_bf

    const-string v12, ""

    .end local v12    # "encryptValue":Ljava/lang/String;
    :cond_bf
    iput-object v12, v13, Lcom/tencent/msdk/db/WxLoginModel;->pf:Ljava/lang/String;

    .line 138
    new-instance v12, Ljava/lang/String;

    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_pf_key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/tea/TEACoding;->decodeFromBase64Str(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([B)V

    .line 139
    .restart local v12    # "encryptValue":Ljava/lang/String;
    if-nez v12, :cond_d8

    const-string v12, ""

    .end local v12    # "encryptValue":Ljava/lang/String;
    :cond_d8
    iput-object v12, v13, Lcom/tencent/msdk/db/WxLoginModel;->pf_key:Ljava/lang/String;

    .line 140
    sget-object v2, Lcom/tencent/msdk/db/WxLoginModel;->col_create_at:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/tencent/msdk/db/WxLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v13, Lcom/tencent/msdk/db/WxLoginModel;->create_at:J

    .line 143
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_e7} :catch_ed
    .catchall {:try_start_48 .. :try_end_e7} :catchall_ea

    .line 149
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v15    # "rows":Landroid/database/Cursor;
    .end local v16    # "teaCode":Lcom/tencent/msdk/tea/TEACoding;
    :goto_e7
    :try_start_e7
    monitor-exit v17

    goto/16 :goto_47

    .line 150
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "groupBy":Ljava/lang/String;
    .end local v8    # "having":Ljava/lang/String;
    .end local v13    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    :catchall_ea
    move-exception v2

    monitor-exit v17
    :try_end_ec
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_ea

    throw v2

    .line 144
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "groupBy":Ljava/lang/String;
    .restart local v8    # "having":Ljava/lang/String;
    .restart local v13    # "lastUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    :catch_ed
    move-exception v11

    .line 145
    .local v11, "e":Ljava/lang/Exception;
    :try_start_ee
    const-string v2, "getLastWxLoginUserinfo cause exception"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 147
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fd
    .catchall {:try_start_ee .. :try_end_fd} :catchall_ea

    goto :goto_e7
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    const-string v0, "wx_login_info"

    return-object v0
.end method

.method public getWakeupRet()Lcom/tencent/msdk/api/WakeupRet;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/msdk/db/WxLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    return-object v0
.end method

.method public isExisted()Z
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 248
    iget-object v13, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v13

    .line 250
    :try_start_5
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 252
    .local v2, "columns":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v14, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, " = ? "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v14, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    aput-object v14, v4, v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_6e

    .line 254
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 255
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 256
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 257
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 260
    .local v8, "limit":Ljava/lang/String;
    :try_start_33
    const-string v1, "wx_login_info"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 262
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_45

    .line 263
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_4b
    .catchall {:try_start_33 .. :try_end_42} :catchall_6e

    .line 264
    :try_start_42
    monitor-exit v13
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_6e

    move v1, v11

    .line 273
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_44
    return v1

    .line 266
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_45
    :try_start_45
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4b
    .catchall {:try_start_45 .. :try_end_48} :catchall_6e

    .line 267
    :try_start_48
    monitor-exit v13

    move v1, v12

    goto :goto_44

    .line 269
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_4b
    move-exception v10

    .line 270
    .local v10, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WxLoginModel isExisted error, Selection: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 273
    monitor-exit v13

    move v1, v11

    goto :goto_44

    .line 275
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v5    # "groupBy":Ljava/lang/String;
    .end local v6    # "having":Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "limit":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_6e
    move-exception v1

    monitor-exit v13
    :try_end_70
    .catchall {:try_start_48 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public save()Z
    .registers 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->deleteAll()I

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->isExisted()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 237
    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->update()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v0, 0x1

    .line 242
    :goto_11
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginManager;->resetLastWxLoginModel()V

    .line 243
    return v0

    .line 237
    :cond_19
    const/4 v0, 0x0

    goto :goto_11

    .line 239
    :cond_1b
    invoke-virtual {p0}, Lcom/tencent/msdk/db/WxLoginModel;->create()Z

    move-result v0

    goto :goto_11
.end method

.method public setWakeUpRet(Lcom/tencent/msdk/api/WakeupRet;)V
    .registers 2
    .param p1, "ret"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/tencent/msdk/db/WxLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 313
    return-void
.end method

.method public update()I
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 216
    iget-object v6, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 217
    :try_start_4
    iget-object v7, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 218
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0}, Lcom/tencent/msdk/db/WxLoginModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 219
    .local v2, "values":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tencent/msdk/db/WxLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "` = ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/msdk/db/WxLoginModel;->open_id:Ljava/lang/String;

    aput-object v8, v3, v7
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_5b

    .line 222
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_31
    const-string v7, "wx_login_info"

    invoke-virtual {v0, v7, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_39
    .catchall {:try_start_31 .. :try_end_36} :catchall_5b

    move-result v5

    :try_start_37
    monitor-exit v6

    .line 227
    :goto_38
    return v5

    .line 223
    :catch_39
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/tencent/msdk/db/WxLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WxLoginModel update error, Selection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 227
    monitor-exit v6

    goto :goto_38

    .line 229
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_5b
    move-exception v5

    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_5b

    throw v5
.end method
