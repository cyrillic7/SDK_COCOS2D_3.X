.class public final Lcom/tencent/msdk/api/WGPlatform;
.super Ljava/lang/Object;
.source "WGPlatform.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DestroyActivity()V
    .registers 0

    .prologue
    .line 42
    return-void
.end method

.method public static Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseInfo"    # Lcom/tencent/msdk/api/MsdkBaseInfo;

    .prologue
    .line 56
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/msdk/WeGame;->Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V

    .line 57
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/WeGame;->ReportGameTime(I)V

    .line 58
    return-void
.end method

.method public static IsDifferentActivity(Landroid/app/Activity;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->IsDifferentActivity(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static WGCheckApiSupport(Lcom/tencent/msdk/qq/ApiName;)Z
    .registers 2
    .param p0, "api"    # Lcom/tencent/msdk/qq/ApiName;

    .prologue
    .line 220
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->checkApiSupport(Lcom/tencent/msdk/qq/ApiName;)Z

    move-result v0

    return v0
.end method

.method public static WGEnableCrashReport(ZZ)V
    .registers 3
    .param p0, "bRdmEnable"    # Z
    .param p1, "bMtaEnable"    # Z

    .prologue
    .line 176
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/msdk/WeGame;->enableCrashReport(ZZ)V

    .line 177
    return-void
.end method

.method public static WGGetChannelId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I
    .registers 2
    .param p0, "ret"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    .line 156
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/login/LoginManager;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    move-result v0

    return v0
.end method

.method public static WGGetPaytokenValidTime()I
    .registers 4

    .prologue
    .line 243
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "paytoken_expire_time"

    const v3, 0x7e900

    invoke-static {v1, v2, v3}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "ptExpired":I
    return v0
.end method

.method public static WGGetPf(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "gameCustomInfo"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/pf/WGPfManager;->getPf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static WGGetPfKey()Ljava/lang/String;
    .registers 1

    .prologue
    .line 216
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/pf/WGPfManager;->getPfKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static WGGetPlatformAPPVersion(Lcom/tencent/msdk/consts/EPlatform;)Ljava/lang/String;
    .registers 3
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 248
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/WeGameTools;->WGGetPlatformAPPVersion(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static WGGetRegisterChannelId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/pf/WGPfManager;->getRegChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static WGGetVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 152
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->WGGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static WGIsPlatformInstalled(Lcom/tencent/msdk/consts/EPlatform;)Z
    .registers 3
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 204
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/WeGameTools;->isPlatformInstalled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static WGIsPlatformSupportApi(Lcom/tencent/msdk/consts/EPlatform;)Z
    .registers 3
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 208
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/WeGameTools;->isPlatformSupportApi(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static WGLogPlatformSDKVersion()V
    .registers 1

    .prologue
    .line 224
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->logPlatformSDKVersion()V

    .line 225
    return-void
.end method

.method public static WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V
    .registers 2
    .param p0, "platform"    # Lcom/tencent/msdk/consts/EPlatform;

    .prologue
    .line 172
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/login/LoginManager;->WGLogin(Lcom/tencent/msdk/consts/EPlatform;)V

    .line 173
    return-void
.end method

.method public static WGLoginWithLocalInfo()V
    .registers 3

    .prologue
    .line 238
    const-string v0, "WGLoginWithLocalInfo"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/msdk/login/LoginManager;->WGLoginWithLocalInfo(ZLcom/tencent/msdk/api/WakeupRet;)V

    .line 240
    return-void
.end method

.method public static WGLogout()Z
    .registers 1

    .prologue
    .line 163
    invoke-static {}, Lcom/tencent/msdk/login/LoginTimer;->getInstance()Lcom/tencent/msdk/login/LoginTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginTimer;->stopTimer()V

    .line 164
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->logout()Z

    move-result v0

    return v0
.end method

.method public static WGQueryQQMyInfo()Z
    .registers 1

    .prologue
    .line 228
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/handle/MsdkThreadManager;->queryQQUserInfo()V

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public static WGQueryWXMyInfo()Z
    .registers 1

    .prologue
    .line 233
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/handle/MsdkThreadManager;->queryWXUserInfo()V

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public static WGRefreshWXToken()V
    .registers 4

    .prologue
    .line 194
    invoke-static {}, Lcom/tencent/msdk/permission/PermissionManage;->getInstance()Lcom/tencent/msdk/permission/PermissionManage;

    move-result-object v1

    const-string v2, "WGRefreshWXToken"

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/permission/PermissionManage;->isHavePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 195
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/login/LoginManager;->WGRefreshWxToken()V

    .line 201
    .local v0, "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    :goto_13
    return-void

    .line 197
    .end local v0    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_14
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    const/4 v2, -0x1

    const-string v3, "WGRefreshWXToken function not permission"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/msdk/api/LoginRet;-><init>(IILjava/lang/String;)V

    .line 199
    .restart local v0    # "failLoginRet":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto :goto_13
.end method

.method public static WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "isRealTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/msdk/WeGame;->WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 181
    return-void
.end method

.method public static WGSetObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V
    .registers 2
    .param p0, "d"    # Lcom/tencent/msdk/api/WGPlatformObserver;

    .prologue
    .line 72
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->setObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V

    .line 73
    return-void
.end method

.method public static WGSetPermission(I)V
    .registers 2
    .param p0, "permissions"    # I

    .prologue
    .line 144
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->WGSetPermission(I)V

    .line 145
    return-void
.end method

.method public static WGSwitchUser(Z)Z
    .registers 3
    .param p0, "switchToLaunchUser"    # Z

    .prologue
    .line 168
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/tencent/msdk/login/LoginManager;->switchUser(ZLcom/tencent/msdk/api/WakeupRet;)Z

    move-result v0

    return v0
.end method

.method public static handleCallback(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->handleCallback(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 131
    const-string v0, "WGOnActivityResult called"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/msdk/WeGame;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public static onDestory(Landroid/app/Activity;)V
    .registers 3
    .param p0, "game"    # Landroid/app/Activity;

    .prologue
    .line 123
    const-string v0, "WGOnDestory"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/WeGame;->ReportGameTime(I)V

    .line 125
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->onDestory(Landroid/app/Activity;)V

    .line 126
    return-void
.end method

.method public static onPause()V
    .registers 3

    .prologue
    .line 110
    const-string v0, "WGOnPause"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ON_PAUSE_CALLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 112
    sget-object v0, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/stat/MsdkStat;

    invoke-virtual {v0}, Lcom/tencent/msdk/stat/MsdkStat;->onPause()V

    .line 113
    invoke-static {}, Lcom/tencent/msdk/timer/TaskManager;->onPause()V

    .line 114
    return-void
.end method

.method public static onRestart()V
    .registers 2

    .prologue
    .line 93
    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/WeGame;->ReportGameTime(I)V

    .line 95
    invoke-static {}, Lcom/tencent/msdk/login/LoginTimer;->getInstance()Lcom/tencent/msdk/login/LoginTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginTimer;->startTimer()V

    .line 96
    return-void
.end method

.method public static onResume()V
    .registers 3

    .prologue
    .line 100
    const-string v0, "WeGame WGPlatform.onResume"

    const-string v1, "WGOnResume"

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ON_RESUME_CALLED"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 102
    sget-object v0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->onResume()V

    .line 103
    sget-object v0, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/stat/MsdkStat;

    invoke-virtual {v0}, Lcom/tencent/msdk/stat/MsdkStat;->onResume()V

    .line 104
    invoke-static {}, Lcom/tencent/msdk/timer/TaskManager;->onResume()V

    .line 106
    invoke-static {}, Lcom/tencent/msdk/login/LoginTimer;->getInstance()Lcom/tencent/msdk/login/LoginTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginTimer;->onResume()V

    .line 107
    return-void
.end method

.method public static onStop()V
    .registers 2

    .prologue
    .line 117
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/WeGame;->ReportGameTime(I)V

    .line 119
    invoke-static {}, Lcom/tencent/msdk/login/LoginTimer;->getInstance()Lcom/tencent/msdk/login/LoginTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginTimer;->stopTimer()V

    .line 120
    return-void
.end method

.method public static wakeUpFromHall(Landroid/content/Intent;)Z
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/WeGame;->wakeUpFromHall(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
