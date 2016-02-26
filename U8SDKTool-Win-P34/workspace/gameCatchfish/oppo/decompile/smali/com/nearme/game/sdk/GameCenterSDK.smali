.class public Lcom/nearme/game/sdk/GameCenterSDK;
.super Ljava/lang/Object;
.source "GameCenterSDK.java"


# static fields
.field private static a:Lcom/nearme/game/sdk/GameCenterSDK;

.field private static b:Lcom/nearme/game/sdk/b;


# direct methods
.method private constructor <init>(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1, p2}, Lcom/nearme/game/sdk/b;->a(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)Lcom/nearme/game/sdk/b;

    move-result-object v0

    sput-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/nearme/game/sdk/GameCenterSDK;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_c

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GameCenterSDK must be init before call getInstance()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_c
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    return-object v0
.end method

.method public static init(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 31
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/nearme/game/sdk/GameCenterSDK;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/nearme/game/sdk/GameCenterSDK;

    invoke-direct {v0, p0, p1}, Lcom/nearme/game/sdk/GameCenterSDK;-><init>(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)V

    sput-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->a:Lcom/nearme/game/sdk/GameCenterSDK;

    .line 36
    :cond_12
    monitor-exit v1

    .line 38
    :cond_13
    return-void

    .line 36
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public doGetTokenAndSsoid(Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 3

    .prologue
    .line 69
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1174
    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/b;->a(Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 70
    return-void
.end method

.method public doGetUserInfo(Lcom/nearme/game/sdk/common/model/biz/ReqUserInfoParam;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 5

    .prologue
    .line 65
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1170
    const/16 v1, 0x1b63

    invoke-virtual {v0, v1, p1, p2}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 66
    return-void
.end method

.method public doLogin(Landroid/content/Context;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 6

    .prologue
    .line 53
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1080
    const/16 v1, 0x1b5b

    new-instance v2, Lcom/nearme/game/sdk/b$2;

    invoke-direct {v2, v0, p2}, Lcom/nearme/game/sdk/b$2;-><init>(Lcom/nearme/game/sdk/b;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;ILcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 54
    return-void
.end method

.method public doPay(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 5

    .prologue
    .line 61
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 62
    return-void
.end method

.method public doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V
    .registers 3

    .prologue
    .line 73
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1178
    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/b;->a(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public doReportUserGameInfoData(Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 5

    .prologue
    .line 77
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1182
    const/16 v1, 0x1b66

    invoke-virtual {v0, v1, p1, p2}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 78
    return-void
.end method

.method public doSinglePay(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/SinglePayCallback;)V
    .registers 5

    .prologue
    .line 57
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/SinglePayCallback;)V

    .line 58
    return-void
.end method

.method public onExit(Landroid/app/Activity;Lcom/nearme/game/sdk/callback/GameExitCallback;)V
    .registers 6

    .prologue
    .line 49
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1060
    const/16 v1, 0x1b67

    new-instance v2, Lcom/nearme/game/sdk/b$1;

    invoke-direct {v2, v0, p2, p1}, Lcom/nearme/game/sdk/b$1;-><init>(Lcom/nearme/game/sdk/b;Lcom/nearme/game/sdk/callback/GameExitCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;ILcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 50
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 45
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    .line 1056
    const/16 v1, 0x1b69

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/b;->a(I)V

    .line 46
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 41
    sget-object v0, Lcom/nearme/game/sdk/GameCenterSDK;->b:Lcom/nearme/game/sdk/b;

    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/b;->a(Landroid/app/Activity;)V

    .line 42
    return-void
.end method
