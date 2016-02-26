.class public Lcom/tencent/tmassistantsdk/internal/e/a/b;
.super Lcom/tencent/tmassistantsdk/internal/e/a/c;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmassistantsdk/internal/e/a/c;

.field protected static final b:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/b;->a:Lcom/tencent/tmassistantsdk/internal/e/a/c;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/tmassistantsdk/internal/e/b/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/tencent/tmassistantsdk/internal/e/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/b;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tmassistantsdk/internal/e/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 14
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmassistantsdk/internal/e/a/c;
    .registers 6

    .prologue
    .line 36
    const-class v1, Lcom/tencent/tmassistantsdk/internal/e/a/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/b;->a:Lcom/tencent/tmassistantsdk/internal/e/a/c;

    if-nez v0, :cond_1c

    .line 38
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1c

    .line 40
    new-instance v2, Lcom/tencent/tmassistantsdk/internal/e/a/b;

    const-string v3, "tmassistant_sdk_v2.db"

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/tencent/tmassistantsdk/internal/e/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Lcom/tencent/tmassistantsdk/internal/e/a/b;->a:Lcom/tencent/tmassistantsdk/internal/e/a/c;

    .line 43
    :cond_1c
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/b;->a:Lcom/tencent/tmassistantsdk/internal/e/a/c;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x3

    return v0
.end method

.method public c()[Ljava/lang/Class;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/b;->b:[Ljava/lang/Class;

    return-object v0
.end method
