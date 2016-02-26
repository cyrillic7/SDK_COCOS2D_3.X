.class public Lcom/tencent/msdk/db/QQLoginModel;
.super Lcom/tencent/msdk/db/BaseUserInfo;
.source "QQLoginModel.java"

# interfaces
.implements Lcom/tencent/msdk/db/ITbl;


# static fields
.field public static final TBL_NAME:Ljava/lang/String; = "qq_login_info"

.field private static col_access_token:Ljava/lang/String;

.field private static col_access_token_expire:Ljava/lang/String;

.field private static col_age:Ljava/lang/String;

.field private static col_avatar:Ljava/lang/String;

.field private static col_create_at:Ljava/lang/String;

.field private static col_gender:Ljava/lang/String;

.field private static col_is_active:Ljava/lang/String;

.field private static col_nickname:Ljava/lang/String;

.field private static col_open_id:Ljava/lang/String;

.field private static col_pay_token:Ljava/lang/String;

.field private static col_pay_token_expire:Ljava/lang/String;

.field private static col_pf:Ljava/lang/String;

.field private static col_pf_key:Ljava/lang/String;

.field private static col_qq:Ljava/lang/String;

.field private static col_update_at:Ljava/lang/String;


# instance fields
.field private helper:Lcom/tencent/msdk/db/DbManager;

.field private mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

.field public pay_token:Ljava/lang/String;

.field public pay_token_expire:J

.field public qq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "open_id"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    .line 40
    const-string v0, "access_token_expire"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token_expire:Ljava/lang/String;

    .line 41
    const-string v0, "access_token"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token:Ljava/lang/String;

    .line 42
    const-string v0, "pay_token"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token:Ljava/lang/String;

    .line 43
    const-string v0, "pay_token_expire"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token_expire:Ljava/lang/String;

    .line 44
    const-string v0, "qq"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_qq:Ljava/lang/String;

    .line 45
    const-string v0, "nickname"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_nickname:Ljava/lang/String;

    .line 46
    const-string v0, "age"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_age:Ljava/lang/String;

    .line 47
    const-string v0, "avatar"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_avatar:Ljava/lang/String;

    .line 48
    const-string v0, "gender"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_gender:Ljava/lang/String;

    .line 49
    const-string v0, "is_active"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_is_active:Ljava/lang/String;

    .line 50
    const-string v0, "create_at"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    .line 51
    const-string v0, "update_at"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_update_at:Ljava/lang/String;

    .line 52
    const-string v0, "pf"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_pf:Ljava/lang/String;

    .line 53
    const-string v0, "pf_key"

    sput-object v0, Lcom/tencent/msdk/db/QQLoginModel;->col_pf_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tencent/msdk/db/BaseUserInfo;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->qq:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 29
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/msdk/db/BaseUserInfo;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->qq:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 24
    sget-object v0, Lcom/tencent/msdk/db/DbManager;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/db/DbManager;

    iput-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    .line 25
    return-void
.end method

.method public static getCreateTblSql()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    const-string v0, ""

    .line 62
    .local v0, "createTblSql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE TABLE IF NOT EXISTS [qq_login_info] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(128)  UNIQUE NOT NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token_expire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token_expire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_qq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] REAL  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_age:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] INTEGER  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] VARCHAR(256)  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] INTEGER DEFAULT \'\'\'-1\'\'\' NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_is_active:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] BOOLEAN  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP  NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_update_at:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(64)  NULL,"

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

    sget-object v2, Lcom/tencent/msdk/db/QQLoginModel;->col_pf_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] NVARCHAR(128)  NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public static getDropTblSql()Ljava/lang/String;
    .registers 1

    .prologue
    .line 84
    const-string v0, "DROP TABLE IF EXISTS qq_login_info"

    return-object v0
.end method

.method private getUsableContentValues()Landroid/content/ContentValues;
    .registers 9

    .prologue
    .line 147
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v2, "cv":Landroid/content/ContentValues;
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v3, Lcom/tencent/msdk/tea/TEACoding;

    sget-object v4, Lcom/tencent/msdk/tea/DesUtils;->DB_KEY:[B

    invoke-direct {v3, v4}, Lcom/tencent/msdk/tea/TEACoding;-><init>([B)V

    .line 151
    .local v3, "teaCode":Lcom/tencent/msdk/tea/TEACoding;
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 152
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/tea/TEACoding;->encode2HexBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token_expire:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    :cond_35
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 157
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/tea/TEACoding;->encode2HexBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token_expire:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    :cond_57
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 162
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_pf:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/tea/TEACoding;->encode2HexBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_6e
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 166
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_pf_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/tea/TEACoding;->encode2HexBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    .local v0, "curTime":J
    sget-object v4, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    return-object v2
.end method


# virtual methods
.method public convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;
    .registers 9

    .prologue
    .line 286
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 287
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 291
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 292
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v2, Lcom/tencent/msdk/api/TokenRet;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    iget-wide v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 296
    return-object v0
.end method

.method public create()Z
    .registers 7

    .prologue
    .line 248
    iget-object v3, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v3

    .line 250
    :try_start_3
    iget-object v2, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 252
    .local v1, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "qq_login_info"

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/tencent/msdk/db/QQLoginModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_16
    .catchall {:try_start_3 .. :try_end_13} :catchall_27

    .line 253
    const/4 v2, 0x1

    :try_start_14
    monitor-exit v3

    .line 258
    .end local v1    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_15
    return v2

    .line 254
    :catch_16
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    const-string v2, "Insert into qq_login_info error"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v2}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 258
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_15

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public delete()I
    .registers 9

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "howManyDeleted":I
    iget-object v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 268
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " `"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "` = ? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    aput-object v7, v3, v5
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_61

    .line 271
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_27
    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 272
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "qq_login_info"

    invoke-virtual {v2, v5, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_3c
    .catchall {:try_start_27 .. :try_end_32} :catchall_61

    move-result v1

    .line 279
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_33
    :try_start_33
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_61

    .line 281
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/msdk/login/LoginManager;->resetLastQQLoginModel()V

    .line 282
    return v1

    .line 273
    :catch_3c
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete error. Selection:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 276
    const/4 v1, 0x0

    .line 277
    iget-object v5, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v5}, Lcom/tencent/msdk/db/DbManager;->close()V

    goto :goto_33

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_61
    move-exception v5

    monitor-exit v6
    :try_end_63
    .catchall {:try_start_3d .. :try_end_63} :catchall_61

    throw v5
.end method

.method public deleteAll()I
    .registers 8

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "howManyDeleted":I
    iget-object v4, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v4

    .line 305
    :try_start_4
    iget-object v3, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 306
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "qq_login_info"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_1b
    .catchall {:try_start_4 .. :try_end_11} :catchall_2b

    move-result v1

    .line 313
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_12
    :try_start_12
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_2b

    .line 314
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/login/LoginManager;->resetLastQQLoginModel()V

    .line 315
    return v1

    .line 307
    :catch_1b
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    const-string v3, "QQLoginModel deleteAll error."

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 310
    const/4 v1, 0x0

    .line 311
    iget-object v3, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->close()V

    goto :goto_12

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
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
    .line 225
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
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastQQLoginUserinfo()Lcom/tencent/msdk/db/QQLoginModel;
    .registers 21

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 94
    :try_start_7
    new-instance v13, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v13}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_126

    .line 96
    .local v13, "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    const/4 v4, 0x0

    .line 97
    .local v4, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 98
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 99
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 100
    .local v7, "groupBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 101
    .local v8, "having":Ljava/lang/String;
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " `"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v18, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "` DESC "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "orderBy":Ljava/lang/String;
    const-string v10, " 1 "

    .line 103
    .local v10, "limit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 104
    .local v2, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "qq_login_info"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 106
    .local v15, "rows":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4e

    .line 107
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_13d
    .catchall {:try_start_11 .. :try_end_4b} :catchall_126

    .line 108
    const/4 v13, 0x0

    .end local v13    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    :try_start_4c
    monitor-exit v17
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_126

    .line 142
    .end local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v15    # "rows":Landroid/database/Cursor;
    :goto_4d
    return-object v13

    .line 110
    .restart local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    .restart local v13    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    .restart local v15    # "rows":Landroid/database/Cursor;
    :cond_4e
    :try_start_4e
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    new-instance v16, Lcom/tencent/msdk/tea/TEACoding;

    sget-object v3, Lcom/tencent/msdk/tea/DesUtils;->DB_KEY:[B

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/tencent/msdk/tea/TEACoding;-><init>([B)V

    .line 112
    .local v16, "teaCode":Lcom/tencent/msdk/tea/TEACoding;
    new-instance v12, Ljava/lang/String;

    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/tea/TEACoding;->decodeFromBase64Str(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    .line 113
    .local v12, "encryptValue":Ljava/lang/String;
    if-nez v12, :cond_71

    const-string v12, ""

    .end local v12    # "encryptValue":Ljava/lang/String;
    :cond_71
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 114
    new-instance v12, Ljava/lang/String;

    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/tea/TEACoding;->decodeFromBase64Str(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    .line 115
    .restart local v12    # "encryptValue":Ljava/lang/String;
    if-nez v12, :cond_8c

    const-string v12, ""

    .end local v12    # "encryptValue":Ljava/lang/String;
    :cond_8c
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 116
    new-instance v12, Ljava/lang/String;

    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_pf:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/tea/TEACoding;->decodeFromBase64Str(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    .line 117
    .restart local v12    # "encryptValue":Ljava/lang/String;
    if-nez v12, :cond_a7

    const-string v12, ""

    .end local v12    # "encryptValue":Ljava/lang/String;
    :cond_a7
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 118
    new-instance v12, Ljava/lang/String;

    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_pf_key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/msdk/tea/TEACoding;->decodeFromBase64Str(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>([B)V

    .line 119
    .restart local v12    # "encryptValue":Ljava/lang/String;
    if-nez v12, :cond_c2

    const-string v12, ""

    .end local v12    # "encryptValue":Ljava/lang/String;
    :cond_c2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 121
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, "openid":Ljava/lang/String;
    if-nez v14, :cond_d2

    const-string v14, ""

    .end local v14    # "openid":Ljava/lang/String;
    :cond_d2
    iput-object v14, v13, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    if-nez v3, :cond_129

    const-string v3, ""

    :goto_dc
    iput-object v3, v13, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    .line 125
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_access_token_expire:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/tencent/msdk/db/QQLoginModel;->access_token_expire:J

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    if-nez v3, :cond_12e

    const-string v3, ""

    :goto_f2
    iput-object v3, v13, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    .line 129
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_pay_token_expire:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/tencent/msdk/db/QQLoginModel;->pay_token_expire:J

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    if-nez v3, :cond_133

    const-string v3, ""

    :goto_108
    iput-object v3, v13, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    if-nez v3, :cond_138

    const-string v3, ""

    :goto_112
    iput-object v3, v13, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;

    .line 133
    sget-object v3, Lcom/tencent/msdk/db/QQLoginModel;->col_create_at:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/tencent/msdk/db/QQLoginModel;->getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/tencent/msdk/db/QQLoginModel;->create_at:J

    .line 135
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_123} :catch_13d
    .catchall {:try_start_4e .. :try_end_123} :catchall_126

    .line 142
    .end local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v15    # "rows":Landroid/database/Cursor;
    .end local v16    # "teaCode":Lcom/tencent/msdk/tea/TEACoding;
    :goto_123
    :try_start_123
    monitor-exit v17

    goto/16 :goto_4d

    .line 143
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "groupBy":Ljava/lang/String;
    .end local v8    # "having":Ljava/lang/String;
    .end local v13    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    :catchall_126
    move-exception v3

    monitor-exit v17
    :try_end_128
    .catchall {:try_start_123 .. :try_end_128} :catchall_126

    throw v3

    .line 123
    .restart local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "groupBy":Ljava/lang/String;
    .restart local v8    # "having":Ljava/lang/String;
    .restart local v9    # "orderBy":Ljava/lang/String;
    .restart local v10    # "limit":Ljava/lang/String;
    .restart local v13    # "lastUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    .restart local v15    # "rows":Landroid/database/Cursor;
    .restart local v16    # "teaCode":Lcom/tencent/msdk/tea/TEACoding;
    :cond_129
    :try_start_129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->access_token:Ljava/lang/String;

    goto :goto_dc

    .line 127
    :cond_12e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pay_token:Ljava/lang/String;

    goto :goto_f2

    .line 131
    :cond_133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf:Ljava/lang/String;

    goto :goto_108

    .line 132
    :cond_138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->pf_key:Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_13c} :catch_13d
    .catchall {:try_start_129 .. :try_end_13c} :catchall_126

    goto :goto_112

    .line 136
    .end local v2    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "orderBy":Ljava/lang/String;
    .end local v10    # "limit":Ljava/lang/String;
    .end local v15    # "rows":Landroid/database/Cursor;
    .end local v16    # "teaCode":Lcom/tencent/msdk/tea/TEACoding;
    :catch_13d
    move-exception v11

    .line 137
    .local v11, "e":Ljava/lang/Exception;
    :try_start_13e
    const-string v3, "getLastQQLoginUserinfo cause exception"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v3}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 139
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14d
    .catchall {:try_start_13e .. :try_end_14d} :catchall_126

    goto :goto_123
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    const-string v0, "qq_login_info"

    return-object v0
.end method

.method public getWakeupRet()Lcom/tencent/msdk/api/WakeupRet;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tencent/msdk/db/QQLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    return-object v0
.end method

.method public isExisted()Z
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 176
    iget-object v13, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v13

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "columns":[Ljava/lang/String;
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v14, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, " = ? "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v14, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    aput-object v14, v4, v1
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_6e

    .line 181
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 182
    .local v5, "groupBy":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, "having":Ljava/lang/String;
    const/4 v7, 0x0

    .line 184
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v8, 0x0

    .line 187
    .local v8, "limit":Ljava/lang/String;
    :try_start_2d
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    .local v0, "rDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "qq_login_info"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 190
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_45

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_42} :catch_4b
    .catchall {:try_start_2d .. :try_end_42} :catchall_6e

    .line 192
    :try_start_42
    monitor-exit v13
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_6e

    move v1, v11

    .line 200
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_44
    return v1

    .line 194
    .restart local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_45
    :try_start_45
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4b
    .catchall {:try_start_45 .. :try_end_48} :catchall_6e

    .line 195
    :try_start_48
    monitor-exit v13

    move v1, v12

    goto :goto_44

    .line 197
    .end local v0    # "rDb":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_4b
    move-exception v10

    .line 198
    .local v10, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isExisted error. Selection:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 200
    monitor-exit v13

    move v1, v11

    goto :goto_44

    .line 202
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
    .line 235
    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->deleteAll()I

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "flag":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->isExisted()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 238
    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->update()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v0, 0x1

    .line 242
    :goto_11
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginManager;->resetLastQQLoginModel()V

    .line 243
    return v0

    .line 238
    :cond_19
    const/4 v0, 0x0

    goto :goto_11

    .line 240
    :cond_1b
    invoke-virtual {p0}, Lcom/tencent/msdk/db/QQLoginModel;->create()Z

    move-result v0

    goto :goto_11
.end method

.method public setWakeUpRet(Lcom/tencent/msdk/api/WakeupRet;)V
    .registers 2
    .param p1, "ret"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/tencent/msdk/db/QQLoginModel;->mWakeupRet:Lcom/tencent/msdk/api/WakeupRet;

    .line 320
    return-void
.end method

.method public update()I
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 207
    iget-object v6, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    monitor-enter v6

    .line 209
    :try_start_4
    invoke-direct {p0}, Lcom/tencent/msdk/db/QQLoginModel;->getUsableContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 210
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tencent/msdk/db/QQLoginModel;->col_open_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "` = ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "whereClause":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/msdk/db/QQLoginModel;->open_id:Ljava/lang/String;

    aput-object v8, v3, v7
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_5b

    .line 213
    .local v3, "whereArgs":[Ljava/lang/String;
    :try_start_2b
    iget-object v7, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 214
    .local v2, "wDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "qq_login_info"

    invoke-virtual {v2, v7, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_39
    .catchall {:try_start_2b .. :try_end_36} :catchall_5b

    move-result v5

    :try_start_37
    monitor-exit v6

    .line 218
    .end local v2    # "wDb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_38
    return v5

    .line 215
    :catch_39
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QQLoginModel update error. Selection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 217
    iget-object v7, p0, Lcom/tencent/msdk/db/QQLoginModel;->helper:Lcom/tencent/msdk/db/DbManager;

    invoke-virtual {v7}, Lcom/tencent/msdk/db/DbManager;->close()V

    .line 218
    monitor-exit v6

    goto :goto_38

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catchall_5b
    move-exception v5

    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_37 .. :try_end_5d} :catchall_5b

    throw v5
.end method
