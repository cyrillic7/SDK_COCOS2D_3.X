.class final Lcom/nearme/game/sdk/a$3;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nearme/game/sdk/a;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/a;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v1

    monitor-enter v1

    .line 199
    :try_start_7
    iget-object v0, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 200
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2d

    .line 201
    iget-object v0, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    iget-object v0, v0, Lcom/nearme/game/sdk/a;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    return-void

    .line 200
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v1

    monitor-enter v1

    .line 185
    :try_start_7
    iget-object v0, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Z)Z

    .line 186
    iget-object v0, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 187
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_39

    .line 188
    const-string v0, "GCInternal"

    const-string v1, "init success."

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/high16 v0, -0x80000000

    iget-object v1, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v1}, Lcom/nearme/game/sdk/a;->e(Lcom/nearme/game/sdk/a;)I

    move-result v1

    if-eq v0, v1, :cond_38

    .line 191
    iget-object v0, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    iget-object v1, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v1}, Lcom/nearme/game/sdk/a;->e(Lcom/nearme/game/sdk/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/a;->a(I)V

    .line 192
    iget-object v0, p0, Lcom/nearme/game/sdk/a$3;->a:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->f(Lcom/nearme/game/sdk/a;)I

    .line 194
    :cond_38
    return-void

    .line 187
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method
