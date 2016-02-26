.class public Lcom/duoku/platform/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/duoku/platform/f/c;


# instance fields
.field private b:Lcom/duoku/platform/f/a;

.field private c:Lcom/duoku/platform/f/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/f/c;->a:Lcom/duoku/platform/f/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/duoku/platform/f/c;->b:Lcom/duoku/platform/f/a;

    .line 14
    iput-object v0, p0, Lcom/duoku/platform/f/c;->c:Lcom/duoku/platform/f/d;

    .line 30
    new-instance v0, Lcom/duoku/platform/f/a;

    invoke-direct {v0}, Lcom/duoku/platform/f/a;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/f/c;->b:Lcom/duoku/platform/f/a;

    .line 31
    new-instance v0, Lcom/duoku/platform/f/d;

    invoke-direct {v0}, Lcom/duoku/platform/f/d;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/f/c;->c:Lcom/duoku/platform/f/d;

    .line 32
    return-void
.end method

.method public static a()Lcom/duoku/platform/f/a;
    .registers 1

    .prologue
    .line 17
    invoke-static {}, Lcom/duoku/platform/f/c;->c()Lcom/duoku/platform/f/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/duoku/platform/f/c;->d()Lcom/duoku/platform/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/duoku/platform/f/d;
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/duoku/platform/f/c;->c()Lcom/duoku/platform/f/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/duoku/platform/f/c;->e()Lcom/duoku/platform/f/d;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c()Lcom/duoku/platform/f/c;
    .registers 2

    .prologue
    .line 36
    const-class v1, Lcom/duoku/platform/f/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/f/c;->a:Lcom/duoku/platform/f/c;

    if-nez v0, :cond_e

    .line 37
    new-instance v0, Lcom/duoku/platform/f/c;

    invoke-direct {v0}, Lcom/duoku/platform/f/c;-><init>()V

    sput-object v0, Lcom/duoku/platform/f/c;->a:Lcom/duoku/platform/f/c;

    .line 40
    :cond_e
    sget-object v0, Lcom/duoku/platform/f/c;->a:Lcom/duoku/platform/f/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Lcom/duoku/platform/f/a;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/duoku/platform/f/c;->b:Lcom/duoku/platform/f/a;

    return-object v0
.end method

.method private e()Lcom/duoku/platform/f/d;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duoku/platform/f/c;->c:Lcom/duoku/platform/f/d;

    return-object v0
.end method
