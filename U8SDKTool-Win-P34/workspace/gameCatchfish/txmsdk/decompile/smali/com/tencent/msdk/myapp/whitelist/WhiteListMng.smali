.class public Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;
.super Ljava/lang/Object;
.source "WhiteListMng.java"


# static fields
.field public static final gDefault:Lcom/tencent/msdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/msdk/Singleton",
            "<",
            "Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field listener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

.field private mContext:Landroid/app/Activity;

.field private mQQAppId:Ljava/lang/String;

.field private mWxAppId:Ljava/lang/String;

.field private tmpQQLoginInfo:Lcom/tencent/msdk/db/QQLoginModel;

.field private tmpWXLoginInfo:Lcom/tencent/msdk/request/WxResponse;

.field private whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$1;

    invoke-direct {v0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$1;-><init>()V

    sput-object v0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;-><init>(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;)V

    iput-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->listener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mQQAppId:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mWxAppId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mQQAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mQQAppId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mWxAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mWxAppId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public cleanWhiteListUserinfoCache()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->setTmpQQLoginInfo(Lcom/tencent/msdk/db/QQLoginModel;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->setTmpWXLoginInfo(Lcom/tencent/msdk/request/WxResponse;)V

    .line 105
    return-void
.end method

.method public getTmpQQLoginInfo()Lcom/tencent/msdk/db/QQLoginModel;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->tmpQQLoginInfo:Lcom/tencent/msdk/db/QQLoginModel;

    return-object v0
.end method

.method public getTmpWXLoginInfo()Lcom/tencent/msdk/request/WxResponse;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->tmpWXLoginInfo:Lcom/tencent/msdk/request/WxResponse;

    return-object v0
.end method

.method public getmContext()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public needQueryWhiteList()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-static {}, Lcom/tencent/msdk/permission/PermissionManage;->getInstance()Lcom/tencent/msdk/permission/PermissionManage;

    move-result-object v3

    const-string v4, "SkipWhitelist"

    invoke-virtual {v3, v4}, Lcom/tencent/msdk/permission/PermissionManage;->isHavePermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getmContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/config/ConfigManager;->isBeta(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_18
    move v0, v2

    .line 133
    .local v0, "skipWhitelist":Z
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipWhitelist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 134
    if-nez v0, :cond_34

    :goto_31
    return v2

    .end local v0    # "skipWhitelist":Z
    :cond_32
    move v0, v1

    .line 131
    goto :goto_19

    .restart local v0    # "skipWhitelist":Z
    :cond_34
    move v2, v1

    .line 134
    goto :goto_31
.end method

.method public onDestory()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    if-eqz v0, :cond_c

    .line 145
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->onDestroy()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    .line 148
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->onResume()V

    .line 154
    :cond_9
    return-void
.end method

.method public queryUserWhiteListAsync(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "platform"    # I
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "acToken"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    if-nez v1, :cond_e

    .line 166
    invoke-virtual {p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getmContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->getInstance(Landroid/content/Context;)Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    .line 169
    :cond_e
    const-string v1, "OpensdkToMsdkManager MSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->listener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    iget-object v2, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->listener:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;

    invoke-virtual {v1, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->initOpenSDK(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;)V

    .line 171
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;-><init>()V

    .line 172
    .local v0, "info":Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;
    const-string v1, "2"

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->actionFlag:Ljava/lang/String;

    .line 173
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->actionType:I

    .line 174
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne p1, v1, :cond_b9

    .line 175
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mQQAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mQQAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->appId:Ljava/lang/String;

    .line 178
    const-string v1, "6633"

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->gameChannelId:Ljava/lang/String;

    .line 179
    const-string v1, "2"

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->verifyType:Ljava/lang/String;

    .line 190
    :goto_50
    invoke-virtual {p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getmContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->gamePackageName:Ljava/lang/String;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getmContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getmContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->gameVersionCode:Ljava/lang/String;

    .line 195
    iput-object p3, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->identityInfo:Ljava/lang/String;

    .line 197
    const-string v1, "1"

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->identityType:Ljava/lang/String;

    .line 198
    iput-object p2, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->userId:Ljava/lang/String;

    .line 200
    const-string v1, "game_openId"

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->userIdType:Ljava/lang/String;

    .line 202
    const-string v1, "via"

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->via:Ljava/lang/String;

    .line 204
    const-string v1, "OpensdkToMsdkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAuthorizedInfo getmContext()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getmContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->whiteListManager:Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;

    invoke-virtual {p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getmContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedManager;->getUserAuthorizedInfo(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;Landroid/content/Context;)V

    .line 207
    :goto_b8
    return-void

    .line 180
    :cond_b9
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne p1, v1, :cond_cf

    .line 181
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mWxAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mWxAppId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->appId:Ljava/lang/String;

    .line 184
    const-string v1, "10910"

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->gameChannelId:Ljava/lang/String;

    .line 185
    const-string v1, "1"

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->verifyType:Ljava/lang/String;

    goto :goto_50

    .line 187
    :cond_cf
    const-string v1, "invalid platform"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_b8
.end method

.method public setTmpQQLoginInfo(Lcom/tencent/msdk/db/QQLoginModel;)V
    .registers 2
    .param p1, "tmpQQLoginInfo"    # Lcom/tencent/msdk/db/QQLoginModel;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->tmpQQLoginInfo:Lcom/tencent/msdk/db/QQLoginModel;

    .line 227
    return-void
.end method

.method public setTmpWXLoginInfo(Lcom/tencent/msdk/request/WxResponse;)V
    .registers 2
    .param p1, "tmpWXLoginInfo"    # Lcom/tencent/msdk/request/WxResponse;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->tmpWXLoginInfo:Lcom/tencent/msdk/request/WxResponse;

    .line 237
    return-void
.end method

.method public setmContext(Landroid/app/Activity;)V
    .registers 2
    .param p1, "mContext"    # Landroid/app/Activity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mContext:Landroid/app/Activity;

    .line 217
    return-void
.end method
