.class final Lcom/meizu/gamecenter/a/av;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/ProgressDialog;

.field private c:Lcom/meizu/gamecenter/a/ah;

.field private d:Z

.field private synthetic e:Lcom/meizu/gamecenter/a/ai;


# direct methods
.method protected constructor <init>(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .registers 6

    .prologue
    .line 471
    iput-object p1, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/av;->d:Z

    .line 472
    iput-object p2, p0, Lcom/meizu/gamecenter/a/av;->a:Ljava/lang/String;

    .line 473
    iput-object p3, p0, Lcom/meizu/gamecenter/a/av;->b:Landroid/app/ProgressDialog;

    .line 474
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/meizu/gamecenter/a/aw;

    invoke-direct {v1, p0}, Lcom/meizu/gamecenter/a/aw;-><init>(Lcom/meizu/gamecenter/a/av;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 483
    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/av;)V
    .registers 2

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/av;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/meizu/gamecenter/a/av;)Lcom/meizu/gamecenter/a/ah;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->c:Lcom/meizu/gamecenter/a/ah;

    return-object v0
.end method

.method static synthetic c(Lcom/meizu/gamecenter/a/av;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/meizu/gamecenter/a/av;)Lcom/meizu/gamecenter/a/ai;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    new-instance v3, Lcom/meizu/gamecenter/a/ax;

    invoke-direct {v3, p0}, Lcom/meizu/gamecenter/a/ax;-><init>(Lcom/meizu/gamecenter/a/av;)V

    invoke-static {v0, v3}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/meizu/gamecenter/a/av;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    iget-object v5, p0, Lcom/meizu/gamecenter/a/av;->a:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cb

    iget-boolean v4, p0, Lcom/meizu/gamecenter/a/av;->d:Z

    if-nez v4, :cond_c6

    iget-object v4, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v4, v0}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    move v0, v1

    :goto_4a
    if-nez v0, :cond_ba

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "com.meizu.gamecenter.service"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_ec

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_ec

    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    new-instance v3, Lcom/meizu/gamecenter/a/ay;

    invoke-direct {v3, p0}, Lcom/meizu/gamecenter/a/ay;-><init>(Lcom/meizu/gamecenter/a/av;)V

    invoke-static {v0, v3}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/Runnable;)V

    move v0, v2

    :goto_7b
    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_ce

    move v0, v1

    :goto_9a
    if-eqz v0, :cond_e1

    new-instance v0, Lcom/meizu/gamecenter/a/ah;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/meizu/gamecenter/a/ah;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/av;->c:Lcom/meizu/gamecenter/a/ah;

    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->c:Lcom/meizu/gamecenter/a/ah;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/ah;->b()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/gamecenter/a/av;->d:Z

    if-nez v1, :cond_db

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0, v4}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    :cond_ba
    :goto_ba
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    new-instance v1, Lcom/meizu/gamecenter/a/bb;

    invoke-direct {v1, p0}, Lcom/meizu/gamecenter/a/bb;-><init>(Lcom/meizu/gamecenter/a/av;)V

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0

    :cond_c6
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0, v2}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Z)V

    :cond_cb
    move v0, v2

    goto/16 :goto_4a

    :cond_ce
    move v0, v2

    goto :goto_9a

    :cond_d0
    iget-object v1, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    new-instance v2, Lcom/meizu/gamecenter/a/az;

    invoke-direct {v2, p0, v0}, Lcom/meizu/gamecenter/a/az;-><init>(Lcom/meizu/gamecenter/a/av;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/Runnable;)V

    goto :goto_ba

    :cond_db
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0, v2}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Z)V

    goto :goto_ba

    :cond_e1
    iget-object v0, p0, Lcom/meizu/gamecenter/a/av;->e:Lcom/meizu/gamecenter/a/ai;

    new-instance v1, Lcom/meizu/gamecenter/a/ba;

    invoke-direct {v1, p0}, Lcom/meizu/gamecenter/a/ba;-><init>(Lcom/meizu/gamecenter/a/av;)V

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/Runnable;)V

    goto :goto_ba

    :cond_ec
    move v0, v1

    goto :goto_7b
.end method
