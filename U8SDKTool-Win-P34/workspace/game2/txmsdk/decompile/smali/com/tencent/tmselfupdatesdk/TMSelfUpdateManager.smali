.class public Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final DEFAULT_VIA:Ljava/lang/String; = "ANDROID.YYB.UPDATE"

.field protected static final TAG:Ljava/lang/String; = "TMSelfUpdateManager"

.field private static final YYB_APPID:Ljava/lang/String; = "50801"

.field private static final YYB_PACKAGENAME:Ljava/lang/String; = "com.tencent.android.qqdownloader"

.field protected static isMergeApk:Z

.field protected static mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# instance fields
.field a:Ljava/lang/ref/ReferenceQueue;

.field b:Ljava/util/ArrayList;

.field c:Landroid/os/Handler;

.field d:Landroid/os/HandlerThread;

.field e:Ljava/lang/String;

.field f:I

.field g:Z

.field h:I

.field protected hostPackageName:Ljava/lang/String;

.field i:Ljava/lang/String;

.field private mApkUpdateListener:Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

.field protected mAppId:J

.field protected mContext:Landroid/content/Context;

.field private mDownloadPatchCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

.field private mDownloadYYBCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

.field protected mHostChannelId:Ljava/lang/String;

.field protected mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

.field private mOpenSDKYYBStateListener:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

.field private mPackageInstallListener:Lcom/tencent/tmselfupdatesdk/internal/b;

.field protected mScene:Ljava/lang/String;

.field protected mYybChannelId:Ljava/lang/String;

.field protected overwriteChannelid:B

.field protected updateType:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    .line 63
    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mAppId:J

    .line 66
    iput-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mYybChannelId:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "selfUpdateSDK_call_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->d:Landroid/os/HandlerThread;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->f:I

    .line 97
    iput-boolean v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    .line 111
    iput-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    .line 727
    new-instance v0, Lcom/tencent/tmselfupdatesdk/c;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/c;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKYYBStateListener:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    .line 778
    new-instance v0, Lcom/tencent/tmselfupdatesdk/d;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/d;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mDownloadYYBCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

    .line 862
    new-instance v0, Lcom/tencent/tmselfupdatesdk/f;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/f;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mDownloadPatchCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

    .line 986
    new-instance v0, Lcom/tencent/tmselfupdatesdk/h;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/h;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mApkUpdateListener:Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    .line 1097
    new-instance v0, Lcom/tencent/tmselfupdatesdk/i;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/i;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mPackageInstallListener:Lcom/tencent/tmselfupdatesdk/internal/b;

    .line 117
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a:Ljava/lang/ref/ReferenceQueue;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    .line 123
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    .line 125
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->genNewPkgProcess()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->onCheckNeedUpdateInfo(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->patchGenInstall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->onYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startInstall(Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private genNewPkgProcess()V
    .registers 3

    .prologue
    .line 1114
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/j;

    invoke-direct {v1, p0}, Lcom/tencent/tmselfupdatesdk/j;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1220
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;
    .registers 2

    .prologue
    .line 134
    const-class v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    if-nez v0, :cond_e

    .line 136
    new-instance v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;-><init>()V

    sput-object v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    .line 138
    :cond_e
    sget-object v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onCheckNeedUpdateInfo(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V
    .registers 6

    .prologue
    .line 1303
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    if-nez p1, :cond_18

    .line 1305
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "upateinfo == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :goto_17
    return-void

    .line 1309
    :cond_18
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upateinfo: (status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; updateMedthod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; newApkSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getNewApkSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; patchSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getPatchSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; newFeature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getNewFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; updateDownloadUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b6

    .line 1314
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_92
    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1315
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1316
    if-nez v0, :cond_ac

    .line 1317
    const-string v0, "TMSelfUpdateManager"

    const-string v2, "onCheckNeedUpdateInfo listener = null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    .line 1320
    :cond_ac
    instance-of v2, v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    if-eqz v2, :cond_92

    .line 1321
    check-cast v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    invoke-interface {v0, p1}, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;->onUpdateInfoReceived(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_92

    .line 1325
    :cond_b6
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17
.end method

.method private onYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .registers 8

    .prologue
    .line 708
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 711
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 712
    if-nez v0, :cond_53

    .line 713
    const-string v0, "TMSelfUpdateManager"

    const-string v2, "listener == null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 716
    :cond_53
    instance-of v2, v0, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    if-eqz v2, :cond_39

    .line 717
    check-cast v0, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;->onDownloadYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_39

    .line 721
    :cond_5d
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method private patchGenInstall(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1229
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patchPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_new.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1239
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new apk has yet exists\uff1aurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";  newPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iget-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startInstall(Ljava/lang/String;Ljava/lang/String;B)V

    .line 1244
    const/16 v0, -0xe

    const-string v1, "SelfUpdate success,New Pakage is exists!"

    invoke-virtual {p0, v5, v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1268
    :cond_82
    :goto_82
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    return-void

    .line 1248
    :cond_8a
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->patchNewApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1249
    const-string v2, "TMSelfUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now begin gen New apk; result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; patchPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; newGenApkPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    if-nez v1, :cond_f8

    .line 1253
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patchGenInstall overwriteChannelid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p0, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->writeChannelIdAfterUpdate(Ljava/lang/String;)V

    .line 1257
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iget-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startInstall(Ljava/lang/String;Ljava/lang/String;B)V

    .line 1260
    const-string v0, "SelfUpdate success !"

    invoke-virtual {p0, v5, v5, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto :goto_82

    .line 1264
    :cond_f8
    const/4 v0, 0x2

    const-string v2, "SelfUpdate failure,genNewApk failure!"

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto :goto_82
.end method

.method private registerListener(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 410
    if-nez p1, :cond_5

    .line 411
    const/4 v0, 0x0

    .line 432
    :goto_4
    return v0

    .line 416
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 417
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 421
    :cond_13
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 422
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 423
    if-ne v0, p1, :cond_19

    move v0, v1

    .line 424
    goto :goto_4

    .line 429
    :cond_2d
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 430
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 432
    goto :goto_4
.end method

.method private startInstall(Ljava/lang/String;Ljava/lang/String;B)V
    .registers 7

    .prologue
    .line 633
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; updateType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 636
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 640
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method private unregisterListener()V
    .registers 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 650
    return-void
.end method


# virtual methods
.method a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;
    .registers 6

    .prologue
    .line 658
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUseSDK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    if-eqz p1, :cond_5b

    .line 663
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->getInstance(Landroid/content/Context;)Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    move-result-object v0

    const-string v1, "selfUpdateSDK_client_sdkupdate"

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->getDownloadSDKClient(Ljava/lang/String;)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    .line 664
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "get selfUpdateSDK_client_sdkupdate"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    if-eqz v0, :cond_3b

    .line 667
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mDownloadPatchCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->registerDownloadTaskListener(Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;)Z

    .line 679
    :cond_3b
    :goto_3b
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue(client): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-object v0

    .line 672
    :cond_5b
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->getInstance(Landroid/content/Context;)Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    move-result-object v0

    const-string v1, "selfUpdateSDK_client_yybupdate"

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->getDownloadSDKClient(Ljava/lang/String;)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    .line 673
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "get selfUpdateSDK_client_yybupdate"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    if-eqz v0, :cond_3b

    .line 676
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mDownloadYYBCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->registerDownloadTaskListener(Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;)Z

    goto :goto_3b
.end method

.method a(IILjava/lang/String;)V
    .registers 7

    .prologue
    .line 691
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 694
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 695
    if-nez v0, :cond_53

    .line 696
    const-string v0, "TMSelfUpdateManager"

    const-string v2, "listener == null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 699
    :cond_53
    instance-of v2, v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    if-eqz v2, :cond_39

    .line 700
    check-cast v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;->onDownloadAppStateChanged(IILjava/lang/String;)V

    goto :goto_39

    .line 704
    :cond_5d
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public cancelYYBDownload()V
    .registers 3

    .prologue
    .line 216
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "cancelYYBDownload enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/a;

    invoke-direct {v1, p0}, Lcom/tencent/tmselfupdatesdk/a;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "cancelYYBDownload exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public checkSelfUpdate()V
    .registers 4

    .prologue
    .line 441
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    .line 446
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->checkUpdate(Ljava/util/List;)V

    .line 447
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public checkYYBInstallState()I
    .registers 5

    .prologue
    .line 194
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->checkQQDownloaderInstalled()I

    move-result v0

    .line 198
    if-nez v0, :cond_36

    .line 200
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "yybExist: UpdateLogConst.YYB_INSTALLED"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_16
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return v0

    .line 203
    :cond_36
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "yybExist: UpdateLogConst.YYB_NOT_INSTALL"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public destroy()V
    .registers 5

    .prologue
    .line 296
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->unregisterListener()V

    .line 299
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->closeAllService(Landroid/content/Context;)V

    .line 301
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    if-eqz v0, :cond_38

    .line 302
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKYYBStateListener:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->unregisterListener(Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;)Z

    move-result v0

    .line 303
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenSDKInstance.unregisterListener result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->destroyQQDownloaderOpenSDK()V

    .line 306
    :cond_38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 308
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->destory()V

    .line 312
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->b(Landroid/content/Context;)V

    .line 313
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mPackageInstallListener:Lcom/tencent/tmselfupdatesdk/internal/b;

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->b(Lcom/tencent/tmselfupdatesdk/internal/b;)V

    .line 314
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method protected downloadAndMergeApk(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 457
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 460
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "updateInfo != null && !TextUtils.isEmpty(updateInfo.getUpdateDownloadUrl())"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v0

    if-nez v0, :cond_69

    .line 463
    iput v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    .line 473
    :cond_24
    :goto_24
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    .line 474
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfo.getUpdateMethod(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInfo.getUpdateDownloadUrl(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->genNewPkgProcess()V

    .line 481
    :goto_61
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void

    .line 465
    :cond_69
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v0

    if-ne v0, v2, :cond_72

    .line 467
    iput v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    goto :goto_24

    .line 469
    :cond_72
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v0

    if-ne v0, v3, :cond_24

    .line 471
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    goto :goto_24

    .line 479
    :cond_7c
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "updateInfo == null || TextUtils.isEmpty(updateInfo.getUpdateDownloadUrl())"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;Landroid/os/Bundle;)V
    .registers 9

    .prologue
    .line 153
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applicationContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; yybchannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; ITMSelfUpdateListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; YYBDownloadListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->initManager(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;Landroid/os/Bundle;)V

    .line 156
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected initManager(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;Landroid/os/Bundle;)V
    .registers 10

    .prologue
    .line 330
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_1a

    .line 332
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exception: you must input an application context!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must input an application context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1a
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    .line 337
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    .line 338
    iput-object p2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mYybChannelId:Ljava/lang/String;

    .line 339
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applicationContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; yybchannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; hostPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 343
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_96

    .line 344
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "YYB_APPKEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "YYB_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    .line 354
    :goto_7c
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHostChannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.myapp.com/downcenter/a/50801?g_f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mYybChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    .line 361
    invoke-static {}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->getInstance()Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    .line 362
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->initTMAssistantCallYYBApi(Landroid/content/Context;)V

    .line 363
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "initQQDownloaderOpenSDK"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKYYBStateListener:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->registerListener(Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;)Z

    .line 365
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    if-eqz p5, :cond_173

    .line 369
    const-string v0, "scene"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 371
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    .line 373
    :cond_df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID.YYB.UPDATE."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    .line 377
    :goto_f8
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.mScene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->init(Landroid/content/Context;)V

    .line 381
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "ApkUpdateManager.init"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mApkUpdateListener:Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->addListener(Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;)V

    .line 384
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "ApkUpdateManager.addListener"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    if-eqz p3, :cond_150

    .line 391
    invoke-direct {p0, p3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->registerListener(Ljava/lang/Object;)Z

    move-result v0

    .line 392
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_150
    if-eqz p4, :cond_155

    .line 395
    invoke-direct {p0, p4}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->registerListener(Ljava/lang/Object;)Z

    .line 397
    :cond_155
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mPackageInstallListener:Lcom/tencent/tmselfupdatesdk/internal/b;

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a(Lcom/tencent/tmselfupdatesdk/internal/b;)V

    .line 398
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a(Landroid/content/Context;)V

    .line 399
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 352
    :cond_16f
    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    goto/16 :goto_7c

    .line 375
    :cond_173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID.YYB.UPDATE."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    goto/16 :goto_f8
.end method

.method public onActivityResume()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 240
    const/4 v3, 0x1

    .line 241
    const/4 v4, 0x1

    .line 243
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "onActivityResume enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1d

    .line 245
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exception: you must input an application context!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1d
    new-instance v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    invoke-direct {v2}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;-><init>()V

    .line 250
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yyb isFromStartUpdate :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    if-eqz v0, :cond_c6

    .line 256
    :try_start_40
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->checkQQDownloaderInstalled()I

    move-result v5

    .line 257
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yyb startSaveUpdateToWhere  flag: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-nez v5, :cond_bd

    .line 260
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "yyb startSaveUpdateToWhere!!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, ""

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    .line 274
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFromStartUpdate param: (param.SNGAppId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; param.taskPackageName = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; param.channelId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; param.via = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSaveUpdateToWhere(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZI)V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_bd} :catch_c7
    .catchall {:try_start_40 .. :try_end_bd} :catchall_d3

    .line 285
    :cond_bd
    iput-boolean v7, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 286
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "onActivityResume exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_c6
    return-void

    .line 278
    :catch_c7
    move-exception v0

    .line 280
    :try_start_c8
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    throw v0
    :try_end_d3
    .catchall {:try_start_c8 .. :try_end_d3} :catchall_d3

    .line 285
    :catchall_d3
    move-exception v0

    iput-boolean v7, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 286
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "onActivityResume exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    throw v0
.end method

.method protected startSaveUpdate(ZZ)I
    .registers 9

    .prologue
    .line 496
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1a

    .line 498
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exception: you must input an application context!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_1a
    new-instance v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    invoke-direct {v2}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;-><init>()V

    .line 503
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoDownload = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; isAutoInstall = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "1234"

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    .line 511
    invoke-virtual {p0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->checkYYBInstallState()I

    move-result v5

    .line 512
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkYYBInstalled flag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-nez v5, :cond_dc

    .line 517
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    .line 523
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: (param.SNGAppId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.taskPackageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.channelId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.via = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSaveUpdateToWhere(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZI)V

    .line 526
    const/4 v0, 0x0

    .line 527
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :goto_db
    return v0

    .line 534
    :cond_dc
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "yyb  uninstall!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: (param.SNGAppId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.taskPackageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.channelId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.via = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSaveUpdateToWhere(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZI)V

    .line 543
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/b;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tmselfupdatesdk/b;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->f:I

    goto/16 :goto_db
.end method

.method protected startSaveUpdateToWhere(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZI)V
    .registers 9

    .prologue
    .line 605
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    if-eqz p2, :cond_4d

    .line 607
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param: (param.SNGAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; param.taskPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; param.channelId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; param.via = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_4d
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isAutoInstall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; checkQQDownloaderInstalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    if-nez p5, :cond_88

    .line 615
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->startToAppDetail(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZ)V

    .line 622
    :goto_80
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void

    .line 619
    :cond_88
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0, p2, p3, p4}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->addDownloadTaskFromAppDetail(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZ)J

    goto :goto_80
.end method

.method public startSelfUpdate(Z)I
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 168
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz p1, :cond_2a

    .line 171
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    .line 172
    invoke-virtual {p0, v2, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSaveUpdate(ZZ)I

    move-result v0

    .line 173
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_29
    return v0

    .line 176
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    sput-boolean v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    .line 179
    iput-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    .line 180
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUpdate: hostPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->checkUpdate(Ljava/util/List;)V

    .line 184
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    goto :goto_29
.end method

.method protected writeChannelIdAfterUpdate(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 1276
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter overwriteChannelid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-byte v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_86

    .line 1278
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeChannelIdPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :try_start_37
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1282
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_86

    .line 1284
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1286
    invoke-static {v0, p1}, Lcom/tencent/tmselfupdatesdk/internal/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1287
    const-string v2, "TMSelfUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeOldCommentToNewFile; result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; packageName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; oldApk="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; newGenApkPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_86} :catch_8e

    .line 1294
    :cond_86
    :goto_86
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    return-void

    .line 1289
    :catch_8e
    move-exception v0

    .line 1290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1291
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_86
.end method
