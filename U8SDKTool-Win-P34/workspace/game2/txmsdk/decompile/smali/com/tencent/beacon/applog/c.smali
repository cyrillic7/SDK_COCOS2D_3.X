.class public final Lcom/tencent/beacon/applog/c;
.super Lcom/tencent/beacon/upload/a;
.source "ProGuard"


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/tencent/beacon/c/a/b;

.field private g:Lcom/tencent/beacon/b/a;

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/beacon/b/a;Z)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x5

    invoke-direct {p0, p1, v2, v0}, Lcom/tencent/beacon/upload/a;-><init>(Landroid/content/Context;II)V

    .line 21
    iput-object v1, p0, Lcom/tencent/beacon/applog/c;->e:Landroid/content/Context;

    .line 22
    iput-object v1, p0, Lcom/tencent/beacon/applog/c;->f:Lcom/tencent/beacon/c/a/b;

    .line 23
    iput-object v1, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/beacon/applog/c;->h:J

    .line 25
    iput-boolean v2, p0, Lcom/tencent/beacon/applog/c;->i:Z

    .line 31
    iput-object p1, p0, Lcom/tencent/beacon/applog/c;->e:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    .line 33
    iput-boolean p3, p0, Lcom/tencent/beacon/applog/c;->i:Z

    .line 34
    return-void
.end method

.method private declared-synchronized a(Lcom/tencent/beacon/c/a/b;)V
    .registers 3

    .prologue
    .line 163
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/tencent/beacon/applog/c;->f:Lcom/tencent/beacon/c/a/b;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 6

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/beacon/applog/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/e/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 150
    iget-object v0, p0, Lcom/tencent/beacon/applog/c;->c:Landroid/content/Context;

    const-string v1, "key_initsdkdate"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/tencent/beacon/applog/c;->c:Landroid/content/Context;

    const-string v2, "app_log_consume"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {}, Lcom/tencent/beacon/b/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 154
    iget-wide v0, p0, Lcom/tencent/beacon/applog/c;->h:J

    .line 158
    :goto_29
    iget-object v2, p0, Lcom/tencent/beacon/applog/c;->c:Landroid/content/Context;

    const-string v3, "app_log_consume"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/tencent/beacon/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_47

    .line 160
    :cond_3d
    monitor-exit p0

    return-void

    .line 156
    :cond_3f
    :try_start_3f
    iget-wide v2, p0, Lcom/tencent/beacon/applog/c;->h:J

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_47

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_29

    .line 149
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/tencent/beacon/c/a/b;
    .registers 7

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    const-string v0, "AppLogUploadDatas.getUploadRequestPackage() start}"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/beacon/applog/c;->f:Lcom/tencent/beacon/c/a/b;

    if-eqz v0, :cond_11

    .line 45
    iget-object v0, p0, Lcom/tencent/beacon/applog/c;->f:Lcom/tencent/beacon/c/a/b;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_5b

    .line 72
    :goto_f
    monitor-exit p0

    return-object v0

    .line 49
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v3

    .line 50
    const/4 v1, 0x1

    .line 51
    const/4 v2, 0x2

    .line 52
    const-string v0, "*^@K#K@!"

    .line 53
    if-eqz v3, :cond_27

    .line 54
    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->i()B

    move-result v1

    .line 55
    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->j()B

    move-result v2

    .line 56
    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->k()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_27
    iget-object v3, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    invoke-virtual {v3}, Lcom/tencent/beacon/b/a;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 59
    invoke-static {v3, v2, v1, v0}, Lcom/tencent/beacon/b/a;->a([BIILjava/lang/String;)[B

    move-result-object v0

    .line 61
    if-nez v0, :cond_43

    .line 62
    const-string v0, "encodeDatasByZipAndEncry failed!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_f

    .line 65
    :cond_43
    array-length v3, v0

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/tencent/beacon/applog/c;->h:J

    .line 66
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v3

    .line 67
    iget v4, p0, Lcom/tencent/beacon/applog/c;->a:I

    invoke-static {v4, v3, v0, v2, v1}, Lcom/tencent/beacon/b/a;->a(ILcom/tencent/beacon/a/e;[BII)Lcom/tencent/beacon/c/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/applog/c;->f:Lcom/tencent/beacon/c/a/b;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_53} :catch_56
    .catchall {:try_start_11 .. :try_end_53} :catchall_5b

    .line 72
    :goto_53
    :try_start_53
    iget-object v0, p0, Lcom/tencent/beacon/applog/c;->f:Lcom/tencent/beacon/c/a/b;

    goto :goto_f

    .line 69
    :catch_56
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_53

    .line 43
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-direct {p0, v5}, Lcom/tencent/beacon/applog/c;->a(Lcom/tencent/beacon/c/a/b;)V

    .line 81
    iget-boolean v0, p0, Lcom/tencent/beacon/applog/c;->i:Z

    if-eqz v0, :cond_c9

    .line 83
    if-nez p1, :cond_c4

    .line 84
    iget-object v0, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    if-nez v0, :cond_f

    .line 145
    :cond_e
    :goto_e
    return-void

    .line 86
    :cond_f
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/beacon/applog/c;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/appLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 90
    :cond_3a
    iget-object v1, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    invoke-virtual {v1}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    invoke-virtual {v2}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 91
    :cond_50
    iget-object v1, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/b/a;->d(Ljava/lang/String;)V

    .line 97
    :cond_74
    invoke-static {}, Lcom/tencent/beacon/a/b/e;->a()Lcom/tencent/beacon/a/b/e;

    move-result-object v3

    .line 98
    const/4 v1, 0x1

    .line 99
    const/4 v2, 0x2

    .line 100
    const-string v0, "*^@K#K@!"

    .line 101
    if-eqz v3, :cond_8a

    .line 102
    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->i()B

    move-result v1

    .line 103
    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->j()B

    move-result v2

    .line 104
    invoke-virtual {v3}, Lcom/tencent/beacon/a/b/e;->k()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_8a
    :try_start_8a
    iget-object v3, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    invoke-virtual {v3}, Lcom/tencent/beacon/b/a;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 109
    invoke-static {v3, v2, v1, v0}, Lcom/tencent/beacon/b/a;->a([BIILjava/lang/String;)[B

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    invoke-virtual {v1}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/beacon/applog/a;->a([BLjava/lang/String;)Z

    move-result v0

    .line 112
    if-eqz v0, :cond_b9

    .line 114
    iget-object v0, p0, Lcom/tencent/beacon/applog/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v2}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;Ljava/util/List;)I
    :try_end_b5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8a .. :try_end_b5} :catch_bf

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b9

    .line 121
    :cond_b9
    :goto_b9
    iput-object v5, p0, Lcom/tencent/beacon/applog/c;->f:Lcom/tencent/beacon/c/a/b;

    .line 122
    iput-object v5, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    goto/16 :goto_e

    .line 116
    :catch_bf
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_b9

    .line 124
    :cond_c4
    invoke-direct {p0}, Lcom/tencent/beacon/applog/c;->f()V

    goto/16 :goto_e

    .line 128
    :cond_c9
    if-eqz p1, :cond_e

    .line 129
    iget-object v0, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    if-eqz v0, :cond_e

    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    invoke-virtual {v1}, Lcom/tencent/beacon/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/tencent/beacon/applog/c;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/beacon/applog/a;->b(Landroid/content/Context;Ljava/util/List;)I

    .line 139
    :cond_f5
    invoke-direct {p0}, Lcom/tencent/beacon/applog/c;->f()V

    .line 140
    iput-object v5, p0, Lcom/tencent/beacon/applog/c;->f:Lcom/tencent/beacon/c/a/b;

    .line 141
    iput-object v5, p0, Lcom/tencent/beacon/applog/c;->g:Lcom/tencent/beacon/b/a;

    goto/16 :goto_e
.end method
