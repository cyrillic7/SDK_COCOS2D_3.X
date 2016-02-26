.class public Lcom/tencent/msdk/stat/BeaconHelper;
.super Ljava/lang/Object;
.source "BeaconHelper.java"


# static fields
.field private static final MSDK_EVENT_HEADER:Ljava/lang/String; = "MSDK_"


# instance fields
.field private gameTimePedding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/stat/GameTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isBeaconInitFinish:Z

.field private startGameTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/stat/BeaconHelper;->isBeaconInitFinish:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/stat/BeaconHelper;->startGameTime:J

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/stat/BeaconHelper;->gameTimePedding:Ljava/util/ArrayList;

    return-void
.end method

.method private static ReportGameTime(Lcom/tencent/msdk/stat/GameTimeInfo;)Z
    .registers 4
    .param p0, "info"    # Lcom/tencent/msdk/stat/GameTimeInfo;

    .prologue
    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "EventType"

    iget-object v2, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "devid"

    iget-object v2, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->devid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "gameTime"

    iget-object v2, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->localGameTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "localTime"

    iget-object v2, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->localTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v1, "appid"

    iget-object v2, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "openid"

    iget-object v2, p0, Lcom/tencent/msdk/stat/GameTimeInfo;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "GAME"

    sget-object v2, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_GAME_TIME:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    invoke-static {v1, v2, v0}, Lcom/tencent/msdk/stat/ReportEvent;->BaseReportEvent(Ljava/lang/String;Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/util/HashMap;)Z

    move-result v1

    return v1
.end method

.method static synthetic access$000(Lcom/tencent/msdk/stat/BeaconHelper;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/stat/BeaconHelper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/msdk/stat/BeaconHelper;->gameTimePedding:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/msdk/stat/BeaconHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/stat/BeaconHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/tencent/msdk/stat/BeaconHelper;->isBeaconInitFinish:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/msdk/stat/GameTimeInfo;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tencent/msdk/stat/GameTimeInfo;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/tencent/msdk/stat/BeaconHelper;->ReportGameTime(Lcom/tencent/msdk/stat/GameTimeInfo;)Z

    move-result v0

    return v0
.end method

.method private getAppVersion(Landroid/app/Activity;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 130
    new-instance v0, Lcom/tencent/msdk/stat/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/tencent/msdk/stat/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "deviceInfo":Lcom/tencent/msdk/stat/DeviceInfo;
    invoke-virtual {v0}, Lcom/tencent/msdk/stat/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "versionName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/tencent/msdk/stat/DeviceInfo;->getVersionCode()I

    move-result v1

    .line 133
    .local v1, "versionCode":I
    if-ltz v1, :cond_2a

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .end local v2    # "versionName":Ljava/lang/String;
    :cond_2a
    return-object v2
.end method

.method private getCurrentLoginPlatform(I)Ljava/lang/String;
    .registers 3
    .param p1, "platId"    # I

    .prologue
    .line 168
    sget v0, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne p1, v0, :cond_7

    .line 169
    const-string v0, "Weixin"

    .line 173
    :goto_6
    return-object v0

    .line 170
    :cond_7
    sget v0, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne p1, v0, :cond_e

    .line 171
    const-string v0, "QQ"

    goto :goto_6

    .line 173
    :cond_e
    const-string v0, ""

    goto :goto_6
.end method

.method public static getXGErrCode(I)I
    .registers 2
    .param p0, "errCode"    # I

    .prologue
    .line 211
    const v0, 0x186a0

    add-int/2addr v0, p0

    return v0
.end method

.method public static reportMSDKEvent(Ljava/lang/String;JZLjava/util/Map;Z)V
    .registers 17
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "flag"    # Z
    .param p5, "isRealTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 241
    :cond_e
    :goto_e
    return-void

    .line 226
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSDK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 228
    .local v8, "currentTime":J
    sub-long v2, v8, p1

    .line 229
    .local v2, "wattingTime":J
    if-nez p4, :cond_2f

    .line 230
    new-instance p4, Ljava/util/HashMap;

    .end local p4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 233
    .restart local p4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2f
    const-string v0, "msdkVersion"

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/WeGame;->getMSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    if-eqz p3, :cond_73

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",wattingTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 240
    :goto_68
    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    goto :goto_e

    .line 237
    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",wattingTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",logic_error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "msdk_logic_error"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",errcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "param_FailCode"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_68
.end method


# virtual methods
.method public enableCrashReport(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "qqAppId"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "isDebug"    # Z

    .prologue
    const/4 v4, 0x0

    .line 39
    iput-boolean v4, p0, Lcom/tencent/msdk/stat/BeaconHelper;->isBeaconInitFinish:Z

    .line 41
    :try_start_3
    invoke-static {p1, p2}, Lcom/tencent/beacon/event/UserAction;->setAppKey(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7b

    .line 45
    :goto_6
    invoke-static {p4, v4}, Lcom/tencent/beacon/event/UserAction;->setLogAble(ZZ)V

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/msdk/stat/BeaconHelper;->getAppVersion(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "appVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/tencent/beacon/event/UserAction;->setAPPVersion(Ljava/lang/String;)V

    .line 49
    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    new-instance v5, Lcom/tencent/msdk/stat/BeaconHelper$1;

    invoke-direct {v5, p0}, Lcom/tencent/msdk/stat/BeaconHelper$1;-><init>(Lcom/tencent/msdk/stat/BeaconHelper;)V

    invoke-static {p1, v4, v6, v7, v5}, Lcom/tencent/beacon/event/UserAction;->initUserAction(Landroid/content/Context;ZJLcom/tencent/beacon/upload/InitHandleListener;)V

    .line 64
    invoke-static {p3}, Lcom/tencent/beacon/event/UserAction;->setChannelID(Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/tencent/msdk/config/ConfigManager;->needCloseBuglyReport(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 66
    new-instance v3, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 67
    .local v3, "strategy":Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    invoke-virtual {v3, p3}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    .line 68
    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppReportDelay(J)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    .line 69
    invoke-virtual {v3, v0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppVersion(Ljava/lang/String;)Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    .line 71
    :try_start_4e
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "qImei":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app qImei:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3, v2}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setDeviceID(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6b} :catch_80

    .line 78
    .end local v2    # "qImei":Ljava/lang/String;
    :goto_6b
    new-instance v4, Lcom/tencent/msdk/stat/BeaconHelper$2;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/stat/BeaconHelper$2;-><init>(Lcom/tencent/msdk/stat/BeaconHelper;)V

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setCrashHandleCallback(Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2, p4, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 127
    .end local v3    # "strategy":Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    :goto_7a
    return-void

    .line 42
    .end local v0    # "appVersion":Ljava/lang/String;
    :catch_7b
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "appVersion":Ljava/lang/String;
    .restart local v3    # "strategy":Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    :catch_80
    move-exception v1

    .line 75
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "strategy":Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    :cond_85
    const-string v4, "close bugly report, fail to init"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_7a
.end method

.method public onLogin(Ljava/lang/String;I)V
    .registers 19
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "platId"    # I

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 143
    .local v12, "start":J
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v8, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "loginType"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/tencent/msdk/stat/BeaconHelper;->getCurrentLoginPlatform(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v14, "msdkVersion"

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v14, "regChannel"

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetRegisterChannelId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v14, "openId"

    move-object/from16 v0, p1

    invoke-virtual {v8, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 151
    .local v10, "end":J
    const-string v2, "wgLogin"

    .line 152
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x1

    .line 153
    .local v3, "isOk":Z
    sub-long v4, v10, v12

    .line 154
    .local v4, "elapse":J
    const-wide/16 v6, 0x3e8

    .line 155
    .local v6, "size":J
    const/4 v9, 0x1

    .line 157
    .local v9, "isRealTime":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onLogin and set beacon userid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/tencent/beacon/event/UserAction;->setUserID(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/config/ConfigManager;->needCloseBuglyReport(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_6b

    .line 160
    invoke-static/range {p1 .. p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 164
    :goto_67
    invoke-static/range {v2 .. v9}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    .line 165
    return-void

    .line 162
    :cond_6b
    const-string v14, "close bugly report, fail to setUserid"

    invoke-static {v14}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_67
.end method

.method public reportEvent(Ljava/lang/String;JZLjava/util/Map;Z)V
    .registers 17
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "flag"    # Z
    .param p6, "isRealTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 205
    .local v8, "currentTime":J
    sub-long v2, v8, p2

    .line 206
    .local v2, "wattingTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",wattingTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 207
    const-wide/16 v4, -0x1

    move-object v0, p1

    move v1, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    .line 208
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "platId"    # I
    .param p4, "isRealTime"    # Z

    .prologue
    .line 181
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v6, "extraMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_9

    .line 183
    const-string p2, ""

    .line 185
    :cond_9
    const-string v0, "evtBody"

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "loginType"

    invoke-direct {p0, p3}, Lcom/tencent/msdk/stat/BeaconHelper;->getCurrentLoginPlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stat reportEvent name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; body: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x1

    .line 190
    .local v1, "isOk":Z
    const-wide/16 v4, -0x1

    .line 191
    .local v4, "size":J
    const-wide/16 v2, 0x0

    move-object v0, p1

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    .line 192
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/HashMap;IZ)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "platId"    # I
    .param p4, "isRealTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stat reportEvent name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; body: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 196
    const-string v0, "loginType"

    invoke-direct {p0, p3}, Lcom/tencent/msdk/stat/BeaconHelper;->getCurrentLoginPlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const/4 v1, 0x1

    .line 198
    .local v1, "isOk":Z
    const-wide/16 v4, -0x1

    .line 199
    .local v4, "size":J
    const-wide/16 v2, 0x0

    move-object v0, p1

    move-object v6, p2

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    .line 200
    return-void
.end method

.method public reportGameTimeEvent(I)V
    .registers 16
    .param p1, "eventType"    # I

    .prologue
    const-wide/16 v12, 0x3e8

    .line 266
    const-wide/16 v2, 0x0

    .line 267
    .local v2, "gametime":J
    const/4 v7, 0x1

    if-eq p1, v7, :cond_a

    const/4 v7, 0x2

    if-ne p1, v7, :cond_5f

    .line 268
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/tencent/msdk/stat/BeaconHelper;->startGameTime:J

    .line 272
    :goto_10
    new-instance v4, Lcom/tencent/msdk/stat/GameTimeInfo;

    invoke-direct {v4}, Lcom/tencent/msdk/stat/GameTimeInfo;-><init>()V

    .line 273
    .local v4, "info":Lcom/tencent/msdk/stat/GameTimeInfo;
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/login/LoginManager;->getCurrentOpenid()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "openid":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/login/LoginManager;->getCurrentPlatform()I

    move-result v6

    .line 275
    .local v6, "platformId":I
    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 276
    sget v7, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne v6, v7, :cond_69

    .line 277
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    iput-object v7, v4, Lcom/tencent/msdk/stat/GameTimeInfo;->appid:Ljava/lang/String;

    .line 284
    :cond_37
    :goto_37
    iput-object v5, v4, Lcom/tencent/msdk/stat/GameTimeInfo;->openid:Ljava/lang/String;

    .line 285
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/msdk/stat/GameTimeInfo;->eventType:Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/tencent/msdk/stat/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/msdk/stat/GameTimeInfo;->devid:Ljava/lang/String;

    .line 287
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/msdk/stat/GameTimeInfo;->localGameTime:Ljava/lang/String;

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v0, v8, v12

    .line 289
    .local v0, "currentTime":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/tencent/msdk/stat/GameTimeInfo;->localTime:Ljava/lang/String;

    .line 290
    iget-boolean v7, p0, Lcom/tencent/msdk/stat/BeaconHelper;->isBeaconInitFinish:Z

    if-eqz v7, :cond_7b

    .line 291
    invoke-static {v4}, Lcom/tencent/msdk/stat/BeaconHelper;->ReportGameTime(Lcom/tencent/msdk/stat/GameTimeInfo;)Z

    .line 299
    :cond_5e
    :goto_5e
    return-void

    .line 270
    .end local v0    # "currentTime":J
    .end local v4    # "info":Lcom/tencent/msdk/stat/GameTimeInfo;
    .end local v5    # "openid":Ljava/lang/String;
    .end local v6    # "platformId":I
    :cond_5f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/tencent/msdk/stat/BeaconHelper;->startGameTime:J

    sub-long/2addr v8, v10

    div-long v2, v8, v12

    goto :goto_10

    .line 278
    .restart local v4    # "info":Lcom/tencent/msdk/stat/GameTimeInfo;
    .restart local v5    # "openid":Ljava/lang/String;
    .restart local v6    # "platformId":I
    :cond_69
    sget v7, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne v6, v7, :cond_76

    .line 279
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    iput-object v7, v4, Lcom/tencent/msdk/stat/GameTimeInfo;->appid:Ljava/lang/String;

    goto :goto_37

    .line 281
    :cond_76
    const-string v7, ""

    iput-object v7, v4, Lcom/tencent/msdk/stat/GameTimeInfo;->appid:Ljava/lang/String;

    goto :goto_37

    .line 294
    .restart local v0    # "currentTime":J
    :cond_7b
    invoke-static {v4}, Lcom/tencent/msdk/stat/BeaconHelper;->ReportGameTime(Lcom/tencent/msdk/stat/GameTimeInfo;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 295
    const-string v7, "Start reportEvent, add info to array"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 296
    iget-object v7, p0, Lcom/tencent/msdk/stat/BeaconHelper;->gameTimePedding:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e
.end method

.method public speedTest(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v3, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v1, "domainList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "addr":Ljava/lang/String;
    if-eqz v0, :cond_3e

    const-string v4, "(\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}):(\\d{1,5})"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 252
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Domain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 257
    .end local v0    # "addr":Ljava/lang/String;
    :cond_58
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_62

    .line 258
    invoke-static {v3}, Lcom/tencent/beacon/event/UserAction;->testSpeedIp(Ljava/util/List;)Z

    .line 262
    :cond_61
    :goto_61
    return-void

    .line 259
    :cond_62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_61

    .line 260
    invoke-static {v1}, Lcom/tencent/beacon/event/UserAction;->testSpeedDomain(Ljava/util/List;)Z

    goto :goto_61
.end method
