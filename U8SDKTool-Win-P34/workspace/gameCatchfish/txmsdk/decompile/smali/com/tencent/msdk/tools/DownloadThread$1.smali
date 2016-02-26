.class final Lcom/tencent/msdk/tools/DownloadThread$1;
.super Landroid/os/Handler;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/tools/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 179
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 180
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/tencent/msdk/tools/DownloadItem;

    invoke-direct {v1}, Lcom/tencent/msdk/tools/DownloadItem;-><init>()V

    .line 181
    .local v1, "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_d6

    .line 235
    :goto_10
    return-void

    .line 183
    :pswitch_11
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 184
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->needDownloadLists:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$100()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 186
    :cond_22
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->needDownloadLists:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$100()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    check-cast v1, Lcom/tencent/msdk/tools/DownloadItem;

    .line 187
    .restart local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 188
    new-instance v2, Lcom/tencent/msdk/tools/DownloadThread;

    invoke-direct {v2, v1}, Lcom/tencent/msdk/tools/DownloadThread;-><init>(Lcom/tencent/msdk/tools/DownloadItem;)V

    .line 189
    .local v2, "tempDownloadThread":Lcom/tencent/msdk/tools/DownloadThread;
    # invokes: Lcom/tencent/msdk/tools/DownloadThread;->isStarted()Z
    invoke-static {v2}, Lcom/tencent/msdk/tools/DownloadThread;->access$300(Lcom/tencent/msdk/tools/DownloadThread;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 190
    invoke-virtual {v2}, Lcom/tencent/msdk/tools/DownloadThread;->start()V

    .line 192
    :cond_44
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v2    # "tempDownloadThread":Lcom/tencent/msdk/tools/DownloadThread;
    :cond_4b
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 210
    :goto_55
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_10

    .line 197
    :cond_5d
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 199
    const-string v3, "no new task"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_55

    .line 202
    :cond_6d
    # invokes: Lcom/tencent/msdk/tools/DownloadThread;->isFinished()Z
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$400()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 203
    const-string v3, "all task finished have been notified"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_55

    .line 205
    :cond_79
    # invokes: Lcom/tencent/msdk/tools/DownloadThread;->setFinished(Z)V
    invoke-static {v4}, Lcom/tencent/msdk/tools/DownloadThread;->access$500(Z)V

    .line 206
    const-string v3, "all task finished"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_55

    .line 213
    :pswitch_82
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    check-cast v1, Lcom/tencent/msdk/tools/DownloadItem;

    .line 215
    .restart local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 217
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 219
    :cond_9e
    iput v4, v0, Landroid/os/Message;->what:I

    .line 220
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/tools/DownloadThread$1;->sendMessage(Landroid/os/Message;)Z

    .line 221
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_10

    .line 224
    :pswitch_ac
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 225
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    check-cast v1, Lcom/tencent/msdk/tools/DownloadItem;

    .line 226
    .restart local v1    # "tempDownloadItem":Lcom/tencent/msdk/tools/DownloadItem;
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 228
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->downloadList:Ljava/util/Queue;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$200()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 230
    :cond_c8
    iput v4, v0, Landroid/os/Message;->what:I

    .line 231
    invoke-virtual {p0, v0}, Lcom/tencent/msdk/tools/DownloadThread$1;->sendMessage(Landroid/os/Message;)Z

    .line 232
    # getter for: Lcom/tencent/msdk/tools/DownloadThread;->sLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {}, Lcom/tencent/msdk/tools/DownloadThread;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_10

    .line 181
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_11
        :pswitch_82
        :pswitch_ac
    .end packed-switch
.end method
