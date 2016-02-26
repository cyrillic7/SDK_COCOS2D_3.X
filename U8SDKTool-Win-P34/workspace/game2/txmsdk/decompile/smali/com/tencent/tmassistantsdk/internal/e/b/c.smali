.class public Lcom/tencent/tmassistantsdk/internal/e/b/c;
.super Lcom/tencent/tmassistantsdk/internal/e/b/a;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmassistantsdk/internal/e/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/e/b/c;->a:Lcom/tencent/tmassistantsdk/internal/e/b/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized g()Lcom/tencent/tmassistantsdk/internal/e/b/c;
    .registers 2

    .prologue
    .line 30
    const-class v1, Lcom/tencent/tmassistantsdk/internal/e/b/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/b/c;->a:Lcom/tencent/tmassistantsdk/internal/e/b/c;

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/e/b/c;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/e/b/c;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/e/b/c;->a:Lcom/tencent/tmassistantsdk/internal/e/b/c;

    .line 33
    :cond_e
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/b/c;->a:Lcom/tencent/tmassistantsdk/internal/e/b/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 30
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

    .line 53
    if-le p1, v0, :cond_d

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/e/b/c;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "BusinessInfoLogTable"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    const-string v0, "CREATE TABLE if not exists BusinessInfoLogTable( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string v0, "INSERT INTO BusinessInfoLogTable logData = ?"

    return-object v0
.end method
