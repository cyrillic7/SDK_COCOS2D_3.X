.class public final Lcom/tencent/msdk/WeGame;
.super Ljava/lang/Object;
.source "WeGame.java"


# static fields
.field private static final MSDK_VERSION:Ljava/lang/String; = "2.8.1a"

.field public static final QQHALL:I

.field public static final QQPLATID:I

.field public static final WXPLATID:I

.field private static volatile instance:Lcom/tencent/msdk/WeGame;


# instance fields
.field public api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field public appVersionCode:I

.field public appVersionName:Ljava/lang/String;

.field private firstGameActivity:Landroid/app/Activity;

.field private flag:I

.field private mActivity:Landroid/app/Activity;

.field private mFirstStart:Z

.field public mPermission:Ljava/lang/String;

.field private mPlatId:I

.field private mStat:Lcom/tencent/msdk/stat/Stat;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private msdkKey:Ljava/lang/String;

.field public offerId:Ljava/lang/String;

.field private qqAppKey:Ljava/lang/String;

.field public qq_appid:Ljava/lang/String;

.field private threadMgn:Lcom/tencent/msdk/handle/MsdkThreadManager;

.field private wxRequestStartTime:J

.field public wx_appid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    sput v0, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    .line 68
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    sput v0, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    .line 69
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    sput v0, Lcom/tencent/msdk/WeGame;->QQHALL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lcom/tencent/msdk/WeGame;->flag:I

    .line 75
    iput-object v1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    .line 77
    iput-object v1, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    .line 78
    iput v0, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->qqAppKey:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->msdkKey:Ljava/lang/String;

    .line 86
    const-string v0, "all"

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->mPermission:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/tencent/msdk/stat/Stat;

    invoke-direct {v0}, Lcom/tencent/msdk/stat/Stat;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->mStat:Lcom/tencent/msdk/stat/Stat;

    .line 89
    iput-object v1, p0, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->appVersionName:Ljava/lang/String;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/WeGame;->appVersionCode:I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/WeGame;->mFirstStart:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/WeGame;->wxRequestStartTime:J

    return-void
.end method

.method private checkWXEnv()I
    .registers 2

    .prologue
    .line 388
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 389
    const-string v0, "weixin not install"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 390
    const/16 v0, 0x7d0

    .line 395
    :goto_13
    return v0

    .line 392
    :cond_14
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-nez v0, :cond_25

    .line 393
    const-string v0, "weixin not support api"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 395
    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static getInstance()Lcom/tencent/msdk/WeGame;
    .registers 2

    .prologue
    .line 114
    sget-object v0, Lcom/tencent/msdk/WeGame;->instance:Lcom/tencent/msdk/WeGame;

    if-nez v0, :cond_13

    .line 115
    const-class v1, Lcom/tencent/msdk/WeGame;

    monitor-enter v1

    .line 116
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/WeGame;->instance:Lcom/tencent/msdk/WeGame;

    if-nez v0, :cond_12

    .line 117
    new-instance v0, Lcom/tencent/msdk/WeGame;

    invoke-direct {v0}, Lcom/tencent/msdk/WeGame;-><init>()V

    sput-object v0, Lcom/tencent/msdk/WeGame;->instance:Lcom/tencent/msdk/WeGame;

    .line 119
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 121
    :cond_13
    sget-object v0, Lcom/tencent/msdk/WeGame;->instance:Lcom/tencent/msdk/WeGame;

    return-object v0

    .line 119
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private isTestEnv()Z
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->getApiDomain()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "domain":Ljava/lang/String;
    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static setDescribe(II)Ljava/lang/String;
    .registers 4
    .param p0, "flag"    # I
    .param p1, "platform"    # I

    .prologue
    .line 528
    const-string v0, ""

    .line 529
    .local v0, "desc":Ljava/lang/String;
    if-nez p0, :cond_12

    .line 530
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-eq p1, v1, :cond_c

    sget v1, Lcom/tencent/msdk/WeGame;->QQHALL:I

    if-ne p1, v1, :cond_f

    .line 531
    :cond_c
    const-string v0, ":-) , QQ\u6388\u6743\u6210\u529f"

    .line 540
    :cond_e
    :goto_e
    return-object v0

    .line 533
    :cond_f
    const-string v0, ":-) , WX\u6388\u6743\u6210\u529f"

    goto :goto_e

    .line 535
    :cond_12
    const/16 v1, 0x7d5

    if-ne p0, v1, :cond_19

    .line 536
    const-string v0, ":-) , \u5fae\u4fe1refresh\u6362acctoken \u6210\u529f"

    goto :goto_e

    .line 537
    :cond_19
    const/16 v1, 0x7d6

    if-ne p0, v1, :cond_e

    .line 538
    const-string v0, ":-( , \u5fae\u4fe1refresh\u6362acctoken \u5931\u8d25"

    goto :goto_e
.end method


# virtual methods
.method public Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "baseInfo"    # Lcom/tencent/msdk/api/MsdkBaseInfo;

    .prologue
    const/4 v10, 0x1

    .line 149
    invoke-static {p1}, Lcom/tencent/msdk/tools/Logger;->setLogType(Landroid/app/Activity;)V

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initialized start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sput-wide v6, Lcom/tencent/msdk/stat/ReportEvent;->sGameStart:J

    .line 153
    iput-object p1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    .line 154
    iput-object p1, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    .line 155
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    .line 156
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppKey:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->qqAppKey:Ljava/lang/String;

    .line 157
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    .line 158
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->msdkKey:Ljava/lang/String;

    .line 159
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .line 160
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionName:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->appVersionName:Ljava/lang/String;

    .line 161
    iget v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionCode:I

    iput v6, p0, Lcom/tencent/msdk/WeGame;->appVersionCode:I

    .line 163
    iput-boolean v10, p0, Lcom/tencent/msdk/WeGame;->mFirstStart:Z

    .line 164
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 165
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 166
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 168
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->mStat:Lcom/tencent/msdk/stat/Stat;

    iget-object v7, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    invoke-virtual {v6, p1, v7}, Lcom/tencent/msdk/stat/Stat;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/tencent/msdk/handle/MsdkThreadManager;->getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->threadMgn:Lcom/tencent/msdk/handle/MsdkThreadManager;

    .line 170
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->threadMgn:Lcom/tencent/msdk/handle/MsdkThreadManager;

    invoke-virtual {v6}, Lcom/tencent/msdk/handle/MsdkThreadManager;->init()V

    .line 171
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->threadMgn:Lcom/tencent/msdk/handle/MsdkThreadManager;

    invoke-virtual {v6}, Lcom/tencent/msdk/handle/MsdkThreadManager;->sendGetPermissionMsg()V

    .line 173
    invoke-direct {p0}, Lcom/tencent/msdk/WeGame;->isTestEnv()Z

    move-result v0

    .line 174
    .local v0, "bTestEnv":Z
    invoke-static {}, Lcom/tencent/msdk/control/SwitcherManager;->getInstance()Lcom/tencent/msdk/control/SwitcherManager;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/tencent/msdk/control/SwitcherManager;->init(Landroid/content/Context;)V

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initialized end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeGameSDK Version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->WGGetVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 179
    if-eqz v0, :cond_154

    .line 180
    new-instance v2, Lcom/tencent/msdk/doctor/MsdkDoctor;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/tencent/msdk/doctor/MsdkDoctor;-><init>(Landroid/app/Activity;)V

    .line 181
    .local v2, "doctor":Lcom/tencent/msdk/doctor/MsdkDoctor;
    invoke-virtual {v2}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 182
    .local v1, "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v5, "resultBuilder":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_18b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_18b

    .line 184
    const-string v6, "MSDK Config Error!!!!"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check Result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 186
    const-string v6, "********************check result start********************"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_11a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11a

    .line 191
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_12d
    const-string v6, "********************check result end**********************"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 197
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_132
    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You are using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->getApiDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 201
    .end local v1    # "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "doctor":Lcom/tencent/msdk/doctor/MsdkDoctor;
    .end local v5    # "resultBuilder":Ljava/lang/StringBuilder;
    :cond_154
    sget-object v6, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v6}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->setmContext(Landroid/app/Activity;)V

    .line 203
    invoke-static {}, Lcom/tencent/msdk/timer/TaskManager;->getInstance()Lcom/tencent/msdk/timer/TaskManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/timer/TaskManager;->startTimer()V

    .line 204
    sget-object v6, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v6}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/msdk/stat/MsdkStat;

    invoke-virtual {v6}, Lcom/tencent/msdk/stat/MsdkStat;->clearReportStatus()V

    .line 205
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/tencent/msdk/login/LoginManager;->init(Landroid/app/Activity;)V

    .line 207
    invoke-static {}, Lcom/tencent/msdk/login/LoginTimer;->getInstance()Lcom/tencent/msdk/login/LoginTimer;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/tencent/msdk/login/LoginTimer;->initTimer(Landroid/app/Activity;)V

    .line 208
    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->logPlatformSDKVersion()V

    .line 209
    return-void

    .line 193
    .restart local v1    # "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "doctor":Lcom/tencent/msdk/doctor/MsdkDoctor;
    .restart local v5    # "resultBuilder":Ljava/lang/StringBuilder;
    :cond_18b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check Result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 194
    const-string v6, "All Config OK!!!"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_132
.end method

.method public IsDifferentActivity(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ReportGameTime(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mStat:Lcom/tencent/msdk/stat/Stat;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/stat/Stat;->reportGameTimeEvent(I)V

    .line 587
    return-void
.end method

.method public WGGetVersion()Ljava/lang/String;
    .registers 9

    .prologue
    .line 461
    const-string v1, "VERSION"

    .line 462
    .local v1, "VERSION_KEY":Ljava/lang/String;
    const-string v0, "msdkinfo.ini"

    .line 463
    .local v0, "VERSION_FILE":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 466
    .local v2, "ctx":Landroid/app/Activity;
    :try_start_c
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 468
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 469
    .local v6, "properties":Ljava/util/Properties;
    invoke-virtual {v6, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 470
    const-string v7, ""

    invoke-virtual {v6, v1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "msdkVersion":Ljava/lang/String;
    const-string v7, "2.8.1a"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 472
    const-string v7, "MSDK_VERSION in code is different from VERSION in assets/msdkmetadata.ini"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 474
    :cond_33
    const-string v7, "$"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 476
    const-string v5, "2.8.1a"
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3e

    .line 482
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "msdkVersion":Ljava/lang/String;
    .end local v6    # "properties":Ljava/util/Properties;
    :cond_3d
    :goto_3d
    return-object v5

    .line 479
    :catch_3e
    move-exception v3

    .line 481
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "MSDK Version does not match, is this a development version?"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 482
    const-string v5, "2.8.1a"

    goto :goto_3d
.end method

.method public WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "isRealTime"    # Z
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
    .line 492
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_30

    .line 493
    :cond_4
    const-string p1, ""

    .line 494
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 495
    .restart local p2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WGReportEvent Error: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 500
    :goto_2f
    return-void

    .line 499
    :cond_30
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mStat:Lcom/tencent/msdk/stat/Stat;

    iget v1, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/tencent/msdk/stat/Stat;->reportEvent(Ljava/lang/String;Ljava/util/HashMap;IZ)V

    goto :goto_2f
.end method

.method public WGSetPermission(I)V
    .registers 9
    .param p1, "permissions"    # I

    .prologue
    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WGSetQzonePermission + permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 293
    invoke-static {p1}, Lcom/tencent/msdk/api/WGQZonePermissions;->getPermissionStr(I)[Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "permissionStr":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_55

    .line 302
    if-lez v1, :cond_49

    .line 303
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 307
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/msdk/WeGame;->mPermission:Ljava/lang/String;

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPermission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/msdk/WeGame;->mPermission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public checkApiSupport(Lcom/tencent/msdk/qq/ApiName;)Z
    .registers 5
    .param p1, "api"    # Lcom/tencent/msdk/qq/ApiName;

    .prologue
    const/4 v0, 0x1

    .line 557
    invoke-virtual {p1}, Lcom/tencent/msdk/qq/ApiName;->val()I

    move-result v1

    sget v2, Lcom/tencent/msdk/qq/ApiName;->MAX_QQ_API:I

    if-ge v1, v2, :cond_10

    .line 558
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/tencent/msdk/qq/QQVersionApiManager;->isSupport(Landroid/content/Context;Lcom/tencent/msdk/qq/ApiName;)Z

    move-result v0

    .line 562
    :cond_f
    :goto_f
    return v0

    .line 559
    :cond_10
    invoke-virtual {p1}, Lcom/tencent/msdk/qq/ApiName;->val()I

    move-result v1

    sget v2, Lcom/tencent/msdk/qq/ApiName;->MAX_WX_API:I

    if-ge v1, v2, :cond_f

    goto :goto_f
.end method

.method public checkQQEnv()I
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public enableCrashReport(ZZ)V
    .registers 4
    .param p1, "bRdmEnable"    # Z
    .param p2, "bMtaEnable"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mStat:Lcom/tencent/msdk/stat/Stat;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/msdk/stat/Stat;->enableCrashReport(ZZ)V

    .line 488
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApiDomain()Ljava/lang/String;
    .registers 4

    .prologue
    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use DOMAIN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/tencent/msdk/config/ConfigManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "originDomain":Ljava/lang/String;
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 544
    const-string v0, ""

    .line 546
    .local v0, "appName":Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 548
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_22} :catch_24

    move-result-object v0

    .line 553
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_23
    return-object v0

    .line 550
    :catch_24
    move-exception v1

    .line 551
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_23
.end method

.method protected getExpiresTime(Ljava/lang/String;)J
    .registers 6
    .param p1, "expiresTime"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFirstStartFlag()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/tencent/msdk/WeGame;->mFirstStart:Z

    return v0
.end method

.method public getFlag()I
    .registers 2

    .prologue
    .line 312
    iget v0, p0, Lcom/tencent/msdk/WeGame;->flag:I

    return v0
.end method

.method public getLocalTokenByType(I)Ljava/lang/String;
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 504
    new-instance v1, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v1}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 505
    .local v1, "lr":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v1}, Lcom/tencent/msdk/login/LoginUtils;->getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I

    .line 507
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/msdk/api/TokenRet;

    .line 508
    .local v2, "tr":Lcom/tencent/msdk/api/TokenRet;
    iget v3, v2, Lcom/tencent/msdk/api/TokenRet;->type:I

    if-ne v3, p1, :cond_e

    .line 509
    iget-object v3, v2, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 513
    .end local v2    # "tr":Lcom/tencent/msdk/api/TokenRet;
    :goto_20
    return-object v3

    :cond_21
    const/4 v3, 0x0

    goto :goto_20
.end method

.method public getMSDKKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->msdkKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 457
    const-string v0, "2.8.1a"

    return-object v0
.end method

.method public getPlatId()I
    .registers 2

    .prologue
    .line 316
    iget v0, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    return v0
.end method

.method public getQQAPPKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->qqAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStat()Lcom/tencent/msdk/stat/Stat;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mStat:Lcom/tencent/msdk/stat/Stat;

    return-object v0
.end method

.method public getTencent()Lcom/tencent/tauth/Tencent;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method public getWxRequestStartTime()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/tencent/msdk/WeGame;->wxRequestStartTime:J

    return-wide v0
.end method

.method public handleCallback(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    const-string v5, "handleCallBack"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 267
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz p1, :cond_12

    :try_start_c
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_18

    .line 270
    :cond_12
    const-string v5, "handleCallBackintent is NULL"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 289
    :goto_17
    return-void

    .line 273
    :cond_18
    invoke-static {p1}, Lcom/tencent/msdk/tools/Logger;->d(Landroid/content/Intent;)V

    .line 275
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 276
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 277
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_53} :catch_54

    goto :goto_2e

    .line 281
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_54
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_58
    invoke-static {p1}, Lcom/tencent/msdk/tools/Logger;->d(Landroid/content/Intent;)V

    .line 287
    iget-object v5, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 288
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/tencent/msdk/login/LoginManager;->handleCallback(Landroid/os/Bundle;)V

    goto :goto_17
.end method

.method public lauchWXPlatForm()V
    .registers 7

    .prologue
    .line 345
    const-string v4, "lauchWXPlatForm"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iput v5, v4, Lcom/tencent/msdk/WeGame;->mPlatId:I

    .line 347
    invoke-direct {p0}, Lcom/tencent/msdk/WeGame;->checkWXEnv()I

    move-result v0

    .line 349
    .local v0, "code":I
    packed-switch v0, :pswitch_data_ac

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/msdk/WeGame;->wxRequestStartTime:J

    .line 369
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 370
    .local v2, "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    const-string v4, "snsapi_userinfo,snsapi_friend,snsapi_message"

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 371
    const-string v4, "none"

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 373
    const-string v4, "wexin sendReq"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v3

    .line 375
    .local v3, "ret":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lauchWXPlatForm wx SendReqRet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 378
    if-nez v3, :cond_6c

    .line 379
    new-instance v1, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v1}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 380
    .local v1, "lr":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/msdk/WeGame;->getPlatId()I

    move-result v4

    iput v4, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 381
    const-string v4, "Weixin login fail, sendReq false"

    iput-object v4, v1, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 382
    const/16 v4, 0x7d4

    iput v4, v1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 383
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 385
    .end local v1    # "lr":Lcom/tencent/msdk/api/LoginRet;
    .end local v2    # "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    .end local v3    # "ret":Z
    :cond_6c
    :goto_6c
    return-void

    .line 351
    :pswitch_6d
    new-instance v1, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v1}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 352
    .restart local v1    # "lr":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/msdk/WeGame;->getPlatId()I

    move-result v4

    iput v4, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 353
    const-string v4, "Weixin NOT Installed"

    iput-object v4, v1, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 354
    const/16 v4, 0x7d0

    iput v4, v1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 355
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto :goto_6c

    .line 359
    .end local v1    # "lr":Lcom/tencent/msdk/api/LoginRet;
    :pswitch_8c
    new-instance v1, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v1}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 360
    .restart local v1    # "lr":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/msdk/WeGame;->getPlatId()I

    move-result v4

    iput v4, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 361
    const-string v4, "Weixin API NOT Support"

    iput-object v4, v1, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 362
    const/16 v4, 0x7d1

    iput v4, v1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 363
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto :goto_6c

    .line 349
    nop

    :pswitch_data_ac
    .packed-switch 0x7d0
        :pswitch_6d
        :pswitch_8c
    .end packed-switch
.end method

.method public logPlatformSDKVersion()V
    .registers 4

    .prologue
    .line 567
    const-string v0, "OpenSDK: 2.9.1"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 568
    const-string v0, "WeixinSDKVersionName: android 2.2.0"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 570
    const-string v0, "WeixinSDKVersionCode: 570556416"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 572
    const-string v0, "Mta: 2.0.0"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beacon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeixinClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    const-string v2, "com.tencent.mm"

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    const-string v2, "com.tencent.mobileqq"

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQGameClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    const-string v2, "com.tencent.qqgame"

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public login(I)V
    .registers 3
    .param p1, "platform"    # I

    .prologue
    .line 403
    sget-object v0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->cleanWhiteListUserinfoCache()V

    .line 404
    sget-object v0, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    invoke-virtual {v0}, Lcom/tencent/msdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/stat/MsdkStat;

    invoke-virtual {v0}, Lcom/tencent/msdk/stat/MsdkStat;->clearReportStatus()V

    .line 405
    sget v0, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne p1, v0, :cond_23

    .line 406
    sget v0, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 407
    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->lauchWXPlatForm()V

    .line 415
    :goto_22
    return-void

    .line 408
    :cond_23
    sget v0, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne p1, v0, :cond_35

    .line 409
    sget v0, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 411
    new-instance v0, Lcom/tencent/msdk/qq/QQLogin;

    invoke-direct {v0}, Lcom/tencent/msdk/qq/QQLogin;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/msdk/qq/QQLogin;->lauchQQPlatForm()V

    goto :goto_22

    .line 413
    :cond_35
    const-string v0, "Wrong platformId"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public logout()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 419
    const-string v2, "logout "

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/tencent/msdk/WeGame;->mStat:Lcom/tencent/msdk/stat/Stat;

    invoke-virtual {v2}, Lcom/tencent/msdk/stat/Stat;->resetOpenId()V

    .line 423
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/pf/WGPfManager;->clearPfAndPfKey()V

    .line 424
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v0

    .line 425
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    iget v2, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-eqz v2, :cond_2b

    .line 426
    iget v2, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    iput v2, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    .line 427
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/msdk/login/LoginInfoManager;->deleteLoginRecord(Ljava/lang/String;)V

    .line 430
    :cond_2b
    iget v2, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    sget v3, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne v2, v3, :cond_4a

    .line 431
    invoke-virtual {p0, v1}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 432
    iget-object v2, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v2, :cond_39

    .line 443
    :cond_38
    :goto_38
    return v1

    .line 434
    :cond_39
    iget-object v2, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 436
    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 443
    :cond_48
    :goto_48
    const/4 v1, 0x1

    goto :goto_38

    .line 437
    :cond_4a
    iget v2, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    sget v3, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne v2, v3, :cond_48

    .line 438
    invoke-virtual {p0, v1}, Lcom/tencent/msdk/WeGame;->setPlatId(I)V

    .line 439
    iget-object v2, p0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v2, :cond_38

    .line 441
    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->unregisterApp()V

    goto :goto_48
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 523
    const-string v0, "WeGame onActivityResult"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 524
    new-instance v0, Lcom/tencent/msdk/qq/QQLogin;

    invoke-direct {v0}, Lcom/tencent/msdk/qq/QQLogin;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/msdk/qq/QQLogin;->onActivityResult(IILandroid/content/Intent;)V

    .line 525
    return-void
.end method

.method public onDestory(Landroid/app/Activity;)V
    .registers 3
    .param p1, "game"    # Landroid/app/Activity;

    .prologue
    .line 134
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    .line 137
    :cond_d
    return-void
.end method

.method protected setExpiresTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "expiresTime"    # Ljava/lang/String;

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFirstStartFlag(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/tencent/msdk/WeGame;->mFirstStart:Z

    .line 100
    return-void
.end method

.method public setFlag(I)V
    .registers 2
    .param p1, "flag"    # I

    .prologue
    .line 320
    iput p1, p0, Lcom/tencent/msdk/WeGame;->flag:I

    .line 321
    return-void
.end method

.method public setObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/tencent/msdk/api/WGPlatformObserver;

    .prologue
    .line 235
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/WeGameNotifyGame;->setObserver(Lcom/tencent/msdk/api/WGPlatformObserver;)V

    .line 236
    return-void
.end method

.method public setOpenSdkLoginInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "atoken"    # Ljava/lang/String;
    .param p3, "actExpired"    # J

    .prologue
    .line 329
    if-nez p1, :cond_4

    .line 330
    const-string p1, ""

    .line 332
    :cond_4
    if-nez p2, :cond_8

    .line 333
    const-string p2, ""

    .line 335
    :cond_8
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public setPlatId(I)V
    .registers 2
    .param p1, "platId"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    .line 325
    return-void
.end method

.method public wakeUpFromHall(Landroid/content/Intent;)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 242
    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_f

    .line 243
    :cond_9
    const-string v4, "wakeUpFromHallintent is NULL"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 255
    :cond_e
    :goto_e
    return v3

    .line 246
    :cond_f
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 248
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "KEY_START_FROM_HALL"

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_21

    move-result v4

    if-eqz v4, :cond_e

    .line 249
    const/4 v3, 0x1

    goto :goto_e

    .line 253
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_21
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method
