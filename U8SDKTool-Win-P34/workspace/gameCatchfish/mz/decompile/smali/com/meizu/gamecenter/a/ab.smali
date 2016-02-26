.class final Lcom/meizu/gamecenter/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/t;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/t;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ab;->a:Lcom/meizu/gamecenter/a/t;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ab;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/t;->e(Lcom/meizu/gamecenter/a/t;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/b/a/a/a;->a(Landroid/app/Activity;)Z

    .line 225
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ab;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/t;->f(Lcom/meizu/gamecenter/a/t;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 226
    :try_start_10
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ab;->a:Lcom/meizu/gamecenter/a/t;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/t;->f(Lcom/meizu/gamecenter/a/t;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 225
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
