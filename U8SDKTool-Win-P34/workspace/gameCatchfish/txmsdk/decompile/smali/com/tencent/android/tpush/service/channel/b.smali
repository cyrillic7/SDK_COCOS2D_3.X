.class public final Lcom/tencent/android/tpush/service/channel/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/horse/m;
.implements Lcom/tencent/android/tpush/service/channel/a/b;


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;,
        .enum Lcom/jg/EType;->INTENTSCHEMECHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field private static volatile q:J

.field private static r:Ljava/lang/String;


# instance fields
.field private g:Landroid/os/Handler;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;

.field private k:Lcom/tencent/android/tpush/service/channel/a/a;

.field private volatile l:Z

.field private m:Landroid/app/PendingIntent;

.field private n:Lcom/tencent/android/tpush/service/channel/n;

.field private volatile o:Z

.field private p:J

.field private s:Lcom/tencent/android/tpush/horse/l;

.field private t:Lcom/tencent/android/tpush/service/channel/o;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 82
    sput v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    .line 83
    sput v0, Lcom/tencent/android/tpush/service/channel/b;->b:I

    .line 84
    const v0, 0x46cd0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->c:I

    .line 85
    const v0, 0x2bf20

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->d:I

    .line 86
    const v0, 0x493e0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->e:I

    .line 87
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->c:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 89
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/android/tpush/service/channel/b;->q:J

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/tencent/android/tpush/service/channel/b;->r:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/Map;

    .line 75
    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Z

    .line 78
    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Landroid/app/PendingIntent;

    .line 79
    iput-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Lcom/tencent/android/tpush/service/channel/n;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->o:Z

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b;->p:J

    .line 137
    new-instance v0, Lcom/tencent/android/tpush/service/channel/c;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/c;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Lcom/tencent/android/tpush/horse/l;

    .line 324
    new-instance v0, Lcom/tencent/android/tpush/service/channel/d;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/d;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->t:Lcom/tencent/android/tpush/service/channel/o;

    .line 101
    const-string v0, "XGService"

    const-string v1, "@@ TpnsChannel()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/m;)V

    .line 103
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/common/g;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/service/channel/c;)V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;)Lcom/tencent/android/tpush/service/channel/a/a;
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 64
    sput-object p0, Lcom/tencent/android/tpush/service/channel/b;->r:Ljava/lang/String;

    return-object p0
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/n;)V
    .registers 7

    .prologue
    .line 249
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ messageInQueue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :try_start_28
    monitor-enter p0
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_29} :catch_6b

    .line 253
    :try_start_29
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_76

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/tencent/android/tpush/service/channel/n;->a:J

    .line 255
    const/4 v0, -0x1

    if-ne p1, v0, :cond_62

    .line 256
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :goto_41
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    if-eqz v0, :cond_4a

    .line 267
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->g()V

    .line 269
    :cond_4a
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->g()V

    .line 270
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_68

    .line 272
    :try_start_4e
    new-instance v0, Lcom/tencent/android/tpush/service/channel/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/channel/l;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/c;)V

    .line 273
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    sget v2, Lcom/tencent/android/tpush/service/a/a;->f:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_61} :catch_6b

    .line 279
    :goto_61
    return-void

    .line 258
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_41

    .line 270
    :catchall_68
    move-exception v0

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6b} :catch_6b

    .line 276
    :catch_6b
    move-exception v0

    .line 277
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 261
    :cond_76
    :try_start_76
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>FG messageInQueue is full,size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_68

    goto :goto_41
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;)Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->o:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    .registers 2

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Z

    return p1
.end method

.method public static b()Lcom/tencent/android/tpush/service/channel/b;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/tencent/android/tpush/service/channel/m;->a:Lcom/tencent/android/tpush/service/channel/b;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/channel/b;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->g()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    .registers 2

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/tencent/android/tpush/service/channel/b;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/android/tpush/service/channel/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/android/tpush/service/channel/b;)V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->h()V

    return-void
.end method

.method static synthetic g(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->j:Ljava/util/Map;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 231
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ checkAndSetupClient("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    monitor-enter p0

    .line 234
    :try_start_2d
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Z

    if-nez v0, :cond_41

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Z
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_4c

    .line 237
    :try_start_38
    invoke-static {}, Lcom/tencent/android/tpush/horse/g;->a()Lcom/tencent/android/tpush/horse/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->s:Lcom/tencent/android/tpush/horse/l;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/l;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_43
    .catchall {:try_start_38 .. :try_end_41} :catchall_4c

    .line 244
    :cond_41
    :goto_41
    :try_start_41
    monitor-exit p0

    .line 245
    return-void

    .line 239
    :catch_43
    move-exception v0

    .line 240
    const-string v1, "XGService"

    const-string v2, "createOptimalSocketChannel error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 244
    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method static synthetic h(Lcom/tencent/android/tpush/service/channel/b;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized h()V
    .registers 5

    .prologue
    .line 382
    monitor-enter p0

    :try_start_1
    const-string v0, "XGService"

    const-string v1, "@@ heartbeat()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 387
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Lcom/tencent/android/tpush/service/channel/n;

    if-nez v0, :cond_1f

    .line 388
    new-instance v0, Lcom/tencent/android/tpush/service/channel/n;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->t:Lcom/tencent/android/tpush/service/channel/o;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/channel/n;-><init>(SLcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/o;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Lcom/tencent/android/tpush/service/channel/n;

    .line 392
    :cond_1f
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Lcom/tencent/android/tpush/service/channel/n;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    if-nez v0, :cond_30

    .line 393
    new-instance v0, Lcom/tencent/android/tpush/service/channel/n;

    const/4 v1, 0x7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->t:Lcom/tencent/android/tpush/service/channel/o;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/channel/n;-><init>(SLcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/o;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Lcom/tencent/android/tpush/service/channel/n;

    .line 397
    :cond_30
    const-string v0, "XGTcpSendPacks"

    const-string v1, "@@ =============heartbeat()================"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Lcom/tencent/android/tpush/service/channel/n;

    invoke-direct {p0, v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/n;)V

    .line 401
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_83

    .line 402
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->b:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6d

    .line 403
    const-string v0, "XGService"

    const-string v1, "heartbeat to watchdog failed too many time , start watchdog aagin"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->b:I

    .line 406
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 433
    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGServiceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGServiceMonitor;->start()V

    .line 435
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->i()V
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_80

    .line 436
    monitor-exit p0

    return-void

    .line 409
    :cond_6d
    :try_start_6d
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    const-string v1, "heartbeat:"

    new-instance v2, Lcom/tencent/android/tpush/service/channel/e;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/channel/e;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendHeartbeat2Watchdog(Ljava/lang/String;Lcom/tencent/android/tpush/service/y;)V
    :try_end_7f
    .catchall {:try_start_6d .. :try_end_7f} :catchall_80

    goto :goto_5d

    .line 382
    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0

    .line 429
    :cond_83
    :try_start_83
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_80

    goto :goto_5d
.end method

.method static synthetic i(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/n;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->n:Lcom/tencent/android/tpush/service/channel/n;

    return-object v0
.end method

.method private i()V
    .registers 6

    .prologue
    .line 570
    const-string v0, "XGService"

    const-string v1, "@@ scheduleHeartbeat()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :try_start_7
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Landroid/app/PendingIntent;

    if-nez v0, :cond_32

    .line 573
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/channel/f;

    invoke-direct {v1, p0}, Lcom/tencent/android/tpush/service/channel/f;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.android.tpush.service.channel.heartbeatIntent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.service.channel.heartbeatIntent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Landroid/app/PendingIntent;

    .line 588
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 589
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->f:I

    sget v3, Lcom/tencent/android/tpush/service/channel/b;->e:I

    if-le v2, v3, :cond_40

    .line 590
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->e:I

    sput v2, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 594
    :cond_40
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.tencent.android.xg.wx.HeartbeatIntervalMs"

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->f:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 599
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> heartbeatinterval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",heartbeatintervalmax:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/android/tpush/service/channel/b;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    sget v2, Lcom/tencent/android/tpush/service/channel/b;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 603
    invoke-static {}, Lcom/tencent/android/tpush/service/t;->a()Lcom/tencent/android/tpush/service/t;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/b;->m:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/tencent/android/tpush/service/t;->a(IJLandroid/app/PendingIntent;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_82} :catch_83

    .line 608
    :goto_82
    return-void

    .line 605
    :catch_83
    move-exception v0

    .line 606
    const-string v1, "XGService"

    const-string v2, "scheduleHeartbeat error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82
.end method

.method static synthetic j(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/o;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->t:Lcom/tencent/android/tpush/service/channel/o;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/android/tpush/service/channel/a/a;I)Ljava/util/ArrayList;
    .registers 13

    .prologue
    const/4 v0, 0x1

    .line 637
    monitor-enter p0

    :try_start_2
    const-string v1, "XGTcpSendPacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ clientFetchSendPackets("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    if-ge p2, v0, :cond_23

    move p2, v0

    .line 643
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 644
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 646
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 647
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 648
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 650
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/n;

    .line 651
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/h;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/n;->b()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 652
    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/service/channel/n;->a(Lcom/tencent/android/tpush/service/channel/b/h;)V

    .line 653
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    iput-wide v4, v1, Lcom/tencent/android/tpush/service/channel/n;->b:J

    .line 655
    const-string v2, "XGTcpSendPacks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">> message.isHeartbeatMessage()("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/n;->a()Z

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/n;->a()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 660
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/n;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_8c
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 662
    add-int/lit8 v2, p2, -0x1

    .line 664
    iget-object v1, v1, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v8, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    .line 665
    :goto_95
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 666
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/n;

    .line 667
    if-eqz v8, :cond_c4

    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v3, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    if-nez v3, :cond_af

    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    instance-of v3, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;

    if-eqz v3, :cond_c4

    .line 669
    :cond_af
    iget-object v3, v1, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    if-eqz v3, :cond_bd

    .line 670
    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v9, Lcom/tencent/android/tpush/service/channel/g;

    invoke-direct {v9, p0, v1}, Lcom/tencent/android/tpush/service/channel/g;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/n;)V

    invoke-virtual {v3, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 678
    :cond_bd
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_c0
    .catchall {:try_start_2 .. :try_end_c0} :catchall_c1

    goto :goto_95

    .line 637
    :catchall_c1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 681
    :cond_c4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_ed

    .line 682
    :try_start_c8
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/h;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/n;->b()I

    move-result v9

    invoke-direct {v2, v9}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 684
    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/service/channel/n;->a(Lcom/tencent/android/tpush/service/channel/b/h;)V

    .line 685
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iput-wide v4, v1, Lcom/tencent/android/tpush/service/channel/n;->b:J

    .line 687
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/n;->a()Z

    move-result v2

    if-nez v2, :cond_ea

    .line 689
    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/n;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_ea
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_ed
    .catchall {:try_start_c8 .. :try_end_ed} :catchall_c1

    :cond_ed
    move v2, v3

    .line 693
    goto :goto_95

    .line 695
    :cond_ef
    monitor-exit p0

    return-object v6
.end method

.method public a()V
    .registers 3

    .prologue
    .line 630
    const-string v0, "XGService"

    const-string v1, "@@ onNetworkChanged()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->e()V

    .line 632
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/o;)V
    .registers 6

    .prologue
    .line 284
    if-eqz p1, :cond_3b

    .line 285
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_32
    new-instance v0, Lcom/tencent/android/tpush/service/channel/n;

    invoke-direct {v0, p1, p2}, Lcom/tencent/android/tpush/service/channel/n;-><init>(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/o;)V

    .line 290
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/n;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3b} :catch_3c

    .line 295
    :cond_3b
    :goto_3b
    return-void

    .line 291
    :catch_3c
    move-exception v0

    .line 292
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;)V
    .registers 5

    .prologue
    .line 710
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ clientDidCancelled(isHttpClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v1, 0x2776

    const-string v2, "TpnsClient is cancelled!"

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/service/channel/j;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/android/tpush/service/channel/j;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 716
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .registers 7

    .prologue
    .line 731
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ clientDidSendPacket(isHttpClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 738
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/n;

    .line 739
    if-eqz v0, :cond_49

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/n;->b:J

    .line 746
    :goto_48
    return-void

    .line 742
    :cond_49
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not in the sentQueue!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method

.method public a(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V
    .registers 6

    .prologue
    .line 701
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ clientExceptionOccurs(isHttpClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/j;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method public a(Z)V
    .registers 8

    .prologue
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 299
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ sendReconnMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/tencent/android/tpush/service/channel/b;->q:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-wide v2, Lcom/tencent/android/tpush/service/channel/b;->q:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_37

    if-eqz p1, :cond_88

    .line 302
    :cond_37
    sput-wide v0, Lcom/tencent/android/tpush/service/channel/b;->q:J

    .line 303
    invoke-static {}, Lcom/tencent/android/tpush/service/o;->a()Lcom/tencent/android/tpush/service/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/o;->b()Lcom/tencent/android/tpush/service/channel/n;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_88

    .line 306
    const-string v1, "XGTcpSendPacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ =============reconn()================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_88

    const-string v1, "0"

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 313
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(ILcom/tencent/android/tpush/service/channel/n;)V

    .line 317
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V

    .line 322
    :cond_88
    return-void
.end method

.method public b(Z)I
    .registers 16

    .prologue
    .line 439
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ trySendCachedMsgIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 442
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ trySendCachedMsgIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/channel/b;->p:J

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/b;->p:J

    sub-long v0, v4, v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4b

    if-eqz p1, :cond_202

    .line 445
    :cond_4b
    iput-wide v4, p0, Lcom/tencent/android/tpush/service/channel/b;->p:J

    .line 446
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v3

    .line 447
    if-eqz v3, :cond_202

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_202

    .line 449
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/android/tpush/service/b/a;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 451
    if-eqz v6, :cond_202

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_202

    .line 452
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> CachedMsgList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 455
    const/4 v0, 0x0

    move v1, v0

    :goto_90
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f0

    .line 456
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;

    .line 458
    :try_start_9c
    iget-object v2, v0, Lcom/tencent/android/tpush/data/CachedMessageIntent;->intent:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_af

    .line 460
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :goto_ab
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_90

    .line 463
    :cond_af
    const/4 v8, 0x1

    invoke-static {v2, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 465
    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    .line 467
    const-string v2, "multiPkg"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 469
    const-string v2, "XGService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">> trySendCachedMsgIntent intent.getPackage():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", multi_pkg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",service pkg name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v2, "accId"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 480
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9, v10, v11}, Lcom/tencent/android/tpush/service/d/d;->d(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_138

    .line 483
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-static {}, Lcom/tencent/android/tpush/service/o;->a()Lcom/tencent/android/tpush/service/o;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/android/tpush/service/o;->a(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/tencent/android/tpush/service/b/k;->a()Lcom/tencent/android/tpush/service/b/k;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Lcom/tencent/android/tpush/service/b/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v9, v8}, Lcom/tencent/android/tpush/service/b/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_12b} :catch_12c

    goto :goto_ab

    .line 551
    :catch_12c
    move-exception v0

    .line 552
    const-string v2, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 498
    :cond_138
    :try_start_138
    invoke-static {v9}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/b;

    move-result-object v2

    .line 500
    if-eqz v2, :cond_162

    iget v2, v2, Lcom/tencent/android/tpush/data/b;->e:I

    if-lez v2, :cond_162

    .line 502
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">> "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " unregistered"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 507
    :cond_162
    const-string v2, "msgId"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 510
    const-string v2, "server_time"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 519
    const-string v2, "expire_time"

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 521
    const-string v2, "XGService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ">> trySendCachedMsgIntent :expire_time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_1cb

    .line 526
    cmp-long v2, v4, v10

    if-lez v2, :cond_1e1

    .line 527
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    const-string v2, "XGService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > expire_time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", remove msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 536
    :cond_1cb
    const-string v0, "ttl"

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 538
    const v2, 0xf731400

    .line 539
    if-ltz v0, :cond_1d9

    if-le v0, v2, :cond_1da

    :cond_1d9
    move v0, v2

    .line 542
    :cond_1da
    int-to-long v10, v0

    add-long/2addr v10, v4

    .line 543
    const-string v0, "expire_time"

    invoke-virtual {v8, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 547
    :cond_1e1
    const-string v0, "date"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v2

    invoke-virtual {v2, v0, v8, v9}, Lcom/tencent/android/tpush/service/b/a;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_1ee} :catch_12c

    goto/16 :goto_ab

    .line 555
    :cond_1f0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1fd

    .line 556
    invoke-static {}, Lcom/tencent/android/tpush/service/b/a;->a()Lcom/tencent/android/tpush/service/b/a;

    move-result-object v0

    invoke-virtual {v0, v3, v7, v6}, Lcom/tencent/android/tpush/service/b/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 559
    :cond_1fd
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 563
    :goto_201
    return v0

    :cond_202
    const/4 v0, 0x0

    goto :goto_201
.end method

.method public b(Lcom/tencent/android/tpush/service/channel/a/a;)V
    .registers 5

    .prologue
    .line 720
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ clientDidRetired(isHttpClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v1, 0x2779

    const-string v2, "TpnsMessage timeout!"

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 726
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/android/tpush/service/channel/j;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/android/tpush/service/channel/j;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void
.end method

.method public declared-synchronized b(Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .registers 6

    .prologue
    .line 751
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->b()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b;->b(Z)I

    .line 752
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ clientDidReceivePacket(isHttpClient : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Protocol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->h()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->h()S

    move-result v0

    sparse-switch v0, :sswitch_data_ce

    .line 790
    const-string v0, "XGTcpRecvPacks"

    const-string v1, "clientDidReceivePacket not supported"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> clientDidReceivePacket >>> \u4e0d\u652f\u6301\u7684\u534f\u8bae\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->i()V
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_94

    .line 796
    :goto_60
    monitor-exit p0

    return-void

    .line 759
    :sswitch_62
    :try_start_62
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->e()Z

    move-result v0

    if-nez v0, :cond_97

    .line 760
    const-string v0, "XGTcpRecvPacks"

    const-string v1, "clientDidReceivePacket RequestSuccRunnable EV1"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/k;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 771
    :goto_79
    :sswitch_79
    invoke-virtual {p2}, Lcom/tencent/android/tpush/service/channel/b/i;->e()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 772
    const-string v0, "XGTcpRecvPacks"

    const-string v1, "clientDidReceivePacket RequestSuccRunnable NEV1"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/k;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    :goto_90
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->i()V
    :try_end_93
    .catchall {:try_start_62 .. :try_end_93} :catchall_94

    goto :goto_60

    .line 751
    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0

    .line 765
    :cond_97
    :try_start_97
    const-string v0, "XGTcpRecvPacks"

    const-string v1, "clientDidReceivePacket PushMessageRunnable EV1"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/i;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_79

    .line 777
    :cond_a9
    const-string v0, "XGTcpRecvPacks"

    const-string v1, "clientDidReceivePacket PushMessageRunnable NEV1"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/i;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_90

    .line 785
    :sswitch_bb
    const-string v0, "XGTcpRecvPacks"

    const-string v1, "clientDidReceivePacket HeartBeatRunnable"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->g:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/android/tpush/service/channel/h;-><init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_cc
    .catchall {:try_start_97 .. :try_end_cc} :catchall_94

    goto :goto_60

    .line 757
    nop

    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_62
        0xa -> :sswitch_79
        0x14 -> :sswitch_bb
    .end sparse-switch
.end method

.method public c()V
    .registers 3

    .prologue
    .line 118
    const-string v0, "XGService"

    const-string v1, "@@ init()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->g()V

    .line 120
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 123
    const-string v0, "XGService"

    const-string v1, "@@ finish()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/b;->l:Z

    .line 125
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    if-eqz v0, :cond_16

    .line 126
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->c()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/b;->k:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 129
    :cond_16
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 132
    const-string v0, "XGService"

    const-string v1, "@@ reCreateClient()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/channel/b;->d()V

    .line 134
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/channel/b;->g()V

    .line 135
    return-void
.end method
