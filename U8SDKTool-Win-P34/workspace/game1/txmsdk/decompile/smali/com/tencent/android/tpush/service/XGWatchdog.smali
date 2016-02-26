.class public Lcom/tencent/android/tpush/service/XGWatchdog;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->SERVICESCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static CURRENT_WD_VERSION:Ljava/lang/Integer; = null

.field private static final LIB_FULL_NAME:Ljava/lang/String; = "libtpnsWatchdog.so"

.field private static final LIB_NAME:Ljava/lang/String; = "tpnsWatchdog"

.field public static final TAG:Ljava/lang/String; = "TpnsWatchdog"

.field private static WatchdogPath:Ljava/lang/String; = null

.field private static defaultWatchdogPort:I = 0x0

.field private static handler:Landroid/os/Handler; = null

.field private static volatile instance:Lcom/tencent/android/tpush/service/XGWatchdog; = null

.field private static random:Ljava/util/Random; = null

.field private static thread:Landroid/os/HandlerThread; = null

.field private static final watchdogPortName:Ljava/lang/String; = "com.tencent.tpnsWatchdogPort"


# instance fields
.field private context:Landroid/content/Context;

.field volatile isStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    .line 59
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->CURRENT_WD_VERSION:Ljava/lang/Integer;

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->random:Ljava/util/Random;

    .line 63
    sput-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    .line 65
    sput-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    .line 71
    sput-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    .line 114
    const v0, 0xd8fe

    sput v0, Lcom/tencent/android/tpush/service/XGWatchdog;->defaultWatchdogPort:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->isStarted:Z

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 76
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/l;->b(Landroid/content/Context;)V

    .line 78
    :cond_1a
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/XGWatchdog;->directSendContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/android/tpush/service/XGWatchdog;)V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->directStartWatchdog()V

    return-void
.end method

.method private directSendContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 156
    .line 166
    :try_start_1
    new-instance v4, Ljava/net/Socket;

    const-string v0, "127.0.0.1"

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getWatchdogPort()I

    move-result v2

    invoke-direct {v4, v0, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_ae
    .catchall {:try_start_1 .. :try_end_c} :catchall_101

    .line 167
    const/16 v0, 0x7d0

    :try_start_e
    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 168
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_148
    .catchall {:try_start_e .. :try_end_1f} :catchall_13f

    .line 170
    :try_start_1f
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_150
    .catchall {:try_start_1f .. :try_end_2d} :catchall_143

    .line 172
    :try_start_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xgapplist:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getLocalXGApps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz p1, :cond_160

    .line 176
    :goto_46
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 178
    const-string v0, "TpnsWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client  write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_67} :catch_157
    .catchall {:try_start_2d .. :try_end_67} :catchall_146

    move-result-object v0

    .line 180
    :try_start_68
    const-string v1, "TpnsWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_80} :catch_15d
    .catchall {:try_start_68 .. :try_end_80} :catchall_146

    .line 187
    if-eqz v4, :cond_85

    .line 189
    :try_start_82
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_90

    .line 194
    :cond_85
    :goto_85
    if-eqz v3, :cond_8a

    .line 196
    :try_start_87
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_133

    .line 201
    :cond_8a
    :goto_8a
    if-eqz v2, :cond_8f

    .line 203
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_136

    .line 209
    :cond_8f
    :goto_8f
    return-object v0

    .line 190
    :catch_90
    move-exception v1

    .line 191
    const-string v4, "TpnsWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close socket failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 182
    :catch_ae
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 183
    :goto_b5
    :try_start_b5
    const-string v5, "TpnsWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "just ignore it, connect to watchdog failed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_b5 .. :try_end_d1} :catchall_146

    .line 187
    if-eqz v4, :cond_d6

    .line 189
    :try_start_d3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_e3

    .line 194
    :cond_d6
    :goto_d6
    if-eqz v3, :cond_db

    .line 196
    :try_start_d8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_139

    .line 201
    :cond_db
    :goto_db
    if-eqz v2, :cond_8f

    .line 203
    :try_start_dd
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_8f

    .line 204
    :catch_e1
    move-exception v1

    goto :goto_8f

    .line 190
    :catch_e3
    move-exception v1

    .line 191
    const-string v4, "TpnsWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close socket failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d6

    .line 187
    :catchall_101
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_105
    if-eqz v4, :cond_10a

    .line 189
    :try_start_107
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10a} :catch_115

    .line 194
    :cond_10a
    :goto_10a
    if-eqz v3, :cond_10f

    .line 196
    :try_start_10c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_13b

    .line 201
    :cond_10f
    :goto_10f
    if-eqz v2, :cond_114

    .line 203
    :try_start_111
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_13d

    .line 206
    :cond_114
    :goto_114
    throw v0

    .line 190
    :catch_115
    move-exception v1

    .line 191
    const-string v4, "TpnsWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close socket failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10a

    .line 197
    :catch_133
    move-exception v1

    goto/16 :goto_8a

    .line 204
    :catch_136
    move-exception v1

    goto/16 :goto_8f

    .line 197
    :catch_139
    move-exception v1

    goto :goto_db

    :catch_13b
    move-exception v1

    goto :goto_10f

    .line 204
    :catch_13d
    move-exception v1

    goto :goto_114

    .line 187
    :catchall_13f
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_105

    :catchall_143
    move-exception v0

    move-object v2, v1

    goto :goto_105

    :catchall_146
    move-exception v0

    goto :goto_105

    .line 182
    :catch_148
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_b5

    :catch_150
    move-exception v0

    move-object v2, v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_b5

    :catch_157
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_b5

    :catch_15d
    move-exception v1

    goto/16 :goto_b5

    :cond_160
    move-object p1, v0

    goto/16 :goto_46
.end method

.method private directStartWatchdog()V
    .registers 9

    .prologue
    .line 346
    sget v0, Lcom/tencent/android/tpush/service/a/a;->y:I

    if-nez v0, :cond_c

    .line 347
    const-string v0, "TpnsWatchdog"

    const-string v1, "Watchdog is disable."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_b
    return-void

    .line 350
    :cond_c
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->loadWatchdog(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 352
    const-string v0, "TpnsWatchdog"

    const-string v1, "Watchdog lib is not exist."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 355
    :cond_20
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushManager;->isEnableService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 356
    const-string v0, "TpnsWatchdog"

    const-string v1, "xg is disable."

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 360
    :cond_30
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getWatchdogPort()I

    move-result v1

    .line 362
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 364
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/b;

    .line 368
    iget-wide v6, v0, Lcom/tencent/android/tpush/data/b;->a:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    iget-object v6, v0, Lcom/tencent/android/tpush/data/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    iget-object v0, v0, Lcom/tencent/android/tpush/data/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4d

    .line 372
    :cond_7b
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    sget-object v3, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 374
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getLocalXGApps()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 375
    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 376
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/tencent/android/tpush/service/XGWatchdog;->domainToIp()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 377
    const/4 v0, 0x4

    new-instance v1, Lcom/tencent/android/tpush/b/a;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/tencent/android/tpush/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/tencent/android/tpush/b/a;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 378
    const/4 v1, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->isEnableDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12a

    const-string v0, "1"

    :goto_bc
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 379
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 380
    const-string v0, "TpnsWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Watchdog, params:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :try_start_fa
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 385
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 388
    :goto_114
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12d

    .line 389
    const-string v4, "TpnsWatchdog"

    invoke-static {v4, v3}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_11f} :catch_120

    goto :goto_114

    .line 394
    :catch_120
    move-exception v0

    .line 395
    const-string v1, "TpnsWatchdog"

    const-string v2, "directStartWatchdog error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 378
    :cond_12a
    const-string v0, "0"

    goto :goto_bc

    .line 392
    :cond_12d
    :try_start_12d
    const-string v2, "TpnsWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proc.exitValue()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",wait="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_15d} :catch_120

    goto/16 :goto_b
.end method

.method private domainToIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    :try_start_0
    const-string v0, "pingma.qq.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 342
    :goto_a
    return-object v0

    .line 339
    :catch_b
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    const-string v0, "14.18.245.161"

    goto :goto_a
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;
    .registers 3

    .prologue
    .line 81
    invoke-static {}, Lcom/tencent/android/tpush/service/XGWatchdog;->initHandler()V

    .line 82
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    if-nez v0, :cond_16

    .line 83
    const-class v1, Lcom/tencent/android/tpush/service/XGWatchdog;

    monitor-enter v1

    .line 84
    :try_start_a
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    if-nez v0, :cond_15

    .line 85
    new-instance v0, Lcom/tencent/android/tpush/service/XGWatchdog;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/XGWatchdog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    .line 87
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    .line 89
    :cond_16
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->instance:Lcom/tencent/android/tpush/service/XGWatchdog;

    return-object v0

    .line 87
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public static getRandomInt(I)I
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->random:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static getRandomPort()I
    .registers 2

    .prologue
    .line 111
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getRandomInt(I)I

    move-result v0

    const v1, 0xd6d8

    add-int/2addr v0, v1

    return v0
.end method

.method private static initHandler()V
    .registers 4

    .prologue
    .line 97
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_57

    .line 99
    :cond_1e
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "XGWatchdog.thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    .line 100
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    .line 102
    const-string v0, "TpnsWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> Create new working thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/service/XGWatchdog;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_57
    return-void
.end method

.method private static loadWatchdog(Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 428
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 429
    const/4 v0, 0x1

    .line 456
    :cond_9
    :goto_9
    return v0

    .line 432
    :cond_a
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;

    .line 434
    :try_start_e
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "libtpnsWatchdog.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 440
    if-eqz v0, :cond_9

    .line 441
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/android/tpush/service/XGWatchdog;->WatchdogPath:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5e} :catch_5f

    goto :goto_9

    .line 452
    :catch_5f
    move-exception v0

    .line 453
    const-string v1, "TpnsWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jniStartWatchdog loadWatchdog error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getLocalXGApps()Ljava/lang/String;
    .registers 9

    .prologue
    .line 278
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    .line 279
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/l;->b(Landroid/content/Context;)V

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    if-eqz v0, :cond_57

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 289
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 290
    invoke-static {v3}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 291
    invoke-static {v3}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/b;

    move-result-object v4

    .line 293
    if-eqz v4, :cond_1e

    .line 294
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/service/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/android/tpush/service/a/c;

    move-result-object v5

    .line 296
    const/high16 v0, 0x3f800000

    .line 297
    if-eqz v5, :cond_46

    .line 298
    iget v0, v5, Lcom/tencent/android/tpush/service/a/c;->a:F

    .line 300
    :cond_46
    new-instance v5, Lcom/tencent/android/tpush/service/z;

    invoke-direct {v5}, Lcom/tencent/android/tpush/service/z;-><init>()V

    .line 301
    iput-object v3, v5, Lcom/tencent/android/tpush/service/z;->a:Ljava/lang/String;

    .line 302
    iget-wide v6, v4, Lcom/tencent/android/tpush/data/b;->a:J

    iput-wide v6, v5, Lcom/tencent/android/tpush/service/z;->c:J

    .line 303
    iput v0, v5, Lcom/tencent/android/tpush/service/z;->b:F

    .line 304
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 311
    :cond_57
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 313
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessId(Landroid/content/Context;)J

    move-result-wide v0

    .line 314
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_6c

    .line 315
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getQQAccessId(Landroid/content/Context;)J

    move-result-wide v0

    .line 318
    :cond_6c
    new-instance v3, Lcom/tencent/android/tpush/service/z;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/z;-><init>()V

    .line 319
    iget-object v4, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/android/tpush/service/z;->a:Ljava/lang/String;

    .line 320
    iput-wide v0, v3, Lcom/tencent/android/tpush/service/z;->c:J

    .line 321
    const v0, 0x401851ec

    iput v0, v3, Lcom/tencent/android/tpush/service/z;->b:F

    .line 322
    const/4 v0, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 323
    const-string v0, "TpnsWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/z;

    .line 327
    iget-object v3, v0, Lcom/tencent/android/tpush/service/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/android/tpush/service/z;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a7

    .line 331
    :cond_cb
    const-string v0, "TpnsWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local apps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWatchdogPort()I
    .registers 6

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.tencent.tpnsWatchdogPort"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 144
    :cond_c
    :goto_c
    return v0

    .line 121
    :catch_d
    move-exception v0

    .line 122
    const-string v1, "TpnsWatchdog"

    const-string v2, "try create a port."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    const/4 v0, 0x0

    move v3, v0

    :goto_17
    const/16 v0, 0xa

    if-ge v3, v0, :cond_52

    .line 124
    invoke-static {}, Lcom/tencent/android/tpush/service/XGWatchdog;->getRandomPort()I

    move-result v0

    .line 125
    const/4 v2, 0x0

    .line 127
    :try_start_20
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_38
    .catchall {:try_start_20 .. :try_end_25} :catchall_4a

    .line 128
    :try_start_25
    iget-object v2, p0, Lcom/tencent/android/tpush/service/XGWatchdog;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "com.tencent.tpnsWatchdogPort"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_5b
    .catchall {:try_start_25 .. :try_end_30} :catchall_59

    .line 135
    if-eqz v1, :cond_c

    .line 136
    :try_start_32
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_c

    .line 138
    :catch_36
    move-exception v1

    goto :goto_c

    .line 131
    :catch_38
    move-exception v0

    move-object v1, v2

    .line 132
    :goto_3a
    :try_start_3a
    const-string v2, "TpnsWatchdog"

    const-string v4, "create ServerSocket error"

    invoke-static {v2, v4, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_59

    .line 135
    if-eqz v1, :cond_46

    .line 136
    :try_start_43
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_55

    .line 123
    :cond_46
    :goto_46
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_17

    .line 134
    :catchall_4a
    move-exception v0

    move-object v1, v2

    .line 135
    :goto_4c
    if-eqz v1, :cond_51

    .line 136
    :try_start_4e
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_57

    .line 140
    :cond_51
    :goto_51
    throw v0

    .line 144
    :cond_52
    sget v0, Lcom/tencent/android/tpush/service/XGWatchdog;->defaultWatchdogPort:I

    goto :goto_c

    .line 138
    :catch_55
    move-exception v0

    goto :goto_46

    :catch_57
    move-exception v1

    goto :goto_51

    .line 134
    :catchall_59
    move-exception v0

    goto :goto_4c

    .line 131
    :catch_5b
    move-exception v0

    goto :goto_3a
.end method

.method public sendAllLocalXGAppList()V
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public sendDebugMode(Z)V
    .registers 4

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1b

    const-string v0, "1"

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;)V

    .line 267
    return-void

    .line 265
    :cond_1b
    const-string v0, "0"

    goto :goto_f
.end method

.method public sendHeartbeat2Watchdog(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;Lcom/tencent/android/tpush/service/y;)V

    .line 153
    return-void
.end method

.method public sendHeartbeat2Watchdog(Ljava/lang/String;Lcom/tencent/android/tpush/service/y;)V
    .registers 5

    .prologue
    .line 217
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/w;-><init>(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;Lcom/tencent/android/tpush/service/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public sendXGApp(Ljava/lang/String;J)V
    .registers 6

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public startWatchdog()V
    .registers 3

    .prologue
    .line 400
    sget-object v0, Lcom/tencent/android/tpush/service/XGWatchdog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/x;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/x;-><init>(Lcom/tencent/android/tpush/service/XGWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method
