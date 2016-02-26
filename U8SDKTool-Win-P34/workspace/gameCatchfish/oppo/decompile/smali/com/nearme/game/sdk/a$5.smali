.class final Lcom/nearme/game/sdk/a$5;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nearme/game/sdk/common/model/ApiRequest;

.field private synthetic b:Lcom/nearme/game/sdk/callback/ApiCallback;

.field private synthetic c:Lcom/nearme/game/sdk/a;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/common/model/ApiRequest;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 4

    .prologue
    .line 305
    iput-object p1, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iput-object p2, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iput-object p3, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 308
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "begin send request "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v3, v3, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v1, 0x1

    .line 310
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 312
    :try_start_22
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;)[B

    move-result-object v3

    monitor-enter v3
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_cb

    .line 313
    :try_start_29
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_49

    .line 314
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v0, v0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v4}, Lcom/nearme/game/sdk/a;->k(Lcom/nearme/game/sdk/a;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 317
    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_c8

    .line 322
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_15f

    .line 324
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-static {}, Lcom/nearme/game/sdk/a;->b()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v3, v3, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 325
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v0, v0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v3}, Lcom/nearme/game/sdk/a;->h(Lcom/nearme/game/sdk/a;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    :try_start_7b
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v3

    monitor-enter v3
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_82} :catch_d4

    .line 328
    :try_start_82
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 329
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->d(Lcom/nearme/game/sdk/a;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 331
    :cond_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_82 .. :try_end_94} :catchall_d1

    .line 335
    :goto_94
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->g(Lcom/nearme/game/sdk/a;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 336
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed send request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v2, v2, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for init not accomplished."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_c7

    .line 339
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v1, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    const-string v2, "send request failed for init not accomplished."

    invoke-static {v0, v1, v2}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/callback/ApiCallback;Ljava/lang/String;)V

    .line 379
    :cond_c7
    :goto_c7
    return-void

    .line 317
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v0
    :try_end_cb
    .catch Ljava/lang/InterruptedException; {:try_start_ca .. :try_end_cb} :catch_cb

    .line 319
    :catch_cb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4a

    .line 331
    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw v0
    :try_end_d4
    .catch Ljava/lang/InterruptedException; {:try_start_d3 .. :try_end_d4} :catch_d4

    .line 333
    :catch_d4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_94

    .line 345
    :cond_d9
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_fa

    .line 346
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/nearme/game/sdk/common/model/ApiRequest;->seq:J

    .line 347
    invoke-static {}, Lcom/nearme/game/sdk/a;->c()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget-wide v4, v3, Lcom/nearme/game/sdk/common/model/ApiRequest;->seq:J

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-virtual {v0, v4, v5, v3}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 349
    :cond_fa
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 350
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 351
    const-string v4, "requst"

    iget-object v5, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 352
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v3}, Lcom/nearme/game/sdk/a;->i(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 355
    :try_start_114
    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v3}, Lcom/nearme/game/sdk/a;->j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11d
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_11d} :catch_139

    move v0, v1

    .line 376
    :goto_11e
    if-eqz v0, :cond_c7

    .line 377
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish send request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v2, v2, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    .line 356
    :catch_139
    move-exception v0

    .line 357
    const-string v1, "GCInternal"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_150

    .line 359
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v1, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    const-string v3, "failed for RemoteException."

    invoke-static {v0, v1, v3}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/callback/ApiCallback;Ljava/lang/String;)V

    .line 363
    :cond_150
    :try_start_150
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    invoke-static {v0}, Lcom/nearme/game/sdk/a;->l(Lcom/nearme/game/sdk/a;)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_155} :catch_157

    :goto_155
    move v0, v2

    .line 369
    goto :goto_11e

    .line 365
    :catch_157
    move-exception v0

    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    goto :goto_155

    .line 370
    :cond_15f
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed send request "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nearme/game/sdk/a$5;->a:Lcom/nearme/game/sdk/common/model/ApiRequest;

    iget v3, v3, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for service is null."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_18a

    .line 372
    iget-object v0, p0, Lcom/nearme/game/sdk/a$5;->c:Lcom/nearme/game/sdk/a;

    iget-object v1, p0, Lcom/nearme/game/sdk/a$5;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    const-string v3, "failed for service is null."

    invoke-static {v0, v1, v3}, Lcom/nearme/game/sdk/a;->a(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/callback/ApiCallback;Ljava/lang/String;)V

    :cond_18a
    move v0, v2

    .line 374
    goto :goto_11e
.end method
