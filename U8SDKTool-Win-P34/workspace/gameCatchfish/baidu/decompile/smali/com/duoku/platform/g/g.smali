.class public Lcom/duoku/platform/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/duoku/platform/g/g;


# instance fields
.field private c:Lcom/duoku/platform/g/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duoku/platform/g/g;->a:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/g/g;->b:Lcom/duoku/platform/g/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/g/g;->c:Lcom/duoku/platform/g/d;

    .line 50
    new-instance v0, Lcom/duoku/platform/g/d;

    invoke-direct {v0}, Lcom/duoku/platform/g/d;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/g/g;->c:Lcom/duoku/platform/g/d;

    .line 51
    return-void
.end method

.method public static a()Lcom/duoku/platform/g/e;
    .registers 1

    .prologue
    .line 27
    invoke-static {}, Lcom/duoku/platform/g/g;->b()Lcom/duoku/platform/g/g;

    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/duoku/platform/g/g;->c:Lcom/duoku/platform/g/d;

    return-object v0
.end method

.method private static b()Lcom/duoku/platform/g/g;
    .registers 2

    .prologue
    .line 37
    sget-object v1, Lcom/duoku/platform/g/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_3
    sget-object v0, Lcom/duoku/platform/g/g;->b:Lcom/duoku/platform/g/g;

    if-nez v0, :cond_e

    .line 40
    new-instance v0, Lcom/duoku/platform/g/g;

    invoke-direct {v0}, Lcom/duoku/platform/g/g;-><init>()V

    sput-object v0, Lcom/duoku/platform/g/g;->b:Lcom/duoku/platform/g/g;

    .line 37
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 43
    sget-object v0, Lcom/duoku/platform/g/g;->b:Lcom/duoku/platform/g/g;

    return-object v0

    .line 37
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method
