.class public final Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:J = 0x7530L

.field public static final GAM_ACCEPTALLMESSAGE:I = 0x8

.field public static final GAM_ACCEPTMESSAGE:I = 0x7

.field public static final GAM_DELETEME:I = 0xf

.field public static final GAM_LOADGAMEFRIENDS:I = 0x3

.field public static final GAM_LOADGAMEINFO:I = 0x1

.field public static final GAM_LOADGAMEME:I = 0x2

.field public static final GAM_LOADGAMEMESSAGE:I = 0x5

.field public static final GAM_LOADLEADERBOARD:I = 0xc

.field public static final GAM_LOADLOTTERYPRIZE:I = 0x10

.field public static final GAM_MESSAGEBLOCK:I = 0xd

.field public static final GAM_SENDGAMEMESSAGE:I = 0x6

.field public static final GAM_SENDINVITEMESSAGE:I = 0xe

.field public static final GAM_SENDINVITEMESSAGENEW:I = 0x15

.field public static final GAM_SHAREFORLARGEIMG:I = 0x14

.field public static final GAM_SHARETOMILIAO:I = 0x11

.field public static final GAM_SHARETOMITALKNEW:I = 0x16

.field public static final GAM_SYNCRESULT:I = 0x12

.field public static final GAM_SYNCRESULTS:I = 0x13

.field public static final GAM_UPDATEME:I = 0x4

.field public static final GAM_UPDATERESULT:I = 0xa

.field public static final GAM_UPDATERESULTS:I = 0xb

.field public static final GAM_USEHEART:I = 0x9

.field private static final SERVICE_FILE_NAME:Ljava/lang/String; = "MiGameCenterSDKService.apk"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field private static final SERVICE_PKG_NAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field private static volatile sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# instance fields
.field private _Lock_:Ljava/lang/Object;

.field private _check_service_lock_:Ljava/lang/Object;

.field private activity:Landroid/app/Activity;

.field private appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field private checkLoginConnection:Landroid/content/ServiceConnection;

.field private volatile connect_flag:I

.field private connection:Landroid/content/ServiceConnection;

.field private ctx:Landroid/content/Context;

.field private loginSdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

.field private mTouch:Z

.field private miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

.field private openAppConnection:Landroid/content/ServiceConnection;

.field private sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

.field private serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

.field private service_isntall_ask:I

.field private systemTime:J

.field private toastHandler:Landroid/os/Handler;

.field private useHeartToken:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->useHeartToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/c;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/r;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/r;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/x;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/x;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/z;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/z;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkLoginConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform$5;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setSocialGame(Z)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppForInit()V

    return-void
.end method

.method public static Init(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .registers 4

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    if-nez v0, :cond_16

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MiAppInfo is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    :goto_15
    return-void

    :cond_16
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p1, v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    goto :goto_15
.end method

.method static synthetic access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Z)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isTopActivity(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_user_changed(Landroid/app/Activity;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendLogToSDKSerivce(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->service_isntall_ask:I

    return p1
.end method

.method static synthetic access$1800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_check_service_lock_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->useHeartToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->useHeartToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)I
    .registers 2

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    return v0
.end method

.method static synthetic access$302(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastMsg()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openApp(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    return-void
.end method

.method static synthetic access$902(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->loginSdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object p1
.end method

.method private checkServiceVersion(Landroid/content/Context;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "MiGameCenterSDKService.apk"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "MiGameCenterSDKService.apk"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_28
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3a

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_28

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    move v0, v1

    :goto_39
    return v0

    :cond_3a
    :try_start_3a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    const/16 v5, 0x40

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_55} :catch_34

    if-ge v3, v2, :cond_38

    goto :goto_39
.end method

.method private check_and_connect(Landroid/content/Context;Z)I
    .registers 9

    const/4 v2, 0x1

    const/4 v1, -0x1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->activity:Landroid/app/Activity;

    :cond_b
    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->install_service_apk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkServiceVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->install_service_apk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v1

    goto :goto_19

    :cond_28
    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkServiceVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    goto :goto_19

    :cond_30
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    if-nez v0, :cond_3d

    const-string v0, "MiCommplatform"

    const-string v2, "\u4f7f\u7528SDK\u524d\u8bf7\u5148\u8c03\u7528MiCommplatform.Init()\u4e14MiappInfo\u53c2\u6570\u4e0d\u53ef\u4e3anull"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_19

    :cond_3d
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    monitor-enter v2

    const/high16 v0, -0x80000000

    :try_start_42
    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_73

    :try_start_5a
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_5f} :catch_6e
    .catchall {:try_start_5a .. :try_end_5f} :catchall_73

    :goto_5f
    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_73

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v0, :cond_76

    const-string v0, ">>>"

    const-string v1, "sdk.ConnService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    goto :goto_19

    :catch_6e
    move-exception v0

    :try_start_6f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5f

    :catchall_73
    move-exception v0

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_73

    throw v0

    :cond_76
    move v0, v1

    goto :goto_19
.end method

.method private check_and_connect_for_account(Landroid/content/Context;)I
    .registers 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->activity:Landroid/app/Activity;

    :cond_b
    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->install_service_apk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkServiceVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->install_service_apk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v1

    goto :goto_19

    :cond_28
    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkServiceVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    goto :goto_19

    :cond_30
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    if-nez v0, :cond_3d

    const-string v0, "MiCommplatform"

    const-string v2, "\u4f7f\u7528SDK\u524d\u8bf7\u5148\u8c03\u7528MiCommplatform.Init()\u4e14MiappInfo\u53c2\u6570\u4e0d\u53ef\u4e3anull"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_19

    :cond_3d
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    monitor-enter v2

    const/high16 v0, -0x80000000

    :try_start_42
    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkLoginConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_73

    :try_start_5a
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_5f} :catch_6e
    .catchall {:try_start_5a .. :try_end_5f} :catchall_73

    :goto_5f
    :try_start_5f
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_73

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->loginSdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v0, :cond_76

    const-string v0, ">>>"

    const-string v1, "sdk.ConnService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    goto :goto_19

    :catch_6e
    move-exception v0

    :try_start_6f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5f

    :catchall_73
    move-exception v0

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_73

    throw v0

    :cond_76
    move v0, v1

    goto :goto_19
.end method

.method private check_user_changed(Landroid/app/Activity;I)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v1, -0x33

    if-ne p2, v1, :cond_30

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "\u7cfb\u7edf\u8d26\u6237\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u65b0\u767b\u5f55\uff01"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u786e\u5b9a"

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/l;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/l;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/m;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/m;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :cond_30
    return v0
.end method

.method private chmod(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24
.end method

.method private disconnect(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->unregistCallBack(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    const-string v1, ">>>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_4

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private export_install_service_apk()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "MiGameCenterSDKService.apk"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "MiGameCenterSDKService.apk"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    const-string v5, "MiGameCenterSDKService.apk"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_28
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3a

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_28

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    :goto_39
    return v0

    :cond_3a
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, "777"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->chmod(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_7d} :catch_34

    goto :goto_39
.end method

.method public static getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    .registers 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4f7f\u7528SDK\u524d\u8bf7\u5148\u8c03\u7528MiCommplatform.Init()\u4e14MiappInfo\u53c2\u6570\u4e0d\u53ef\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "44033"

    return-object v0
.end method

.method private install_service_apk(Landroid/content/Context;Z)Z
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->service_isntall_ask:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_check_service_lock_:Ljava/lang/Object;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/xiaomi/gamecenter/sdk/h;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/os/Looper;ZLandroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_check_service_lock_:Ljava/lang/Object;

    monitor-enter v2

    :try_start_19
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_check_service_lock_:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_28
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2d

    :goto_1e
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_2d

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->service_isntall_ask:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_30

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_check_service_lock_:Ljava/lang/Object;

    :cond_27
    :goto_27
    return v0

    :catch_28
    move-exception v1

    :try_start_29
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1e

    :catchall_2d
    move-exception v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->export_install_service_apk()Z

    move-result v1

    if-eqz v1, :cond_27

    const-wide/16 v0, 0x3e8

    :try_start_38
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_4f

    :goto_3b
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isTopActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_54

    const-wide/16 v0, 0x64

    :try_start_46
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3b

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3b

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3b

    :cond_54
    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v0

    goto :goto_27
.end method

.method private isTopActivity(Landroid/app/Activity;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_2b
    return v0

    :cond_2c
    move v0, v2

    goto :goto_2b
.end method

.method private miCardPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnCardPayProcessListener;)V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_a

    const/16 v0, -0x4656

    invoke-interface {p3, v0}, Lcom/xiaomi/gamecenter/sdk/OnCardPayProcessListener;->finishCardPayProcess(I)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/g;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/xiaomi/gamecenter/sdk/g;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnCardPayProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/g;->start()V

    goto :goto_9
.end method

.method private miLogout(Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .registers 4

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ab;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/gamecenter/sdk/ab;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ab;->start()V

    goto :goto_a
.end method

.method private miWindow(Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V
    .registers 3

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_a

    const/16 v0, -0x4656

    invoke-interface {p1, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ac;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/gamecenter/sdk/ac;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ac;->start()V

    goto :goto_9
.end method

.method private openApp(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_27
    .catchall {:try_start_0 .. :try_end_2} :catchall_37

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_f
    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->openAppReportForInit(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_27
    .catchall {:try_start_10 .. :try_end_1b} :catchall_37

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_f

    :catch_27
    move-exception v0

    :try_start_28
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_37

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_f

    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method private openAppForInit()V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_f
    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v1, 0xa83e

    if-lt v0, v1, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_37

    goto :goto_8

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private sendLogToSDKSerivce(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->sendLogToService(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_4

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method private sendToastMsg()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    return-void
.end method


# virtual methods
.method public acceptAllMessage(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 9

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0x8

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public acceptMessage(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 10

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/4 v3, 0x7

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public canOpenEntrancePage()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_10
    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1a} :catch_20

    const/16 v2, 0x8

    if-lt v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_9
.end method

.method public checkJoinedUnion(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;)V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;->sendResultCode(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/p;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/gamecenter/sdk/p;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/p;->start()V

    goto :goto_a
.end method

.method public checkMiTalkStatus(Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;)V
    .registers 4

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;->sendResultCode(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/n;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/gamecenter/sdk/n;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/n;->start()V

    goto :goto_b
.end method

.method public checkVipIsScubscribed(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;)V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;->sendResultCode(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/s;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/gamecenter/sdk/s;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/s;->start()V

    goto :goto_a
.end method

.method public deleteMe(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 9

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0xf

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public generateCpOrderId()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMD5([B)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_43

    :try_start_2
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_16
    array-length v0, v3

    if-ge v1, v0, :cond_33

    aget-byte v0, v3, v1

    if-gez v0, :cond_1f

    add-int/lit16 v0, v0, 0x100

    :cond_1f
    const/16 v4, 0x19

    if-ge v0, v4, :cond_28

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_3d} :catch_3f

    move-result-object v0

    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_43
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public getUnionList(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/u;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/u;->start()V

    goto :goto_a
.end method

.method public getVipList(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/v;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/v;->start()V

    goto :goto_a
.end method

.method public isMiAccountLogin()Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->isMiAccountLogin()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V

    const-string v3, ">>>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_36

    const-string v2, "isLogin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_35} :catch_37

    move-result v0

    :cond_36
    :goto_36
    return v0

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_36
.end method

.method isSdkServiceExist(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v2, v1

    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_27

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_29

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_27
    move v0, v1

    goto :goto_22

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_22
.end method

.method public joinUnion(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;)V
    .registers 6

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;->sendResultCode(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/o;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/xiaomi/gamecenter/sdk/o;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/o;->start()V

    goto :goto_a
.end method

.method public loadGameFriends(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 9

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/4 v3, 0x3

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public loadGameInfo(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 9

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-boolean v3, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public loadGameMe(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 9

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/4 v3, 0x2

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public loadGameMessage(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 9

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/4 v3, 0x5

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public loadLeaderBoard(Landroid/app/Activity;Ljava/lang/String;IILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 12

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0xc

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public messageBlock(Landroid/app/Activity;ZLcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 10

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0xd

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public miAppExit(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnExitListner;)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/w;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnExitListner;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/aa;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/aa;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/aa;->start()V

    goto :goto_a
.end method

.method public miUniPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    invoke-interface {p3, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    const/4 v0, -0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/f;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/xiaomi/gamecenter/sdk/f;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/f;->start()V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public miUniPayOffline(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    invoke-interface {p3, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    const/4 v0, -0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ad;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/xiaomi/gamecenter/sdk/ad;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ad;->start()V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public miUniPayOnline(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Landroid/os/Bundle;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I
    .registers 11

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    invoke-interface {p4, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    const/4 v0, -0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/e;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/e;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/e;->start()V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public newSDKInstalled(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I

    move-result v1

    if-nez v1, :cond_d

    :goto_7
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public openMiTalkUpdateSite()V
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/t;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/t;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/t;->start()V

    goto :goto_4
.end method

.method public sendGameMessage(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I[BLjava/util/List;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 16

    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_d

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p9, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/4 v1, 0x7

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object p4, v5, v1

    const/4 v1, 0x3

    aput-object p5, v5, v1

    const/4 v1, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x5

    aput-object p7, v5, v1

    aput-object p8, v5, v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p9

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public sendInviteMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    invoke-virtual {p5, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    if-nez v0, :cond_1f

    const-string v0, "\u8bf7\u5148\u8c03\u7528loadGameInfo\u63a5\u53e3"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, -0x6b

    invoke-virtual {p5, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    goto :goto_b

    :cond_1f
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0x15

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    aput-object p3, v5, v2

    const/4 v1, 0x2

    aput-object p4, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public sendInviteMessage(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    invoke-virtual {p6, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    if-nez v0, :cond_1f

    const-string v0, "\u8bf7\u5148\u8c03\u7528loadGameInfo\u63a5\u53e3"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, -0x6b

    invoke-virtual {p6, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    goto :goto_b

    :cond_1f
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0xe

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object p4, v5, v1

    const/4 v1, 0x3

    aput-object p5, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public shareToMiTalk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 12

    const/16 v3, -0x6b

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_e

    const/16 v0, -0x4656

    invoke-virtual {p5, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "\u53c2\u6570\u9519\u8bef,title\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p5, v3, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    goto :goto_d

    :cond_21
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    if-nez v0, :cond_32

    const-string v0, "\u8bf7\u5148\u8c03\u7528loadGameInfo\u63a5\u53e3"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p5, v3, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    goto :goto_d

    :cond_32
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0x11

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    aput-object p3, v5, v2

    const/4 v1, 0x2

    aput-object p4, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public shareToMiTalkForImgAndUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    invoke-virtual {p6, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    if-nez v0, :cond_1f

    const-string v0, "\u8bf7\u5148\u8c03\u7528loadGameInfo\u63a5\u53e3"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, -0x6b

    invoke-virtual {p6, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    goto :goto_b

    :cond_1f
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0x16

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    aput-object p3, v5, v2

    const/4 v1, 0x2

    aput-object p4, v5, v1

    const/4 v1, 0x3

    aput-object p5, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public shareToMiTalkForLargeImg(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    invoke-virtual {p4, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    if-nez v0, :cond_1f

    const-string v0, "\u8bf7\u5148\u8c03\u7528loadGameInfo\u63a5\u53e3"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, -0x6b

    invoke-virtual {p4, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    goto :goto_b

    :cond_1f
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0x14

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    aput-object p3, v5, v2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public subscribeVip(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;)V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_b

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;->sendResultCode(ILjava/lang/String;)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/q;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaomi/gamecenter/sdk/q;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/q;->start()V

    goto :goto_a
.end method

.method public syncResult(Landroid/app/Activity;Ljava/lang/String;II[B[BLcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 14

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0x12

    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object p5, v5, v1

    const/4 v1, 0x4

    aput-object p6, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public syncResults(Landroid/app/Activity;Ljava/util/HashMap;I[B[BLcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 13

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0x13

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object p4, v5, v1

    const/4 v1, 0x3

    aput-object p5, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public updateMe(Landroid/app/Activity;II[B[BLcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 13

    const/4 v3, 0x4

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_d

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p6, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    iput-boolean v4, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    const/4 v1, 0x2

    aput-object p4, v5, v1

    const/4 v1, 0x3

    aput-object p5, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public updateResult(Landroid/app/Activity;Ljava/lang/String;II[B[BLcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    invoke-virtual {p7, v0, v4}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0xa

    const/4 v1, 0x7

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object p5, v5, v1

    const/4 v1, 0x4

    aput-object p6, v5, v1

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x6

    aput-object v4, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public updateResults(Landroid/app/Activity;Ljava/util/HashMap;I[B[BLcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_c

    const/16 v0, -0x4656

    invoke-virtual {p6, v0, v4}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0xb

    const/4 v1, 0x6

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object p4, v5, v1

    const/4 v1, 0x3

    aput-object p5, v5, v1

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x5

    aput-object v4, v5, v1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public update_screen_orientation(Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setOrientation(Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)V

    return-void
.end method

.method public useHeart(Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_d

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V

    :goto_c
    return-void

    :cond_d
    iput-boolean v4, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    const/16 v3, 0x9

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v4

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V

    goto :goto_c
.end method
