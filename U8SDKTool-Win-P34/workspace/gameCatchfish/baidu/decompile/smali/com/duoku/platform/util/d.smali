.class public Lcom/duoku/platform/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/duoku/platform/util/d;


# instance fields
.field private a:J

.field private c:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/util/d;->c:Z

    .line 15
    return-void
.end method

.method public static a()Lcom/duoku/platform/util/d;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/duoku/platform/util/d;->b:Lcom/duoku/platform/util/d;

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/duoku/platform/util/d;

    invoke-direct {v0}, Lcom/duoku/platform/util/d;-><init>()V

    sput-object v0, Lcom/duoku/platform/util/d;->b:Lcom/duoku/platform/util/d;

    .line 22
    :cond_b
    sget-object v0, Lcom/duoku/platform/util/d;->b:Lcom/duoku/platform/util/d;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 26
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/duoku/platform/util/d;->c:Z

    if-eqz v1, :cond_b

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/duoku/platform/util/d;->c:Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_24

    .line 38
    :goto_9
    monitor-exit p0

    return v0

    .line 31
    :cond_b
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 32
    iget-wide v4, p0, Lcom/duoku/platform/util/d;->a:J

    sub-long v4, v2, v4

    .line 33
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_21

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_21

    .line 34
    const/4 v0, 0x1

    goto :goto_9

    .line 37
    :cond_21
    iput-wide v2, p0, Lcom/duoku/platform/util/d;->a:J
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_24

    goto :goto_9

    .line 26
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
