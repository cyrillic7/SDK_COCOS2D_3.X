.class public Lcom/tencent/android/tpush/logging/a/a;
.super Lcom/tencent/android/tpush/logging/a/k;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/tencent/android/tpush/logging/a/b;

.field private b:Ljava/io/FileWriter;

.field private c:Ljava/io/File;

.field private d:[C

.field private volatile e:Lcom/tencent/android/tpush/logging/a/g;

.field private volatile f:Lcom/tencent/android/tpush/logging/a/g;

.field private volatile g:Lcom/tencent/android/tpush/logging/a/g;

.field private volatile h:Lcom/tencent/android/tpush/logging/a/g;

.field private volatile i:Z

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(IZLcom/tencent/android/tpush/logging/a/j;Lcom/tencent/android/tpush/logging/a/b;)V
    .registers 8

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/android/tpush/logging/a/k;-><init>(IZLcom/tencent/android/tpush/logging/a/j;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/logging/a/a;->i:Z

    .line 93
    invoke-virtual {p0, p4}, Lcom/tencent/android/tpush/logging/a/a;->a(Lcom/tencent/android/tpush/logging/a/b;)V

    .line 95
    new-instance v0, Lcom/tencent/android/tpush/logging/a/g;

    invoke-direct {v0}, Lcom/tencent/android/tpush/logging/a/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->e:Lcom/tencent/android/tpush/logging/a/g;

    .line 96
    new-instance v0, Lcom/tencent/android/tpush/logging/a/g;

    invoke-direct {v0}, Lcom/tencent/android/tpush/logging/a/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->f:Lcom/tencent/android/tpush/logging/a/g;

    .line 98
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->e:Lcom/tencent/android/tpush/logging/a/g;

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->g:Lcom/tencent/android/tpush/logging/a/g;

    .line 99
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->f:Lcom/tencent/android/tpush/logging/a/g;

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->h:Lcom/tencent/android/tpush/logging/a/g;

    .line 101
    invoke-virtual {p4}, Lcom/tencent/android/tpush/logging/a/b;->f()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->d:[C

    .line 103
    invoke-virtual {p4}, Lcom/tencent/android/tpush/logging/a/b;->b()V

    .line 105
    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/a;->h()Ljava/io/Writer;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p4}, Lcom/tencent/android/tpush/logging/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/android/tpush/logging/a/b;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->j:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_45

    .line 110
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    :cond_45
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 114
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->k:Landroid/os/Handler;

    .line 117
    :cond_5a
    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/a;->f()V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/tencent/android/tpush/logging/a/b;)V
    .registers 5

    .prologue
    .line 73
    const/16 v0, 0x3f

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/android/tpush/logging/a/j;->a:Lcom/tencent/android/tpush/logging/a/j;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/android/tpush/logging/a/a;-><init>(IZLcom/tencent/android/tpush/logging/a/j;Lcom/tencent/android/tpush/logging/a/b;)V

    .line 74
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->k:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 184
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->k:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/a;->c()Lcom/tencent/android/tpush/logging/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/logging/a/b;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    :cond_13
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/a;->j:Landroid/os/HandlerThread;

    if-eq v0, v1, :cond_9

    .line 218
    :cond_8
    :goto_8
    return-void

    .line 198
    :cond_9
    iget-boolean v0, p0, Lcom/tencent/android/tpush/logging/a/a;->i:Z

    if-nez v0, :cond_8

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/logging/a/a;->i:Z

    .line 205
    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/a;->j()V

    .line 208
    :try_start_13
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->h:Lcom/tencent/android/tpush/logging/a/g;

    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/a;->h()Ljava/io/Writer;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/logging/a/a;->d:[C

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/logging/a/g;->a(Ljava/io/Writer;[C)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_27
    .catchall {:try_start_13 .. :try_end_1e} :catchall_2e

    .line 213
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->h:Lcom/tencent/android/tpush/logging/a/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/logging/a/g;->b()V

    .line 217
    :goto_23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/logging/a/a;->i:Z

    goto :goto_8

    .line 209
    :catch_27
    move-exception v0

    .line 213
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->h:Lcom/tencent/android/tpush/logging/a/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/logging/a/g;->b()V

    goto :goto_23

    :catchall_2e
    move-exception v0

    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/a;->h:Lcom/tencent/android/tpush/logging/a/g;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/logging/a/g;->b()V

    throw v0
.end method

.method private h()Ljava/io/Writer;
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 226
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/a;->c()Lcom/tencent/android/tpush/logging/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/logging/a/b;->a()Ljava/io/File;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lcom/tencent/android/tpush/logging/a/a;->c:Ljava/io/File;

    if-eqz v3, :cond_1f

    .line 232
    iget-object v3, p0, Lcom/tencent/android/tpush/logging/a/a;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/tencent/android/tpush/logging/a/a;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1e
    move v0, v1

    .line 238
    :cond_1f
    if-nez v0, :cond_2b

    if-eqz v2, :cond_6b

    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->c:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 240
    :cond_2b
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->c:Ljava/io/File;

    .line 242
    iput-object v2, p0, Lcom/tencent/android/tpush/logging/a/a;->c:Ljava/io/File;

    .line 244
    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/a;->i()V

    .line 246
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x40000

    cmp-long v1, v2, v4

    if-lez v1, :cond_61

    .line 248
    :try_start_3f
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/c/b;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 251
    invoke-static {v0}, Lcom/tencent/android/tpush/logging/c/b;->a(Ljava/io/File;)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_61} :catch_71

    .line 258
    :cond_61
    :goto_61
    :try_start_61
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/a;->c:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->b:Ljava/io/FileWriter;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6b} :catch_6e

    .line 264
    :cond_6b
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->b:Ljava/io/FileWriter;

    :goto_6d
    return-object v0

    .line 259
    :catch_6e
    move-exception v0

    .line 260
    const/4 v0, 0x0

    goto :goto_6d

    .line 252
    :catch_71
    move-exception v0

    goto :goto_61
.end method

.method private i()V
    .registers 2

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->b:Ljava/io/FileWriter;

    if-eqz v0, :cond_e

    .line 277
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 278
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 287
    :cond_e
    :goto_e
    return-void

    .line 284
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private j()V
    .registers 3

    .prologue
    .line 293
    monitor-enter p0

    .line 294
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->g:Lcom/tencent/android/tpush/logging/a/g;

    iget-object v1, p0, Lcom/tencent/android/tpush/logging/a/a;->e:Lcom/tencent/android/tpush/logging/a/g;

    if-ne v0, v1, :cond_11

    .line 295
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->f:Lcom/tencent/android/tpush/logging/a/g;

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->g:Lcom/tencent/android/tpush/logging/a/g;

    .line 296
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->e:Lcom/tencent/android/tpush/logging/a/g;

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->h:Lcom/tencent/android/tpush/logging/a/g;

    .line 301
    :goto_f
    monitor-exit p0

    .line 302
    return-void

    .line 298
    :cond_11
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->e:Lcom/tencent/android/tpush/logging/a/g;

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->g:Lcom/tencent/android/tpush/logging/a/g;

    .line 299
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->f:Lcom/tencent/android/tpush/logging/a/g;

    iput-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->h:Lcom/tencent/android/tpush/logging/a/g;

    goto :goto_f

    .line 301
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/16 v1, 0x400

    .line 125
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 126
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    :cond_f
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    return-void
.end method

.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 17

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/a;->e()Lcom/tencent/android/tpush/logging/a/j;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/android/tpush/logging/a/j;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/logging/a/a;->a(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public a(Lcom/tencent/android/tpush/logging/a/b;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/tencent/android/tpush/logging/a/a;->a:Lcom/tencent/android/tpush/logging/a/b;

    .line 321
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->g:Lcom/tencent/android/tpush/logging/a/g;

    invoke-virtual {v0, p1}, Lcom/tencent/android/tpush/logging/a/g;->a(Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->g:Lcom/tencent/android/tpush/logging/a/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/logging/a/g;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/a;->c()Lcom/tencent/android/tpush/logging/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/logging/a/b;->f()I

    move-result v1

    if-lt v0, v1, :cond_18

    .line 161
    invoke-virtual {p0}, Lcom/tencent/android/tpush/logging/a/a;->a()V

    .line 163
    :cond_18
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/a;->i()V

    .line 143
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 144
    return-void
.end method

.method public c()Lcom/tencent/android/tpush/logging/a/b;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tencent/android/tpush/logging/a/a;->a:Lcom/tencent/android/tpush/logging/a/b;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 176
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 169
    :pswitch_7
    invoke-direct {p0}, Lcom/tencent/android/tpush/logging/a/a;->g()V

    goto :goto_5

    .line 167
    nop

    :pswitch_data_c
    .packed-switch 0x400
        :pswitch_7
    .end packed-switch
.end method
