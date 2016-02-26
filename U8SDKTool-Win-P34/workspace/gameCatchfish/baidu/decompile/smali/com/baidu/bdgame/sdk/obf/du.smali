.class public Lcom/baidu/bdgame/sdk/obf/du;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/du$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/bdgame/sdk/obf/ed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/du$3;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/du$3;-><init>(Lcom/baidu/bdgame/sdk/obf/du;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->d:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/du;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/du;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/du;->c:Lcom/baidu/bdgame/sdk/obf/ed;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .registers 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->c:Lcom/baidu/bdgame/sdk/obf/ed;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/du;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/du;->a:Landroid/app/Activity;

    const-string v4, "bdp_null_orderinfo"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    .line 83
    :cond_20
    :goto_20
    return-void

    .line 61
    :cond_21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->c:Lcom/baidu/bdgame/sdk/obf/ed;

    if-eqz v0, :cond_20

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->c:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/du;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/du;->a:Landroid/app/Activity;

    const-string v3, "bdp_payment_process_paying"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/du$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/du$1;-><init>(Lcom/baidu/bdgame/sdk/obf/du;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/du$1;->start()V

    goto :goto_20
.end method

.method public static a(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/du$a;)V
    .registers 4

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/du$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/du$2;-><init>(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/du$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    const-class v1, Lcom/baidu/bdgame/sdk/obf/du;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 39
    if-eqz p2, :cond_1d

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_null_orderinfo"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_28

    .line 48
    :cond_1d
    :goto_1d
    monitor-exit v1

    return-void

    .line 45
    :cond_1f
    :try_start_1f
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/du;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/du;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V

    .line 46
    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/du;->a()V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_1d

    .line 38
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/du;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/du;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/du;)Lcom/baidu/bdgame/sdk/obf/ed;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/du;->c:Lcom/baidu/bdgame/sdk/obf/ed;

    return-object v0
.end method
