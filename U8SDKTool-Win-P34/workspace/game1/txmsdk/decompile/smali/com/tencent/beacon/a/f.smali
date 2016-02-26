.class public final Lcom/tencent/beacon/a/f;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/a/f;->b:Z

    .line 81
    new-instance v0, Lcom/tencent/beacon/a/f$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/a/f$1;-><init>(Lcom/tencent/beacon/a/f;)V

    iput-object v0, p0, Lcom/tencent/beacon/a/f;->c:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Lcom/tencent/beacon/a/f$2;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/a/f$2;-><init>(Lcom/tencent/beacon/a/f;)V

    iput-object v0, p0, Lcom/tencent/beacon/a/f;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 106
    if-nez p1, :cond_b

    .line 107
    const-string v0, " Context is null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_a
    :goto_a
    return-void

    .line 110
    :cond_b
    iget-boolean v0, p0, Lcom/tencent/beacon/a/f;->b:Z

    if-nez v0, :cond_a

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/a/f;->b:Z

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_a
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 31
    .line 33
    if-nez p1, :cond_c

    .line 34
    :try_start_3
    const-string v0, " onReceive context is null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_b
    :goto_b
    return-void

    .line 37
    :cond_c
    iget-object v0, p0, Lcom/tencent/beacon/a/f;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 38
    iput-object p1, p0, Lcom/tencent/beacon/a/f;->a:Landroid/content/Context;

    .line 40
    :cond_12
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 41
    if-nez v0, :cond_2a

    .line 42
    const-string v0, " onReceive ConnectivityManager is null!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_b

    .line 76
    :catch_25
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 45
    :cond_2a
    const/4 v2, 0x1

    :try_start_2b
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 47
    if-eqz v2, :cond_9d

    .line 48
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    move-object v2, v0

    .line 50
    :goto_3b
    if-eqz v3, :cond_9b

    .line 51
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 54
    :goto_41
    if-nez v2, :cond_45

    if-eqz v0, :cond_6b

    .line 55
    :cond_45
    invoke-static {p1}, Lcom/tencent/beacon/a/b/c;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/b/c;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/tencent/beacon/a/b/c;->a()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 57
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/beacon/event/p;->j()I

    move-result v3

    if-eqz v3, :cond_6b

    .line 58
    invoke-virtual {v1}, Lcom/tencent/beacon/a/b/c;->h()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6b

    .line 59
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/beacon/a/b/c;->c()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 65
    :cond_6b
    if-eqz v2, :cond_81

    if-eqz v0, :cond_81

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_81

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v0, :cond_81

    .line 69
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/a/f;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 70
    :cond_81
    if-eqz v2, :cond_b

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_b

    .line 72
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/a/f;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 74
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/a/f;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_99} :catch_25

    goto/16 :goto_b

    :cond_9b
    move-object v0, v1

    goto :goto_41

    :cond_9d
    move-object v2, v1

    goto :goto_3b
.end method
