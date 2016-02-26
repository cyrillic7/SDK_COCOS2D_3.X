.class public Lcom/tencent/tmassistantsdk/internal/e/b/e;
.super Lcom/tencent/tmassistantsdk/internal/e/b/a;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmassistantsdk/internal/e/b/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/e/b/e;->a:Lcom/tencent/tmassistantsdk/internal/e/b/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized g()Lcom/tencent/tmassistantsdk/internal/e/b/e;
    .registers 2

    .prologue
    .line 31
    const-class v1, Lcom/tencent/tmassistantsdk/internal/e/b/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/b/e;->a:Lcom/tencent/tmassistantsdk/internal/e/b/e;

    if-nez v0, :cond_e

    .line 32
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/e/b/e;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/e/b/e;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/e/b/e;->a:Lcom/tencent/tmassistantsdk/internal/e/b/e;

    .line 34
    :cond_e
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/b/e;->a:Lcom/tencent/tmassistantsdk/internal/e/b/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected b(I)[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 56
    if-le p1, v0, :cond_d

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/e;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    const-string v0, "TipsInfoLogData"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const-string v0, "CREATE TABLE if not exists TipsInfoLogData( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "INSERT INTO TipsInfoLogData logData = ?"

    return-object v0
.end method
