.class final Lcom/nearme/game/sdk/a$4;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/a;->a(Landroid/content/Context;ILcom/nearme/game/sdk/callback/ApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/nearme/game/sdk/callback/ApiCallback;

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Lcom/nearme/game/sdk/a;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/a;ILcom/nearme/game/sdk/callback/ApiCallback;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 245
    iput-object p1, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    iput p2, p0, Lcom/nearme/game/sdk/a$4;->a:I

    iput-object p3, p0, Lcom/nearme/game/sdk/a$4;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    iput-object p4, p0, Lcom/nearme/game/sdk/a$4;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    iget v1, p0, Lcom/nearme/game/sdk/a$4;->a:I

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/a;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    iget-object v0, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-static {}, Lcom/nearme/game/sdk/a;->b()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/nearme/game/sdk/a$4;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 252
    iget-object v0, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    iget-object v0, v0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    invoke-static {v2}, Lcom/nearme/game/sdk/a;->h(Lcom/nearme/game/sdk/a;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :try_start_2f
    iget-object v0, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v2

    monitor-enter v2
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_36} :catch_79

    .line 255
    :try_start_36
    iget-object v0, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 256
    iget-object v0, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 258
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_76

    .line 262
    :goto_48
    iget-object v0, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed, for init not accomplished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/nearme/game/sdk/a$4;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v1, :cond_70

    .line 265
    iget-object v1, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    iget-object v2, p0, Lcom/nearme/game/sdk/a$4;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-static {v1, v2, v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/callback/ApiCallback;Ljava/lang/String;)V

    .line 267
    :cond_70
    const-string v1, "GCInternal"

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_75
    return-void

    .line 258
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    :try_start_78
    throw v0
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_79} :catch_79

    .line 260
    :catch_79
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_48

    .line 271
    :cond_7e
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nearme/game/sdk/a$4;->c:Landroid/content/Context;

    const-class v3, Lcom/nearme/game/sdk/component/proxy/ProxyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v2, "PLUGIN_NAME"

    const-string v3, "oppo_game_service.so"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "LAUNCH_COMPONENT"

    invoke-static {v1}, Lcom/nearme/game/sdk/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/nearme/game/sdk/a$4;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v1, :cond_cd

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/nearme/game/sdk/a$4;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 277
    const-string v1, "key_seq"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 278
    const-string v1, "key_request_code"

    iget v4, p0, Lcom/nearme/game/sdk/a$4;->a:I

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v1, "key_messager"

    iget-object v4, p0, Lcom/nearme/game/sdk/a$4;->d:Lcom/nearme/game/sdk/a;

    invoke-static {v4}, Lcom/nearme/game/sdk/a;->i(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    invoke-static {}, Lcom/nearme/game/sdk/a;->c()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_cd

    .line 281
    invoke-static {}, Lcom/nearme/game/sdk/a;->c()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v1

    iget-object v4, p0, Lcom/nearme/game/sdk/a$4;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 284
    :cond_cd
    iget-object v1, p0, Lcom/nearme/game/sdk/a$4;->c:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Service;

    if-eqz v1, :cond_d8

    .line 285
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    :cond_d8
    iget-object v1, p0, Lcom/nearme/game/sdk/a$4;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_75
.end method
