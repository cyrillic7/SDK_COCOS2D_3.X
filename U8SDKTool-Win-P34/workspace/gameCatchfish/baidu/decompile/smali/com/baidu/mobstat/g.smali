.class Lcom/baidu/mobstat/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static h:Landroid/os/Handler;

.field private static i:Lcom/baidu/mobstat/g;


# instance fields
.field private b:Z

.field private c:Lcom/baidu/mobstat/SendStrategyEnum;

.field private d:I

.field private e:Ljava/util/Timer;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogSenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mobstat/g;->a:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mobstat/g;

    invoke-direct {v0}, Lcom/baidu/mobstat/g;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/g;->i:Lcom/baidu/mobstat/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/mobstat/g;->b:Z

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v0, p0, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/SendStrategyEnum;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/g;->d:I

    iput v1, p0, Lcom/baidu/mobstat/g;->f:I

    iput-boolean v1, p0, Lcom/baidu/mobstat/g;->g:Z

    sget-object v0, Lcom/baidu/mobstat/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mobstat/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mobstat/g;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/g;I)I
    .registers 2

    iput p1, p0, Lcom/baidu/mobstat/g;->d:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/g;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object p1
.end method

.method public static a()Lcom/baidu/mobstat/g;
    .registers 1

    sget-object v0, Lcom/baidu/mobstat/g;->i:Lcom/baidu/mobstat/g;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/g;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/baidu/mobstat/g;->e:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mobstat/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/g;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mobstat/g;->g:Z

    return p1
.end method

.method static synthetic b()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/baidu/mobstat/g;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/g;)Ljava/util/Timer;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/g;->e:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mobstat/g;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/mobstat/g;)Lcom/baidu/mobstat/SendStrategyEnum;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/SendStrategyEnum;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobstat/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/g;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/baidu/mobstat/g;)I
    .registers 2

    iget v0, p0, Lcom/baidu/mobstat/g;->f:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    const-string v0, "__Baidu_Stat_SDK_SendRem"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    if-ltz p1, :cond_8

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_8

    iput p1, p0, Lcom/baidu/mobstat/g;->f:I

    :cond_8
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/mobstat/SendStrategyEnum;IZ)V
    .registers 9

    const/16 v3, 0x18

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    if-lez p3, :cond_71

    if-gt p3, v3, :cond_71

    iput p3, p0, Lcom/baidu/mobstat/g;->d:I

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    iput-object v1, p0, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "sendLogtype"

    iget-object v2, p0, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "timeinterval"

    iget v2, p0, Lcom/baidu/mobstat/g;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2e
    :goto_2e
    iput-boolean p4, p0, Lcom/baidu/mobstat/g;->b:Z

    const-string v1, "onlywifi"

    iget-boolean v2, p0, Lcom/baidu/mobstat/g;->b:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Mobads SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sstype is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " And time_interval is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/mobstat/g;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " And m_only_wifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/mobstat/g;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_71
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setSendLogStrategy"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "time_interval is invalid, new strategy does not work"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/a/b;->b([Ljava/lang/Object;)I

    goto :goto_2e

    :cond_82
    iput-object p2, p0, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "sendLogtype"

    iget-object v2, p0, Lcom/baidu/mobstat/g;->c:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p2, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "timeinterval"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2e
.end method

.method public a(ZLandroid/content/Context;)V
    .registers 7

    iput-boolean p1, p0, Lcom/baidu/mobstat/g;->g:Z

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exceptionanalysisflag"

    iget-boolean v2, p0, Lcom/baidu/mobstat/g;->g:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Mobads SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_ANALYSIS_EXCEPTION is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/mobstat/g;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 8

    const/16 v4, 0x18

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :try_start_c
    const-string v1, "BaiduMobAd_EXCEPTION_LOG"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-static {}, Lcom/baidu/mobstat/e;->a()Lcom/baidu/mobstat/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/e;->a(Landroid/content/Context;)V

    const-string v1, "exceptionanalysisflag"

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2f} :catch_ac

    :cond_2f
    :goto_2f
    :try_start_2f
    const-string v1, "BaiduMobAd_SEND_STRATEGY"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "sendLogtype"

    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_56} :catch_d3

    :cond_56
    :goto_56
    :try_start_56
    const-string v1, "BaiduMobAd_TIME_INTERVAL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v0

    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_7d

    if-lez v1, :cond_7d

    if-gt v1, v4, :cond_7d

    const-string v0, "timeinterval"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_7d} :catch_f8

    :cond_7d
    :goto_7d
    :try_start_7d
    const-string v0, "BaiduMobAd_ONLY_WIFI"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    const-string v0, "onlywifi"

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_99} :catch_10c

    :cond_99
    :goto_99
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_9d
    :try_start_9d
    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "exceptionanalysisflag"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ab} :catch_ac

    goto :goto_2f

    :catch_ac
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    :cond_b2
    :try_start_b2
    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "sendLogtype"

    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "timeinterval"

    const/16 v3, 0x18

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d2} :catch_d3

    goto :goto_56

    :catch_d3
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_56

    :cond_dd
    :try_start_dd
    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    const-string v1, "sendLogtype"

    sget-object v3, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v3}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_f6} :catch_d3

    goto/16 :goto_56

    :catch_f8
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto :goto_7d

    :cond_fd
    :try_start_fd
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string v0, "onlywifi"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_10b} :catch_10c

    goto :goto_99

    :catch_10c
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/Throwable;)I

    goto :goto_99
.end method

.method public c(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/baidu/mobstat/g;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/h;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/h;-><init>(Lcom/baidu/mobstat/g;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/g;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastsendtime"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 8

    const v5, 0x36ee80

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/g;->e:Ljava/util/Timer;

    iget-object v0, p0, Lcom/baidu/mobstat/g;->e:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/mobstat/j;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobstat/j;-><init>(Lcom/baidu/mobstat/g;Landroid/content/Context;)V

    iget v2, p0, Lcom/baidu/mobstat/g;->d:I

    mul-int/2addr v2, v5

    int-to-long v2, v2

    iget v4, p0, Lcom/baidu/mobstat/g;->d:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
