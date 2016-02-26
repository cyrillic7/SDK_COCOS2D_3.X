.class public Lcom/duoku/platform/ui/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/duoku/platform/ui/b/a;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/ui/b/a;->b:Lcom/duoku/platform/ui/b/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/ui/b/a;->a:Z

    .line 25
    return-void
.end method

.method public static a()Lcom/duoku/platform/ui/b/a;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/duoku/platform/ui/b/a;->b:Lcom/duoku/platform/ui/b/a;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/duoku/platform/ui/b/a;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/duoku/platform/ui/b/a;->b:Lcom/duoku/platform/ui/b/a;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/duoku/platform/ui/b/a;

    invoke-direct {v0}, Lcom/duoku/platform/ui/b/a;-><init>()V

    sput-object v0, Lcom/duoku/platform/ui/b/a;->b:Lcom/duoku/platform/ui/b/a;

    .line 32
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 39
    :cond_13
    sget-object v0, Lcom/duoku/platform/ui/b/a;->b:Lcom/duoku/platform/ui/b/a;

    return-object v0

    .line 32
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 48
    .line 50
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    invoke-static {p1, p3}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 56
    :goto_e
    return v0

    .line 53
    :cond_f
    invoke-static {p1, p2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/duoku/platform/ui/b/a;->a:Z

    .line 74
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
