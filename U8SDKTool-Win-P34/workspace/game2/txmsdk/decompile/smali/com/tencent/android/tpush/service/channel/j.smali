.class Lcom/tencent/android/tpush/service/channel/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;

.field private b:Lcom/tencent/android/tpush/service/channel/a/a;

.field private c:Lcom/tencent/android/tpush/service/channel/exception/ChannelException;


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 864
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 861
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->c:Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    .line 865
    iput-object p2, p0, Lcom/tencent/android/tpush/service/channel/j;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 866
    iput-object p3, p0, Lcom/tencent/android/tpush/service/channel/j;->c:Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    .line 867
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    .line 871
    const-string v0, "XGService"

    const-string v1, "@@RequestFailRunnable run()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    if-nez v0, :cond_14

    .line 873
    const-string v0, "XGService"

    const-string v1, "@@RequestFailRunnable currentClient == null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_13
    :goto_13
    return-void

    .line 877
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 878
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->e()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v3

    .line 881
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->e(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/j;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 883
    if-eqz v0, :cond_71

    .line 884
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/n;

    .line 885
    iget-object v7, v1, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    .line 886
    if-eqz v7, :cond_36

    .line 887
    iget-wide v8, v1, Lcom/tencent/android/tpush/service/channel/n;->b:J

    sub-long v8, v4, v8

    .line 889
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Lcom/tencent/android/tpush/service/channel/a;->a(ILjava/lang/Object;)V

    .line 891
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->g(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/l;

    .line 893
    iget-object v8, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v8}, Lcom/tencent/android/tpush/service/channel/b;->h(Lcom/tencent/android/tpush/service/channel/b;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 894
    iget-object v1, v1, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/j;->c:Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    invoke-interface {v7, v1, v2, v3}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_36

    .line 899
    :cond_6e
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 902
    :cond_71
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 903
    const-string v0, "XGService"

    const-string v1, ">> tcp"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    monitor-enter v2

    .line 905
    :try_start_83
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8d
    :goto_8d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/n;

    .line 906
    iget-object v7, v0, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    .line 907
    if-eqz v7, :cond_8d

    .line 908
    iget-wide v8, v0, Lcom/tencent/android/tpush/service/channel/n;->b:J

    sub-long v8, v4, v8

    .line 910
    const/4 v1, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Lcom/tencent/android/tpush/service/channel/a;->a(ILjava/lang/Object;)V

    .line 912
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/channel/b;->g(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/android/tpush/service/channel/l;

    .line 914
    iget-object v8, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v8}, Lcom/tencent/android/tpush/service/channel/b;->h(Lcom/tencent/android/tpush/service/channel/b;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 915
    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/j;->c:Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    invoke-interface {v7, v0, v1, v3}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_8d

    .line 920
    :catchall_c6
    move-exception v0

    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_83 .. :try_end_c8} :catchall_c6

    throw v0

    .line 919
    :cond_c9
    :try_start_c9
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 920
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_c9 .. :try_end_d3} :catchall_c6

    .line 923
    :cond_d3
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    .line 924
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    sget v1, Lcom/tencent/android/tpush/service/channel/b;->d:I

    if-le v0, v1, :cond_103

    .line 925
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x9

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    .line 929
    :goto_e4
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b;->d()V

    .line 930
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 931
    const-string v0, "XGService"

    const-string v1, ">> tpnsMessages is not empty!"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/j;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;)V

    goto/16 :goto_13

    .line 927
    :cond_103
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->d:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    goto :goto_e4
.end method
