.class public Lcom/tencent/tmassistantbase/util/TMLog;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final INTERNAL:J = 0xea60L

.field protected static final INTERVAL_RETRY_INIT:[I

.field protected static final LOG_CONFIG_FILE_PATH:Ljava/lang/String; = "/tencent/TMAssistantSDK/Logs/logConfig.properties"

.field protected static final LOG_DIR_PATH:Ljava/lang/String; = "/tencent/TMAssistantSDK/Logs/"

.field protected static final LOG_FILE_LENTH:J = 0x7d000L

.field protected static final LOG_FILE_NAME_SUFFIX:Ljava/lang/String; = "_tmlog.txt"

.field public static final PROP_DIR_PATH:Ljava/lang/String; = "logDirPath"

.field public static final PROP_IS_APPEND_LOG_TIME:Ljava/lang/String; = "isAppendLogTime"

.field public static final PROP_IS_APPEND_METHOD_NAME:Ljava/lang/String; = "isAppendMethodName"

.field public static final PROP_IS_USE_WRITER_CACHE:Ljava/lang/String; = "isUseWriterCache"

.field public static final PROP_IS_WRITE_FILE:Ljava/lang/String; = "isWriteLogToFile"

.field public static final PROP_LOGCAT_LEVEL:Ljava/lang/String; = "logcatOutputLevel"

.field public static final PROP_LOG_FILE_LEVEL:Ljava/lang/String; = "logfileOutputLevel"

.field protected static final TAG:Ljava/lang/String; = "TMLog"

.field static a:Ljava/util/concurrent/LinkedBlockingQueue; = null

.field protected static acutualInitRunnable:Ljava/lang/Runnable; = null

.field static b:J = 0x0L

.field static final c:Ljava/util/concurrent/locks/ReentrantLock;

.field protected static context:Landroid/content/Context; = null

.field static d:Ljava/lang/Thread; = null

.field protected static isAppendLogTime:Z = false

.field protected static isAppendMethodName:Z = false

.field protected static final isDebug:Z = true

.field protected static isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected static isInited:Z

.field protected static isPreExceptionEnospc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected static isUseWriterCache:Z

.field protected static isWriteLogToFile:Z

.field protected static lastLogTime:J

.field protected static logDirPath:Ljava/lang/String;

.field protected static logTime:Ljava/lang/String;

.field protected static logcatOutputLevel:I

.field protected static logfileOutputLevel:I

.field protected static myProcessId:I

.field private static needGetField:Ljava/lang/Boolean;

.field protected static packageName:Ljava/lang/String;

.field protected static retryInitHandler:Landroid/os/Handler;

.field protected static retryInitTimes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static stringBuilderCharBuffer:Ljava/lang/ThreadLocal;

.field private static stringBuilderValueField:Ljava/lang/reflect/Field;

.field protected static timeFormatter:Ljava/text/SimpleDateFormat;

.field protected static writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    sput-boolean v3, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile:Z

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    .line 66
    const/4 v0, 0x2

    sput v0, Lcom/tencent/tmassistantbase/util/TMLog;->logcatOutputLevel:I

    .line 71
    const/4 v0, 0x4

    sput v0, Lcom/tencent/tmassistantbase/util/TMLog;->logfileOutputLevel:I

    .line 76
    sput-boolean v3, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache:Z

    .line 81
    sput-boolean v2, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName:Z

    .line 86
    sput-boolean v2, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime:Z

    .line 112
    sput-boolean v2, Lcom/tencent/tmassistantbase/util/TMLog;->isInited:Z

    .line 338
    sput-wide v4, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    .line 342
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 350
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;

    .line 354
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logTime:Ljava/lang/String;

    .line 355
    sput-wide v4, Lcom/tencent/tmassistantbase/util/TMLog;->lastLogTime:J

    .line 356
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->timeFormatter:Ljava/text/SimpleDateFormat;

    .line 358
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->isPreExceptionEnospc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 367
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_78

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->INTERVAL_RETRY_INIT:[I

    .line 368
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 369
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitHandler:Landroid/os/Handler;

    .line 373
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->needGetField:Ljava/lang/Boolean;

    .line 374
    new-instance v0, Lcom/tencent/tmassistantbase/util/TMLog$1;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/TMLog$1;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderCharBuffer:Ljava/lang/ThreadLocal;

    .line 448
    new-instance v0, Lcom/tencent/tmassistantbase/util/TMLog$2;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/TMLog$2;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    .line 580
    new-instance v0, Lcom/tencent/tmassistantbase/util/TMLog$3;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/TMLog$3;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->d:Ljava/lang/Thread;

    return-void

    .line 367
    :array_78
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x1d
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .registers 0

    .prologue
    .line 31
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->readLocalConfig()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/tencent/tmassistantbase/util/TMLog;->writeLogToFile(Ljava/lang/String;)V

    return-void
.end method

.method private static addLogItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    .prologue
    .line 513
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-nez v0, :cond_7

    .line 532
    :cond_6
    :goto_6
    return-void

    .line 516
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 517
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->obtainStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 519
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 520
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_26
    invoke-static {p0}, Lcom/tencent/tmassistantbase/util/TMLog;->getReportLevelString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/tencent/tmassistantbase/util/TMLog;->myProcessId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|tid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    if-eqz p3, :cond_77

    .line 526
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 528
    :cond_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->addLogToCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 529
    const-string v0, "TMLog"

    const-string v1, "addLogToCache failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private static addLogToCache(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 495
    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 496
    const/4 v0, 0x1

    .line 499
    :goto_6
    return v0

    .line 497
    :catch_7
    move-exception v0

    .line 499
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic b()V
    .registers 0

    .prologue
    .line 31
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->initLogFile()V

    return-void
.end method

.method public static closeALLLog()V
    .registers 1

    .prologue
    const/4 v0, 0x7

    .line 315
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogcatOutputLevel(I)V

    .line 316
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogfileOutputLevel(I)V

    .line 317
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 145
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 149
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 169
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 173
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method public static getLogDirPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 425
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tencent/TMAssistantSDK/Logs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    .line 429
    :cond_25
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogTime()Ljava/lang/String;
    .registers 6

    .prologue
    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 570
    sget-wide v2, Lcom/tencent/tmassistantbase/util/TMLog;->lastLogTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_1f

    .line 571
    sput-wide v0, Lcom/tencent/tmassistantbase/util/TMLog;->lastLogTime:J

    .line 572
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->timeFormatter:Ljava/text/SimpleDateFormat;

    sget-wide v2, Lcom/tencent/tmassistantbase/util/TMLog;->lastLogTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logTime:Ljava/lang/String;

    .line 574
    :cond_1f
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogcatOutputLevel()I
    .registers 1

    .prologue
    .line 256
    sget v0, Lcom/tencent/tmassistantbase/util/TMLog;->logcatOutputLevel:I

    return v0
.end method

.method public static getLogfileOutputLevel()I
    .registers 1

    .prologue
    .line 274
    sget v0, Lcom/tencent/tmassistantbase/util/TMLog;->logfileOutputLevel:I

    return v0
.end method

.method private static getReportLevelString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 540
    const-string v0, "D"

    .line 541
    packed-switch p0, :pswitch_data_16

    .line 560
    :goto_5
    return-object v0

    .line 543
    :pswitch_6
    const-string v0, "V"

    goto :goto_5

    .line 546
    :pswitch_9
    const-string v0, "D"

    goto :goto_5

    .line 549
    :pswitch_c
    const-string v0, "I"

    goto :goto_5

    .line 552
    :pswitch_f
    const-string v0, "W"

    goto :goto_5

    .line 555
    :pswitch_12
    const-string v0, "E"

    goto :goto_5

    .line 541
    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 153
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 157
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method private static declared-synchronized initLogFile()V
    .registers 8

    .prologue
    .line 614
    const-class v1, Lcom/tencent/tmassistantbase/util/TMLog;

    monitor-enter v1

    :try_start_3
    const-string v0, "TMLog"

    const-string v2, "start to init log file!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 619
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 621
    :cond_1c
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_tmlog.txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_161

    .line 624
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 625
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 626
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->writeVersionToFile()V

    .line 627
    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    if-eqz v3, :cond_b2

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 628
    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " create newLogFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_b2} :catch_15b
    .catchall {:try_start_3e .. :try_end_b2} :catchall_161

    .line 647
    :cond_b2
    :goto_b2
    :try_start_b2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v2, 0x2000

    invoke-direct {v0, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    .line 648
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->writeVersionToFile()V
    :try_end_c4
    .catchall {:try_start_b2 .. :try_end_c4} :catchall_161

    .line 649
    monitor-exit v1

    return-void

    .line 632
    :cond_c6
    :try_start_c6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7d000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f9

    .line 634
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 635
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 636
    const-string v0, "TMLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_f9
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->writeVersionToFile()V

    .line 639
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_b2

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 640
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|newLogFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is existed.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 641
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_159
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_159} :catch_15b
    .catchall {:try_start_c6 .. :try_end_159} :catchall_161

    goto/16 :goto_b2

    .line 644
    :catch_15b
    move-exception v0

    .line 645
    :try_start_15c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_161

    goto/16 :goto_b2

    .line 614
    :catchall_161
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initTMLog(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 119
    const-class v1, Lcom/tencent/tmassistantbase/util/TMLog;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isInited:Z

    if-nez v0, :cond_11

    .line 121
    sput-object p0, Lcom/tencent/tmassistantbase/util/TMLog;->context:Landroid/content/Context;

    .line 122
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isInited:Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    .line 126
    :cond_11
    monitor-exit v1

    return-void

    .line 119
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAppendLogTime()Z
    .registers 1

    .prologue
    .line 303
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime:Z

    return v0
.end method

.method public static isAppendMethodName()Z
    .registers 1

    .prologue
    .line 295
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName:Z

    return v0
.end method

.method public static isForDebug()Z
    .registers 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseWriterCache()Z
    .registers 1

    .prologue
    .line 287
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache:Z

    return v0
.end method

.method public static isWriteLogToFile()Z
    .registers 1

    .prologue
    .line 409
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile:Z

    return v0
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    const/4 v3, 0x4

    .line 186
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogfileOutputLevel()I

    move-result v0

    if-ge p0, v0, :cond_e

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogcatOutputLevel()I

    move-result v0

    if-ge p0, v0, :cond_e

    .line 248
    :cond_d
    :goto_d
    return-void

    .line 192
    :cond_e
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 200
    :cond_38
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogcatOutputLevel()I

    move-result v0

    if-lt p0, v0, :cond_71

    .line 203
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4c

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isForDebug()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 204
    if-nez p3, :cond_7b

    .line 205
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_4c
    :goto_4c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5a

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isForDebug()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 212
    if-nez p3, :cond_7f

    .line 213
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_5a
    :goto_5a
    if-ne p0, v3, :cond_61

    .line 219
    if-nez p3, :cond_83

    .line 220
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_61
    :goto_61
    const/4 v0, 0x5

    if-ne p0, v0, :cond_69

    .line 227
    if-nez p3, :cond_87

    .line 228
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_69
    :goto_69
    const/4 v0, 0x6

    if-ne p0, v0, :cond_71

    .line 234
    if-nez p3, :cond_8b

    .line 235
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_71
    :goto_71
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogfileOutputLevel()I

    move-result v0

    if-lt p0, v0, :cond_d

    .line 245
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tmassistantbase/util/TMLog;->addLogItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 207
    :cond_7b
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 215
    :cond_7f
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 222
    :cond_83
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 230
    :cond_87
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 237
    :cond_8b
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71
.end method

.method private static obtainStringBuilder()Ljava/lang/StringBuilder;
    .registers 3

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    :try_start_5
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->needGetField:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 389
    const-class v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderValueField:Ljava/lang/reflect/Field;

    .line 391
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderValueField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 392
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->needGetField:Ljava/lang/Boolean;

    .line 394
    :cond_28
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderValueField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_37

    .line 395
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderValueField:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderCharBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 400
    :cond_37
    :goto_37
    return-object v0

    .line 397
    :catch_38
    move-exception v1

    goto :goto_37
.end method

.method private static readLocalConfig()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 714
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 715
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 717
    :try_start_12
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tencent/TMAssistantSDK/Logs/logConfig.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_39

    .line 789
    :goto_38
    return-void

    .line 723
    :cond_39
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 726
    const-string v0, "isWriteLogToFile"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 728
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setWriteLogToFile(Z)V

    .line 734
    :goto_59
    const-string v0, "logfileOutputLevel"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_64} :catch_194

    move-result v0

    if-nez v0, :cond_72

    .line 737
    :try_start_67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogfileOutputLevel(I)V
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_72} :catch_1a0
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_72} :catch_194

    .line 744
    :cond_72
    :goto_72
    :try_start_72
    const-string v0, "logcatOutputLevel"

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7d} :catch_194

    move-result v0

    if-nez v0, :cond_8b

    .line 747
    :try_start_80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogcatOutputLevel(I)V
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_8b} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8b} :catch_194

    .line 754
    :cond_8b
    :goto_8b
    :try_start_8b
    const-string v0, "logDirPath"

    const-string v5, ""

    invoke-virtual {v1, v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogDirPath(Ljava/lang/String;)V

    .line 758
    const-string v5, "isUseWriterCache"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 759
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ac

    .line 760
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/tencent/tmassistantbase/util/TMLog;->setUseWriterCache(Z)V

    .line 766
    :goto_ae
    const-string v6, "isAppendLogTime"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v6, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 768
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/tmassistantbase/util/TMLog;->setAppendLogTime(Z)V

    .line 773
    :goto_c6
    const-string v1, "TMLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Properties Local File : isWriteLogToFile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", fileLevel = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", logcatLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dirPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isUseCache = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isAppendMethodName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isAppendLogTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v0, "TMLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log Configs : isWriteLogToFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogfileOutputLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", logcatLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogcatOutputLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dirPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUseCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAppendMethodName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAppendLogTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_192} :catch_194

    goto/16 :goto_38

    .line 781
    :catch_194
    move-exception v0

    .line 782
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_38

    .line 730
    :cond_19a
    const/4 v0, 0x0

    :try_start_19b
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setWriteLogToFile(Z)V

    goto/16 :goto_59

    .line 738
    :catch_1a0
    move-exception v0

    .line 739
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_72

    .line 748
    :catch_1a6
    move-exception v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_8b

    .line 762
    :cond_1ac
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/tencent/tmassistantbase/util/TMLog;->setUseWriterCache(Z)V

    goto/16 :goto_ae

    .line 770
    :cond_1b2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/tmassistantbase/util/TMLog;->setAppendLogTime(Z)V
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1b6} :catch_194

    goto/16 :goto_c6

    .line 786
    :cond_1b8
    invoke-static {v2}, Lcom/tencent/tmassistantbase/util/TMLog;->setWriteLogToFile(Z)V

    goto/16 :goto_38
.end method

.method public static setAppendLogTime(Z)V
    .registers 1

    .prologue
    .line 307
    sput-boolean p0, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime:Z

    .line 308
    return-void
.end method

.method public static setAppendMethodName(Z)V
    .registers 1

    .prologue
    .line 299
    sput-boolean p0, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName:Z

    .line 300
    return-void
.end method

.method public static setLogDirPath(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 437
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 439
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 440
    sput-object p0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    .line 443
    :cond_18
    return-void
.end method

.method public static setLogcatOutputLevel(I)V
    .registers 1

    .prologue
    .line 265
    sput p0, Lcom/tencent/tmassistantbase/util/TMLog;->logcatOutputLevel:I

    .line 266
    return-void
.end method

.method public static setLogfileOutputLevel(I)V
    .registers 1

    .prologue
    .line 283
    sput p0, Lcom/tencent/tmassistantbase/util/TMLog;->logfileOutputLevel:I

    .line 284
    return-void
.end method

.method public static setUseWriterCache(Z)V
    .registers 1

    .prologue
    .line 291
    sput-boolean p0, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache:Z

    .line 292
    return-void
.end method

.method public static setWriteLogToFile(Z)V
    .registers 1

    .prologue
    .line 417
    sput-boolean p0, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile:Z

    .line 418
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 137
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 141
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 161
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 165
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method private static writeLogToFile(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 659
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-nez v0, :cond_7

    .line 695
    :goto_6
    return-void

    .line 663
    :cond_7
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    if-nez v0, :cond_3e

    .line 664
    const-string v0, "TMLog"

    const-string v1, "can not write log."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 666
    sget-wide v2, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    .line 667
    sput-wide v0, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    .line 694
    :cond_20
    :goto_20
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->isPreExceptionEnospc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_6

    .line 668
    :cond_28
    sget-wide v2, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_20

    .line 670
    :try_start_33
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->initLogFile()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_39

    .line 674
    :goto_36
    sput-wide v0, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    goto :goto_20

    .line 671
    :catch_39
    move-exception v2

    .line 672
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .line 678
    :cond_3e
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 680
    :try_start_46
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 682
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache()Z

    move-result v0

    if-nez v0, :cond_56

    .line 683
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_5c

    .line 686
    :cond_56
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_20

    :catchall_5c
    move-exception v0

    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 689
    :cond_63
    invoke-static {p0}, Lcom/tencent/tmassistantbase/util/TMLog;->addLogToCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 690
    const-string v0, "TMLog"

    const-string v1, "addLogToCache failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private static writeVersionToFile()V
    .registers 2

    .prologue
    .line 704
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 705
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    const-string v1, "SDK_VERSION = 1.0|BUILD_NO = {BuildNo}|RELEASE_DATE: {ReleaseDate}\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 706
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 708
    :cond_16
    return-void
.end method
