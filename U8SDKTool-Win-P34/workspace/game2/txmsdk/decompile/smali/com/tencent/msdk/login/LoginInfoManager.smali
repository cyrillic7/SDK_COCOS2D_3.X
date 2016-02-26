.class public Lcom/tencent/msdk/login/LoginInfoManager;
.super Ljava/lang/Object;
.source "LoginInfoManager.java"


# static fields
.field private static volatile instance:Lcom/tencent/msdk/login/LoginInfoManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/login/LoginInfoManager;
    .registers 2

    .prologue
    .line 11
    sget-object v0, Lcom/tencent/msdk/login/LoginInfoManager;->instance:Lcom/tencent/msdk/login/LoginInfoManager;

    if-nez v0, :cond_13

    .line 12
    const-class v1, Lcom/tencent/msdk/login/LoginInfoManager;

    monitor-enter v1

    .line 13
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/login/LoginInfoManager;->instance:Lcom/tencent/msdk/login/LoginInfoManager;

    if-nez v0, :cond_12

    .line 14
    new-instance v0, Lcom/tencent/msdk/login/LoginInfoManager;

    invoke-direct {v0}, Lcom/tencent/msdk/login/LoginInfoManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/login/LoginInfoManager;->instance:Lcom/tencent/msdk/login/LoginInfoManager;

    .line 16
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 18
    :cond_13
    sget-object v0, Lcom/tencent/msdk/login/LoginInfoManager;->instance:Lcom/tencent/msdk/login/LoginInfoManager;

    return-object v0

    .line 16
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public deleteAllLoginRecord()V
    .registers 3

    .prologue
    .line 58
    new-instance v0, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/QQLoginModel;-><init>()V

    .line 59
    .local v0, "qui":Lcom/tencent/msdk/db/QQLoginModel;
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->deleteAll()I

    .line 61
    new-instance v1, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v1}, Lcom/tencent/msdk/db/WxLoginModel;-><init>()V

    .line 62
    .local v1, "wui":Lcom/tencent/msdk/db/WxLoginModel;
    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->deleteAll()I

    .line 63
    return-void
.end method

.method public deleteLoginRecord(Ljava/lang/String;)V
    .registers 4
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/tencent/msdk/db/QQLoginModel;

    invoke-direct {v0, p1}, Lcom/tencent/msdk/db/QQLoginModel;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "qui":Lcom/tencent/msdk/db/QQLoginModel;
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->delete()I

    .line 53
    new-instance v1, Lcom/tencent/msdk/db/WxLoginModel;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/db/WxLoginModel;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "wui":Lcom/tencent/msdk/db/WxLoginModel;
    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->delete()I

    .line 55
    return-void
.end method

.method public getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;
    .registers 7

    .prologue
    .line 26
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/login/LoginManager;->getLastQQLoginModel()Lcom/tencent/msdk/db/QQLoginModel;

    move-result-object v0

    .line 27
    .local v0, "qqUserInfo":Lcom/tencent/msdk/db/QQLoginModel;
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/login/LoginManager;->getLastWxLoginModel()Lcom/tencent/msdk/db/WxLoginModel;

    move-result-object v1

    .line 30
    .local v1, "wxUserInfo":Lcom/tencent/msdk/db/WxLoginModel;
    if-nez v0, :cond_1f

    .line 31
    if-nez v1, :cond_1a

    .line 32
    new-instance v2, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v2}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 43
    :goto_19
    return-object v2

    .line 34
    :cond_1a
    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v2

    goto :goto_19

    .line 37
    :cond_1f
    if-nez v1, :cond_26

    .line 38
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v2

    goto :goto_19

    .line 40
    :cond_26
    iget-wide v2, v0, Lcom/tencent/msdk/db/QQLoginModel;->create_at:J

    iget-wide v4, v1, Lcom/tencent/msdk/db/WxLoginModel;->create_at:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    .line 41
    invoke-virtual {v0}, Lcom/tencent/msdk/db/QQLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v2

    goto :goto_19

    .line 43
    :cond_33
    invoke-virtual {v1}, Lcom/tencent/msdk/db/WxLoginModel;->convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v2

    goto :goto_19
.end method
