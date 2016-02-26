.class public abstract Lcom/baidu/platformsdk/LoginWatchActivity;
.super Lcom/baidu/platformsdk/BaseActivity;
.source "SourceFile"


# instance fields
.field protected d:Lcom/baidu/platformsdk/LoginWatcher;

.field protected e:Lcom/baidu/bdgame/sdk/obf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/platformsdk/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/LoginWatchActivity;)V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->e()V

    return-void
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->d:Lcom/baidu/platformsdk/LoginWatcher;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->e:Lcom/baidu/bdgame/sdk/obf/n;

    if-nez v0, :cond_9

    .line 109
    :cond_8
    :goto_8
    return-void

    .line 104
    :cond_9
    if-eqz p1, :cond_13

    .line 105
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->d:Lcom/baidu/platformsdk/LoginWatcher;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->e:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/LoginWatcher;->a(Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_8

    .line 107
    :cond_13
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->d:Lcom/baidu/platformsdk/LoginWatcher;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->e:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/LoginWatcher;->b(Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_8
.end method

.method private b()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/LoginWatchActivity;->a(Z)V

    .line 49
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->d:Lcom/baidu/platformsdk/LoginWatcher;

    if-eqz v0, :cond_10

    .line 50
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->d:Lcom/baidu/platformsdk/LoginWatcher;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/LoginWatcher;->a()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->d:Lcom/baidu/platformsdk/LoginWatcher;

    .line 53
    :cond_10
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/LoginWatchActivity;)V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->d()V

    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-class v1, Lcom/baidu/platformsdk/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 81
    :goto_14
    return-void

    .line 65
    :cond_15
    new-instance v0, Lcom/baidu/platformsdk/LoginWatcher;

    invoke-direct {v0, p0}, Lcom/baidu/platformsdk/LoginWatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->d:Lcom/baidu/platformsdk/LoginWatcher;

    .line 66
    new-instance v0, Lcom/baidu/platformsdk/LoginWatchActivity$1;

    invoke-direct {v0, p0}, Lcom/baidu/platformsdk/LoginWatchActivity$1;-><init>(Lcom/baidu/platformsdk/LoginWatchActivity;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginWatchActivity;->e:Lcom/baidu/bdgame/sdk/obf/n;

    goto :goto_14
.end method

.method private d()V
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tips_passport_invalid_passport"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->a()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 87
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->a()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->e()V

    .line 91
    :goto_16
    return-void

    .line 89
    :cond_17
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->finish()V

    goto :goto_16
.end method

.method private e()V
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->a()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 95
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->a()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->e()V

    .line 99
    :goto_d
    return-void

    .line 97
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->finish()V

    goto :goto_d
.end method


# virtual methods
.method protected abstract a()Lcom/baidu/bdgame/sdk/obf/ce;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->c()V

    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/platformsdk/LoginWatchActivity;->a(Z)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/baidu/platformsdk/BaseActivity;->onDestroy()V

    .line 43
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->b()V

    .line 44
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/baidu/platformsdk/BaseActivity;->onPause()V

    .line 34
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->b()V

    .line 37
    :cond_c
    return-void
.end method
