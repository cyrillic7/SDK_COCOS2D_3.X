.class public Lcom/tencent/android/tpush/horse/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:J

.field static b:J

.field private static i:J

.field private static j:J

.field private static l:I


# instance fields
.field private final c:Ljava/lang/Object;

.field private volatile d:I

.field private volatile e:Z

.field private f:J

.field private g:Lcom/tencent/android/tpush/horse/l;

.field private h:Lcom/tencent/android/tpush/horse/m;

.field private k:Ljava/util/Timer;

.field private m:Landroid/os/Handler;

.field private n:Lcom/tencent/android/tpush/horse/b;

.field private o:Lcom/tencent/android/tpush/horse/b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/tencent/android/tpush/horse/g;->a:J

    .line 39
    sput-wide v2, Lcom/tencent/android/tpush/horse/g;->b:J

    .line 40
    sput-wide v2, Lcom/tencent/android/tpush/horse/g;->i:J

    .line 41
    sput-wide v2, Lcom/tencent/android/tpush/horse/g;->j:J

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/g;->c:Ljava/lang/Object;

    .line 28
    iput v1, p0, Lcom/tencent/android/tpush/horse/g;->d:I

    .line 32
    iput-boolean v1, p0, Lcom/tencent/android/tpush/horse/g;->e:Z

    .line 42
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/g;->k:Ljava/util/Timer;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/g;->m:Landroid/os/Handler;

    .line 313
    new-instance v0, Lcom/tencent/android/tpush/horse/i;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/horse/i;-><init>(Lcom/tencent/android/tpush/horse/g;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/g;->n:Lcom/tencent/android/tpush/horse/b;

    .line 386
    new-instance v0, Lcom/tencent/android/tpush/horse/j;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/horse/j;-><init>(Lcom/tencent/android/tpush/horse/g;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/g;->o:Lcom/tencent/android/tpush/horse/b;

    .line 74
    const-string v0, "XGService"

    const-string v1, "@@ OptimalLinkSelector()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/g;->m:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/horse/h;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/g;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    .prologue
    .line 26
    sput p0, Lcom/tencent/android/tpush/horse/g;->l:I

    return p0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/horse/g;I)I
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/tencent/android/tpush/horse/g;->d:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/android/tpush/horse/g;J)J
    .registers 4

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/tencent/android/tpush/horse/g;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/b;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->o:Lcom/tencent/android/tpush/horse/b;

    return-object v0
.end method

.method public static a()Lcom/tencent/android/tpush/horse/g;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/tencent/android/tpush/horse/n;->a:Lcom/tencent/android/tpush/horse/g;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 476
    const-string v0, "XGHorse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ notifyFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->g:Lcom/tencent/android/tpush/horse/l;

    if-eqz v0, :cond_31

    .line 479
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->g:Lcom/tencent/android/tpush/horse/l;

    invoke-interface {v0, p1, p2}, Lcom/tencent/android/tpush/horse/l;->a(ILjava/lang/String;)V

    .line 481
    :cond_31
    return-void
.end method

.method private a(J)V
    .registers 6

    .prologue
    .line 516
    const-string v0, "XGHorse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ timeLock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 518
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->k:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/android/tpush/horse/k;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/horse/k;-><init>(Lcom/tencent/android/tpush/horse/g;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 534
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/horse/g;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/horse/g;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/horse/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x2775

    .line 164
    const-string v0, "XGHorse"

    const-string v1, "@@ startHorseTask()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 167
    const-string v0, "XGHorse"

    const-string v1, ">> network can\'t reachable"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v0, 0x2774

    const-string v1, "network can\'t reachable!"

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    .line 311
    :goto_22
    return-void

    .line 173
    :cond_23
    invoke-static {}, Lcom/tencent/android/tpush/horse/r;->j()Lcom/tencent/android/tpush/horse/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/r;->c()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/f;->c()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 175
    :cond_37
    const-string v0, "XGHorse"

    const-string v1, ">> horse task running"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 179
    :cond_3f
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/horse/data/OptStrategyList;

    invoke-direct {v1}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addOptStrategyList(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/horse/data/OptStrategyList;)Z

    .line 183
    :try_start_4b
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 186
    :cond_63
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getServerItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6a} :catch_2d6

    move-result-object v0

    .line 187
    :try_start_6b
    const-string v1, "XGHorse"

    const-string v3, ">> get serverItems from cache"

    invoke-static {v1, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_ea

    .line 203
    :goto_72
    if-nez v0, :cond_79

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    :cond_79
    invoke-static {}, Lcom/tencent/android/tpush/horse/DefaultServer;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/horse/Tools;->getChannelType(Landroid/content/Context;)I

    move-result v1

    .line 213
    const-string v3, "XGHorse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> channel_type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    packed-switch v1, :pswitch_data_2da

    .line 285
    :try_start_a3
    invoke-static {v0, p1}, Lcom/tencent/android/tpush/horse/q;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    :try_end_a6
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_a3 .. :try_end_a6} :catch_27e
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_2a5

    move-result-object v1

    .line 287
    :try_start_a7
    invoke-static {v0, p1}, Lcom/tencent/android/tpush/horse/q;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    :try_end_aa
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_a7 .. :try_end_aa} :catch_2d1
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_2cc

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 302
    :goto_ae
    invoke-static {}, Lcom/tencent/android/tpush/horse/r;->j()Lcom/tencent/android/tpush/horse/r;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/android/tpush/horse/g;->o:Lcom/tencent/android/tpush/horse/b;

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/horse/r;->a(Lcom/tencent/android/tpush/horse/b;)V

    .line 303
    invoke-static {}, Lcom/tencent/android/tpush/horse/r;->j()Lcom/tencent/android/tpush/horse/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/horse/r;->a(Ljava/util/List;)V

    .line 304
    invoke-static {}, Lcom/tencent/android/tpush/horse/r;->j()Lcom/tencent/android/tpush/horse/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/r;->h()V

    .line 305
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/g;->n:Lcom/tencent/android/tpush/horse/b;

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/horse/f;->a(Lcom/tencent/android/tpush/horse/b;)V

    .line 306
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/f;->a(Ljava/util/List;)V

    .line 307
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/f;->h()V

    goto/16 :goto_22

    .line 189
    :cond_de
    :try_start_de
    invoke-static {p1}, Lcom/tencent/android/tpush/horse/DefaultServer;->a(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_2d6

    move-result-object v0

    .line 190
    :try_start_e2
    const-string v1, "XGHorse"

    const-string v3, ">> get serverItems from default"

    invoke-static {v1, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e9} :catch_ea

    goto :goto_72

    .line 192
    :catch_ea
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 193
    :goto_ee
    const-string v3, "XGHorse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Can not get local serverItems : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :try_start_10a
    invoke-static {p1}, Lcom/tencent/android/tpush/horse/DefaultServer;->a(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_110

    move-result-object v0

    goto/16 :goto_72

    .line 197
    :catch_110
    move-exception v0

    .line 198
    const-string v3, "XGHorse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Can not get default serverItems : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_72

    .line 217
    :pswitch_130
    :try_start_130
    invoke-static {v0, p1}, Lcom/tencent/android/tpush/horse/q;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/tencent/android/tpush/horse/r;->j()Lcom/tencent/android/tpush/horse/r;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/g;->o:Lcom/tencent/android/tpush/horse/b;

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/horse/r;->a(Lcom/tencent/android/tpush/horse/b;)V

    .line 221
    invoke-static {}, Lcom/tencent/android/tpush/horse/r;->j()Lcom/tencent/android/tpush/horse/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/horse/r;->a(Ljava/util/List;)V

    .line 222
    invoke-static {}, Lcom/tencent/android/tpush/horse/r;->j()Lcom/tencent/android/tpush/horse/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/r;->h()V
    :try_end_14b
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_130 .. :try_end_14b} :catch_14d
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_14b} :catch_171

    goto/16 :goto_22

    .line 223
    :catch_14d
    move-exception v0

    .line 224
    const-string v1, "XGHorse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> Can not get strategyItems(create tcp channel fail!) >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "create tcp channel fail!"

    invoke-direct {p0, v6, v0}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    goto/16 :goto_22

    .line 229
    :catch_171
    move-exception v0

    .line 230
    const-string v1, "XGHorse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> (create tcp channel fail!) >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "create tcp channel fail!"

    invoke-direct {p0, v6, v0}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    goto/16 :goto_22

    .line 238
    :pswitch_195
    :try_start_195
    invoke-static {v0, p1}, Lcom/tencent/android/tpush/horse/q;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 240
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/g;->n:Lcom/tencent/android/tpush/horse/b;

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/horse/f;->a(Lcom/tencent/android/tpush/horse/b;)V

    .line 241
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/horse/f;->a(Ljava/util/List;)V

    .line 242
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/f;->h()V
    :try_end_1b0
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_195 .. :try_end_1b0} :catch_1b2
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1b0} :catch_1d6

    goto/16 :goto_22

    .line 243
    :catch_1b2
    move-exception v0

    .line 244
    const-string v1, "XGHorse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> Can not get strategyItems(create http channel fail!)>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "create http channel fail!"

    invoke-direct {p0, v6, v0}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    goto/16 :goto_22

    .line 249
    :catch_1d6
    move-exception v0

    .line 250
    const-string v1, "XGHorse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> (create http channel fail!) >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "create http channel fail!"

    invoke-direct {p0, v6, v0}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    goto/16 :goto_22

    .line 258
    :pswitch_1fa
    :try_start_1fa
    invoke-static {v0, p1}, Lcom/tencent/android/tpush/horse/q;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_207
    :goto_207
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_241

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    .line 262
    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v3

    if-eqz v3, :cond_207

    .line 263
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21c
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_1fa .. :try_end_21c} :catch_21d
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_21c} :catch_25a

    goto :goto_207

    .line 269
    :catch_21d
    move-exception v0

    .line 270
    const-string v1, "XGHorse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> Can not get strategyItems(create wap channel fail!)>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "create wap channel fail!"

    invoke-direct {p0, v6, v0}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    goto/16 :goto_22

    .line 266
    :cond_241
    :try_start_241
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/g;->n:Lcom/tencent/android/tpush/horse/b;

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/horse/f;->a(Lcom/tencent/android/tpush/horse/b;)V

    .line 267
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/f;->a(Ljava/util/List;)V

    .line 268
    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->j()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/f;->h()V
    :try_end_258
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_241 .. :try_end_258} :catch_21d
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_258} :catch_25a

    goto/16 :goto_22

    .line 275
    :catch_25a
    move-exception v0

    .line 276
    const-string v1, "XGHorse"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> (create wap channel fail!) >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "create wap channel fail!"

    invoke-direct {p0, v6, v0}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    goto/16 :goto_22

    .line 289
    :catch_27e
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 290
    :goto_281
    const-string v3, "XGHorse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Can not get strategyItems(create default channel fail!)>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "create default channel fail!"

    invoke-direct {p0, v6, v1}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    move-object v1, v2

    .line 300
    goto/16 :goto_ae

    .line 295
    :catch_2a5
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 296
    :goto_2a8
    const-string v3, "XGHorse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> (create default channel fail!) >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "create default channel fail!"

    invoke-direct {p0, v6, v1}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_ae

    .line 295
    :catch_2cc
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2a8

    .line 289
    :catch_2d1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_281

    .line 192
    :catch_2d6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_ee

    .line 214
    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_130
        :pswitch_195
        :pswitch_1fa
    .end packed-switch
.end method

.method static synthetic a(Lcom/tencent/android/tpush/horse/g;Z)Z
    .registers 2

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/tencent/android/tpush/horse/g;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/l;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->g:Lcom/tencent/android/tpush/horse/l;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/android/tpush/horse/g;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/horse/g;)I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/tencent/android/tpush/horse/g;->d:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/android/tpush/horse/g;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/tencent/android/tpush/horse/g;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/android/tpush/horse/g;)Ljava/util/Timer;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->k:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/m;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->h:Lcom/tencent/android/tpush/horse/m;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/android/tpush/horse/l;)V
    .registers 5

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    const-string v0, "XGHorse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ checkAndSetupClient("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/horse/g;->d:I

    .line 83
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/g;->g:Lcom/tencent/android/tpush/horse/l;

    .line 84
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/g;->m:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/horse/h;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/horse/h;-><init>(Lcom/tencent/android/tpush/horse/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 161
    monitor-exit p0

    return-void

    .line 80
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/tencent/android/tpush/horse/m;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/g;->h:Lcom/tencent/android/tpush/horse/m;

    .line 57
    return-void
.end method

.method public declared-synchronized b()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x2710

    const-wide/16 v6, 0x2

    .line 490
    monitor-enter p0

    :try_start_5
    const-string v0, "XGHorse"

    const-string v1, "@@ onNetworkChanged()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/g;->k:Ljava/util/Timer;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_6f

    .line 493
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/tencent/android/tpush/horse/g;->i:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/tencent/android/tpush/horse/g;->j:J

    .line 494
    sget-wide v2, Lcom/tencent/android/tpush/horse/g;->a:J

    mul-long/2addr v2, v8

    sput-wide v2, Lcom/tencent/android/tpush/horse/g;->b:J

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/android/tpush/horse/g;->i:J

    .line 496
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_31

    sget-wide v2, Lcom/tencent/android/tpush/horse/g;->j:J

    sget-wide v4, Lcom/tencent/android/tpush/horse/g;->b:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_61

    .line 498
    :cond_31
    const-string v0, "XGHorse"

    const-string v2, ">> time delay>>not suitable & update lastNotifyTime>>"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-wide v2, Lcom/tencent/android/tpush/horse/g;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/tencent/android/tpush/horse/g;->a:J

    .line 501
    sget-wide v2, Lcom/tencent/android/tpush/horse/g;->a:J

    const-wide/16 v4, 0xc

    cmp-long v0, v2, v4

    if-gtz v0, :cond_50

    sget-wide v2, Lcom/tencent/android/tpush/horse/g;->j:J

    sget-wide v4, Lcom/tencent/android/tpush/horse/g;->b:J

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_5e

    .line 502
    :cond_50
    const-string v0, "XGHorse"

    const-string v2, ">> time delay>>not suitable & timeFactor / 2>>"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-wide v2, Lcom/tencent/android/tpush/horse/g;->a:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sput-wide v2, Lcom/tencent/android/tpush/horse/g;->a:J

    .line 506
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_f .. :try_end_5f} :catchall_72

    .line 513
    :cond_5f
    :goto_5f
    monitor-exit p0

    return-void

    .line 508
    :cond_61
    :try_start_61
    sget-wide v2, Lcom/tencent/android/tpush/horse/g;->a:J

    mul-long/2addr v2, v8

    .line 509
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_72

    .line 510
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_5f

    .line 511
    :try_start_6b
    invoke-direct {p0, v2, v3}, Lcom/tencent/android/tpush/horse/g;->a(J)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_5f

    .line 490
    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 509
    :catchall_72
    move-exception v0

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_6f
.end method

.method public c()V
    .registers 4

    .prologue
    .line 538
    sget v0, Lcom/tencent/android/tpush/horse/g;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/horse/g;->l:I

    .line 539
    const-string v0, "XGHorse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ onCreateSocketErr errCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/horse/g;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget v0, Lcom/tencent/android/tpush/horse/g;->l:I

    sget v1, Lcom/tencent/android/tpush/service/a/a;->t:I

    if-ge v0, v1, :cond_42

    .line 542
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/d/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Ljava/lang/String;)V

    .line 549
    :goto_41
    return-void

    .line 546
    :cond_42
    const/16 v0, 0x2775

    const-string v1, "create socket err"

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(ILjava/lang/String;)V

    goto :goto_41
.end method
