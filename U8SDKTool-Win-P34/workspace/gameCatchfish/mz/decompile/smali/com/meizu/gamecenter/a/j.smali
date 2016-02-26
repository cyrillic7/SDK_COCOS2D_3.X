.class public abstract Lcom/meizu/gamecenter/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/meizu/gamecenter/a/s;

.field private c:Lcom/meizu/gamecenter/sdk/b;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/meizu/gamecenter/a/s;)V
    .registers 8

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/meizu/gamecenter/a/j;->a:Landroid/app/Activity;

    .line 23
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/j;->d:Landroid/os/Handler;

    .line 25
    iput-object p2, p0, Lcom/meizu/gamecenter/a/j;->b:Lcom/meizu/gamecenter/a/s;

    .line 26
    iget-object v0, p0, Lcom/meizu/gamecenter/a/j;->a:Landroid/app/Activity;

    if-nez v0, :cond_20

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cant be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_20
    new-instance v0, Lcom/meizu/gamecenter/a/k;

    invoke-direct {v0}, Lcom/meizu/gamecenter/a/k;-><init>()V

    .line 36
    new-instance v1, Lcom/meizu/gamecenter/sdk/b;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/j;->a:Landroid/app/Activity;

    const-string v3, "com.meizu.account.auth.service"

    const-string v4, "com.meizu.gamecenter.service"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/meizu/gamecenter/sdk/b;-><init>(Landroid/content/Context;Lcom/meizu/gamecenter/sdk/c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meizu/gamecenter/a/j;->c:Lcom/meizu/gamecenter/sdk/b;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/j;)Lcom/meizu/gamecenter/sdk/b;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/gamecenter/a/j;->c:Lcom/meizu/gamecenter/sdk/b;

    return-object v0
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/j;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/meizu/gamecenter/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/meizu/gamecenter/a/r;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/r;-><init>(Lcom/meizu/gamecenter/a/j;)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/j;->a(Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/j;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/meizu/gamecenter/a/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/gamecenter/a/j;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(ILjava/lang/String;)V
.end method

.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method protected abstract a(Lcom/meizu/a/d;Lcom/meizu/a/a;)V
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 47
    new-instance v0, Lcom/meizu/gamecenter/a/l;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/l;-><init>(Lcom/meizu/gamecenter/a/j;)V

    .line 104
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method
