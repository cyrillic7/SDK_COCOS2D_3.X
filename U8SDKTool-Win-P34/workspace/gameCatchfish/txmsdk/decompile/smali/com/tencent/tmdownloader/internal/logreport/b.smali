.class public abstract Lcom/tencent/tmdownloader/internal/logreport/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/logreport/f;


# instance fields
.field protected a:Lcom/tencent/tmdownloader/internal/logreport/h;

.field protected b:I

.field protected final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->b:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    .line 47
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    return-void
.end method

.method public declared-synchronized a(Lcom/qq/taf/jce/JceStruct;)V
    .registers 5

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    const-string v0, "BaseReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz p1, :cond_26

    .line 71
    invoke-static {p1}, Lcom/tencent/tmassistant/common/a;->c(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;->e()Lcom/tencent/tmdownloader/internal/b/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmdownloader/internal/b/c/a;->a([B)Z

    .line 74
    :cond_26
    const-string v0, "BaseReportManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 75
    monitor-exit p0

    return-void

    .line 67
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/tencent/tmdownloader/internal/logreport/h;Z)V
    .registers 6

    .prologue
    .line 133
    const-string v0, "BaseReportManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "BaseReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-nez p2, :cond_3d

    .line 139
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->c:Ljava/util/List;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 141
    const-string v0, "BaseReportManager"

    const-string v1, "reback DB!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;->e()Lcom/tencent/tmdownloader/internal/b/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/internal/b/c/a;->a(Ljava/util/List;)Z

    .line 146
    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    .line 147
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    if-eqz p2, :cond_7f

    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;->g()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->b:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7f

    .line 152
    const-string v0, "BaseReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportlog go on,result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;->c()V

    .line 154
    iget v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->b:I

    .line 156
    :cond_7f
    const-string v0, "BaseReportManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    if-eqz v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/h;->cancleRequest()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    .line 58
    :cond_c
    return-void
.end method

.method public declared-synchronized c()V
    .registers 5

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    const-string v0, "BaseReportManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->canReportValue()Z

    move-result v0

    if-nez v0, :cond_22

    .line 85
    const-string v0, "BaseReportManager"

    const-string v1, "Not WiFi"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "BaseReportManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_35

    .line 125
    :goto_20
    monitor-exit p0

    return-void

    .line 91
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    if-eqz v0, :cond_38

    .line 93
    const-string v0, "BaseReportManager"

    const-string v1, "reportRequst is sending out"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "BaseReportManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_35

    goto :goto_20

    .line 82
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_38
    :try_start_38
    new-instance v0, Lcom/tencent/tmdownloader/internal/logreport/h;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/logreport/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    .line 100
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    invoke-virtual {v0, p0}, Lcom/tencent/tmdownloader/internal/logreport/h;->a(Lcom/tencent/tmdownloader/internal/logreport/f;)V

    .line 102
    const-string v0, "BaseReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reportManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;->e()Lcom/tencent/tmdownloader/internal/b/c/a;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/internal/b/c/a;->a(I)Lcom/tencent/tmdownloader/internal/b/c/b;

    move-result-object v1

    .line 106
    const-string v0, "BaseReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLogDataAndSendToServer,wrappterCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/tmdownloader/internal/b/c/b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz v1, :cond_a2

    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/b/c/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b1

    .line 111
    :cond_a2
    const/4 v0, 0x0

    .line 120
    :goto_a3
    if-nez v0, :cond_a8

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    .line 124
    :cond_a8
    const-string v0, "BaseReportManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 113
    :cond_b1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->c:Ljava/util/List;

    iget-object v2, v1, Lcom/tencent/tmdownloader/internal/b/c/b;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->a:Lcom/tencent/tmdownloader/internal/logreport/h;

    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;->f()B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tmdownloader/internal/logreport/h;->a(BLcom/tencent/tmdownloader/internal/b/c/b;)Z

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;->e()Lcom/tencent/tmdownloader/internal/b/c/a;

    move-result-object v2

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/b/c/b;->a:Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/tencent/tmdownloader/internal/b/c/a;->b(Ljava/util/List;)Z
    :try_end_cb
    .catchall {:try_start_38 .. :try_end_cb} :catchall_35

    goto :goto_a3
.end method

.method public d()V
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/logreport/b;->b:I

    .line 164
    return-void
.end method

.method protected abstract e()Lcom/tencent/tmdownloader/internal/b/c/a;
.end method

.method protected abstract f()B
.end method

.method protected abstract g()Z
.end method
