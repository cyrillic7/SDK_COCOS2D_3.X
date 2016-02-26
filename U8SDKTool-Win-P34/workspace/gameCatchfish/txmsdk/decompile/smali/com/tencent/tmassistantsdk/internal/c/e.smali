.class public Lcom/tencent/tmassistantsdk/internal/c/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmassistantsdk/internal/c/e;

.field private static final b:[Ljava/lang/Class;


# instance fields
.field private final c:Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/c/e;->a:Lcom/tencent/tmassistantsdk/internal/c/e;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/tmassistantsdk/internal/c/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/c/e;->b:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/c/f;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/c/f;-><init>(Lcom/tencent/tmassistantsdk/internal/c/e;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/c/e;->c:Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;

    .line 41
    invoke-static {}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/c/e;->c:Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->addNetworkChangedObserver(Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;)V

    .line 43
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/c/e;->c()V

    .line 44
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmassistantsdk/internal/c/e;
    .registers 2

    .prologue
    .line 32
    const-class v1, Lcom/tencent/tmassistantsdk/internal/c/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/c/e;->a:Lcom/tencent/tmassistantsdk/internal/c/e;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/c/e;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/c/e;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/c/e;->a:Lcom/tencent/tmassistantsdk/internal/c/e;

    .line 36
    :cond_e
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/c/e;->a:Lcom/tencent/tmassistantsdk/internal/c/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/c/e;->b:[Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 6

    .prologue
    .line 51
    sget-object v2, Lcom/tencent/tmassistantsdk/internal/c/e;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_21

    aget-object v0, v2, v1

    .line 53
    :try_start_9
    const-class v4, Lcom/tencent/tmassistantsdk/internal/c/b;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 54
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/c/b;->a()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1c

    .line 51
    :cond_18
    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 56
    :catch_1c
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 62
    :cond_21
    invoke-static {}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/c/e;->c:Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->removeNetworkChangedObserver(Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;)V

    .line 63
    return-void
.end method

.method public c()V
    .registers 6

    .prologue
    .line 73
    sget-object v2, Lcom/tencent/tmassistantsdk/internal/c/e;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_21

    aget-object v0, v2, v1

    .line 75
    :try_start_9
    const-class v4, Lcom/tencent/tmassistantsdk/internal/c/b;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 76
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/c/b;->c()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1c

    .line 73
    :cond_18
    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 78
    :catch_1c
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 83
    :cond_21
    return-void
.end method

.method public d()V
    .registers 6

    .prologue
    .line 90
    sget-object v2, Lcom/tencent/tmassistantsdk/internal/c/e;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_21

    aget-object v0, v2, v1

    .line 92
    :try_start_9
    const-class v4, Lcom/tencent/tmassistantsdk/internal/c/b;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 93
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/c/b;->b()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1c

    .line 90
    :cond_18
    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 95
    :catch_1c
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 100
    :cond_21
    return-void
.end method
