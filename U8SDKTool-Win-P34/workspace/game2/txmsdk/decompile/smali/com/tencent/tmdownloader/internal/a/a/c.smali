.class public Lcom/tencent/tmdownloader/internal/a/a/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/a/l;


# instance fields
.field protected a:Ljava/util/ArrayList;

.field protected b:Lcom/tencent/tmdownloader/internal/a/a/a;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    .line 40
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 42
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_1a
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I
    .registers 15

    .prologue
    .line 122
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 124
    :cond_4
    const/4 v0, 0x3

    .line 188
    :goto_5
    return v0

    .line 127
    :cond_6
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/a/b;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_51

    .line 132
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",taskItem is not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tmdownloader/internal/a/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I

    move-result v0

    goto :goto_5

    .line 137
    :cond_51
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",taskItem is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 140
    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x0

    .line 144
    new-instance v3, Lcom/tencent/tmdownloader/internal/a/a/b;

    invoke-direct {v3, p1, p2}, Lcom/tencent/tmdownloader/internal/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v4, 0x1

    iput v4, v3, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    .line 146
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v4, "ServiceDownloadTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clientKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",add newTask"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v1, v0

    :goto_a6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/a/b;

    .line 153
    iget v5, v0, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_bd

    .line 155
    const/4 v1, 0x1

    move v0, v1

    move v1, v2

    :goto_ba
    move v2, v1

    move v1, v0

    .line 161
    goto :goto_a6

    .line 157
    :cond_bd
    iget v0, v0, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_137

    .line 159
    const/4 v2, 0x1

    move v0, v1

    move v1, v2

    goto :goto_ba

    .line 164
    :cond_c6
    const/4 v0, 0x1

    if-eq v1, v0, :cond_cc

    const/4 v0, 0x1

    if-ne v2, v0, :cond_109

    .line 167
    :cond_cc
    const/4 v0, 0x1

    if-ne v1, v0, :cond_102

    .line 169
    const/4 v0, 0x2

    iput v0, v3, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    .line 177
    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    if-eqz v0, :cond_e1

    .line 179
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    iget v3, v3, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/tencent/tmdownloader/internal/a/a/a;->OnDownloadStateChanged(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 181
    :cond_e1
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newTask is downloading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 171
    :cond_102
    const/4 v0, 0x1

    if-ne v2, v0, :cond_d2

    .line 173
    const/4 v0, 0x1

    iput v0, v3, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    goto :goto_d2

    .line 186
    :cond_109
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",start newTask download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tmdownloader/internal/a/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I

    move-result v0

    goto/16 :goto_5

    :cond_137
    move v0, v1

    move v1, v2

    goto :goto_ba
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;
    .registers 12

    .prologue
    const/4 v3, 0x4

    .line 55
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/tmdownloader/internal/a/a;->c(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v8

    .line 56
    if-eqz v8, :cond_21

    .line 59
    iget-object v1, v8, Lcom/tencent/tmdownloader/internal/a/d;->b:Ljava/lang/String;

    .line 60
    iget-object v0, v8, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    iget v3, v8, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    .line 63
    iget-wide v4, v8, Lcom/tencent/tmdownloader/internal/a/d;->j:J

    .line 64
    iget-wide v6, v8, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    .line 66
    new-instance v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    iget-object v8, v8, Lcom/tencent/tmdownloader/internal/a/d;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    .line 107
    :goto_20
    return-object v0

    .line 71
    :cond_21
    const-string v0, "application/vnd.android.package-archive"

    invoke-static {p2, v0}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 73
    const-string v8, "application/vnd.android.package-archive"

    .line 74
    invoke-static {p2, v8}, Lcom/tencent/tmdownloader/internal/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v1, Lcom/tencent/tmdownloader/internal/b/b;

    invoke-direct {v1, v0, v0}, Lcom/tencent/tmdownloader/internal/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/b;->b()J

    move-result-wide v4

    .line 80
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/b;->b()J

    move-result-wide v6

    .line 83
    new-instance v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    goto :goto_20

    .line 88
    :cond_47
    const-string v0, "application/tm.android.apkdiff"

    invoke-static {p2, v0}, Lcom/tencent/tmdownloader/internal/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 90
    const-string v8, "application/tm.android.apkdiff"

    .line 91
    invoke-static {p2, v8}, Lcom/tencent/tmdownloader/internal/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    new-instance v1, Lcom/tencent/tmdownloader/internal/b/b;

    invoke-direct {v1, v0, v0}, Lcom/tencent/tmdownloader/internal/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/b;->b()J

    move-result-wide v4

    .line 97
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/b;->b()J

    move-result-wide v6

    .line 100
    new-instance v0, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    goto :goto_20

    .line 105
    :cond_6d
    invoke-virtual {p0, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->b(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    goto :goto_20
.end method

.method protected declared-synchronized a(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6

    .prologue
    .line 320
    monitor-enter p0

    if-nez p1, :cond_6

    .line 322
    const/4 v0, 0x0

    .line 333
    :goto_4
    monitor-exit p0

    return-object v0

    .line 325
    :cond_6
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/a/b;

    .line 328
    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 330
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_29

    goto :goto_11

    .line 320
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2c
    move-object v0, v1

    .line 333
    goto :goto_4
.end method

.method public a()V
    .registers 2

    .prologue
    .line 280
    if-eqz p0, :cond_9

    .line 282
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmdownloader/internal/a/a;->a(Lcom/tencent/tmdownloader/internal/a/l;)V

    .line 284
    :cond_9
    return-void
.end method

.method public a(Lcom/tencent/tmdownloader/internal/a/a/a;)V
    .registers 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    .line 363
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;)V
    .registers 12

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    if-nez v0, :cond_5

    .line 393
    :cond_4
    return-void

    .line 374
    :cond_5
    invoke-virtual {p0, p1}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmdownloader/internal/a/a/b;

    .line 379
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/tmdownloader/internal/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",errorcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iput p2, v1, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    .line 390
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/a/b;->a:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/tmdownloader/internal/a/a/a;->OnDownloadStateChanged(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_15
.end method

.method public a(Ljava/lang/String;JJ)V
    .registers 24

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    if-nez v2, :cond_7

    .line 418
    :cond_6
    return-void

    .line 403
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 404
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 408
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmdownloader/internal/a/a/b;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 410
    invoke-virtual/range {v3 .. v9}, Lcom/tencent/tmdownloader/internal/a/a/b;->a(JJJ)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    .line 412
    const-string v4, "ServiceDownloadTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clientKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/tencent/tmdownloader/internal/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",receivedLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    iget-object v12, v3, Lcom/tencent/tmdownloader/internal/a/a/b;->a:Ljava/lang/String;

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-interface/range {v11 .. v17}, Lcom/tencent/tmdownloader/internal/a/a/a;->OnDownloadProgressChanged(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_1b
.end method

.method public b()V
    .registers 2

    .prologue
    .line 291
    if-eqz p0, :cond_9

    .line 293
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmdownloader/internal/a/a;->b(Lcom/tencent/tmdownloader/internal/a/l;)V

    .line 295
    :cond_9
    return-void
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 339
    monitor-enter p0

    if-nez p1, :cond_5

    .line 358
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 344
    :cond_5
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/a/b;

    .line 347
    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 349
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    goto :goto_10

    .line 339
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 354
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_28

    goto :goto_3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 201
    const-string v0, "ServiceDownloadTaskManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz p1, :cond_b

    if-nez p2, :cond_c

    .line 238
    :cond_b
    :goto_b
    return-void

    .line 207
    :cond_c
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/a/b;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_a3

    .line 213
    const/4 v0, 0x3

    iput v0, v1, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    .line 214
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",remove taskItem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_66

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8b

    .line 222
    :cond_66
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",taskItem is the only on pauseAll"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/tmdownloader/internal/a/a;->a(Ljava/lang/String;)V

    .line 227
    :cond_8b
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    if-eqz v0, :cond_9a

    .line 229
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->b:Lcom/tencent/tmdownloader/internal/a/a/a;

    iget v3, v1, Lcom/tencent/tmdownloader/internal/a/a/b;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/tencent/tmdownloader/internal/a/a/a;->OnDownloadStateChanged(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 237
    :cond_9a
    :goto_9a
    const-string v0, "ServiceDownloadTaskManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 234
    :cond_a3
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",taskItem is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 248
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 273
    :cond_4
    :goto_4
    return-void

    .line 253
    :cond_5
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/a/b;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_78

    .line 258
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remove taskItem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_46
    invoke-virtual {p0, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 270
    :cond_52
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",taskItem is the only on cancelAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/tmdownloader/internal/a/a;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 263
    :cond_78
    const-string v0, "ServiceDownloadTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",taskItem is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

.method protected declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/a/b;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 302
    monitor-enter p0

    if-eqz p1, :cond_6

    if-nez p2, :cond_9

    :cond_6
    move-object v0, v1

    .line 314
    :goto_7
    monitor-exit p0

    return-object v0

    .line 307
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/a/b;

    .line 309
    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/a/b;->a:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_32

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_30
    move-object v0, v1

    .line 314
    goto :goto_7

    .line 302
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
