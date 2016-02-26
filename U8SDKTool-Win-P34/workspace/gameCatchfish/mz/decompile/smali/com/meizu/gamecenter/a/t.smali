.class public Lcom/meizu/gamecenter/a/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/meizu/gamecenter/sdk/b;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private f:I

.field private g:Z

.field private h:Lcom/meizu/c/a;

.field private i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v4, p0, Lcom/meizu/gamecenter/a/t;->f:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/t;->g:Z

    .line 45
    new-instance v0, Lcom/meizu/gamecenter/a/u;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/u;-><init>(Lcom/meizu/gamecenter/a/t;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/t;->h:Lcom/meizu/c/a;

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/t;->i:Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/meizu/gamecenter/a/t;->a:Landroid/app/Activity;

    .line 59
    iput p2, p0, Lcom/meizu/gamecenter/a/t;->f:I

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/t;->c:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/meizu/gamecenter/a/v;

    invoke-direct {v0}, Lcom/meizu/gamecenter/a/v;-><init>()V

    .line 67
    new-instance v1, Lcom/meizu/gamecenter/sdk/b;

    const-string v2, "com.meizu.gamecenter.gamebar.service"

    const-string v3, "com.meizu.gamecenter.service"

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/meizu/gamecenter/sdk/b;-><init>(Landroid/content/Context;Lcom/meizu/gamecenter/sdk/c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meizu/gamecenter/a/t;->b:Lcom/meizu/gamecenter/sdk/b;

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GameBarPlatformThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/t;->d:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/t;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/t;->e:Landroid/os/Handler;

    .line 74
    :try_start_51
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.meizu.gamecenter.service"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_67

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_6a

    .line 76
    :cond_67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/t;->g:Z
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_6a} :catch_6b

    .line 84
    :cond_6a
    :goto_6a
    return-void

    .line 78
    :catch_6b
    move-exception v0

    .line 81
    const-class v1, Lcom/meizu/gamecenter/a/t;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-boolean v4, p0, Lcom/meizu/gamecenter/a/t;->g:Z

    goto :goto_6a
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/t;)V
    .registers 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/b/a/a/a;->b(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/meizu/gamecenter/a/t;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->c:Landroid/os/Handler;

    new-instance v2, Lcom/meizu/gamecenter/a/ab;

    invoke-direct {v2, p0}, Lcom/meizu/gamecenter/a/ab;-><init>(Lcom/meizu/gamecenter/a/t;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_21

    :try_start_15
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catchall {:try_start_15 .. :try_end_1a} :catchall_21

    :goto_1a
    :try_start_1a
    monitor-exit v1

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    goto :goto_1a

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/t;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 197
    :try_start_0
    const-string v0, "intentBackgroud"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/t;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-lez v1, :cond_24

    const-string v1, "bFullScreem"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1e
    iget-object v1, p0, Lcom/meizu/gamecenter/a/t;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_23
    return-void

    :cond_24
    const-string v1, "bFullScreem"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_1e

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/meizu/gamecenter/a/t;->g:Z

    if-nez v0, :cond_5

    .line 195
    :goto_4
    return-void

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method static synthetic b(Lcom/meizu/gamecenter/a/t;)Lcom/meizu/gamecenter/sdk/b;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->b:Lcom/meizu/gamecenter/sdk/b;

    return-object v0
.end method

.method static synthetic c(Lcom/meizu/gamecenter/a/t;)Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/meizu/gamecenter/a/t;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Lcom/meizu/gamecenter/a/t;)Lcom/meizu/c/a;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->h:Lcom/meizu/c/a;

    return-object v0
.end method

.method static synthetic e(Lcom/meizu/gamecenter/a/t;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/meizu/gamecenter/a/t;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->i:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->b:Lcom/meizu/gamecenter/sdk/b;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/b;->c()Z

    move-result v0

    .line 110
    if-nez v0, :cond_f

    .line 111
    const-string v0, "GameBarPlatformImpl"

    const-string v1, "cant bind gb service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_f
    iget v0, p0, Lcom/meizu/gamecenter/a/t;->f:I

    new-instance v1, Lcom/meizu/gamecenter/a/w;

    invoke-direct {v1, p0, v0}, Lcom/meizu/gamecenter/a/w;-><init>(Lcom/meizu/gamecenter/a/t;I)V

    invoke-direct {p0, v1}, Lcom/meizu/gamecenter/a/t;->a(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/gamecenter/a/t;->b:Lcom/meizu/gamecenter/sdk/b;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/b;->b()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/gamecenter/a/t;->a:Landroid/app/Activity;

    .line 120
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 124
    new-instance v0, Lcom/meizu/gamecenter/a/x;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/x;-><init>(Lcom/meizu/gamecenter/a/t;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/t;->a(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 139
    new-instance v0, Lcom/meizu/gamecenter/a/y;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/y;-><init>(Lcom/meizu/gamecenter/a/t;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/t;->a(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 154
    new-instance v0, Lcom/meizu/gamecenter/a/z;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/z;-><init>(Lcom/meizu/gamecenter/a/t;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/t;->a(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 169
    new-instance v0, Lcom/meizu/gamecenter/a/aa;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/aa;-><init>(Lcom/meizu/gamecenter/a/t;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/t;->a(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method
