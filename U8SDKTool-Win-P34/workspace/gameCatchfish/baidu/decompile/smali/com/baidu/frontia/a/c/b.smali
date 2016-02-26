.class public Lcom/baidu/frontia/a/c/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/frontia/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/frontia/a/c/b;

    invoke-direct {v0}, Lcom/baidu/frontia/a/c/b;-><init>()V

    sput-object v0, Lcom/baidu/frontia/a/c/b;->a:Lcom/baidu/frontia/a/c/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/frontia/a/c/b;
    .registers 2

    sget-object v0, Lcom/baidu/frontia/a/c/b;->a:Lcom/baidu/frontia/a/c/b;

    if-nez v0, :cond_13

    const-class v1, Lcom/baidu/frontia/a/c/b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/baidu/frontia/a/c/b;->a:Lcom/baidu/frontia/a/c/b;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/frontia/a/c/b;

    invoke-direct {v0}, Lcom/baidu/frontia/a/c/b;-><init>()V

    sput-object v0, Lcom/baidu/frontia/a/c/b;->a:Lcom/baidu/frontia/a/c/b;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/baidu/frontia/a/c/b;->a:Lcom/baidu/frontia/a/c/b;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "http://deeplink.baidu.com"

    return-object v0
.end method
