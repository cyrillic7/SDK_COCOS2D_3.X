.class Lcom/tencent/android/tpush/service/channel/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;


# direct methods
.method private constructor <init>(Lcom/tencent/android/tpush/service/channel/b;)V
    .registers 2

    .prologue
    .line 996
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/l;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/c;)V
    .registers 3

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/channel/l;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 1000
    :try_start_0
    const-string v2, "XGService"

    const-string v3, "@@TimeoutRunnable run()"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1002
    const-wide v6, 0x7fffffffffffffffL

    .line 1003
    sget v2, Lcom/tencent/android/tpush/service/a/a;->f:I

    int-to-long v2, v2

    .line 1004
    const/4 v4, 0x0

    .line 1006
    const-wide/16 v8, 0x3a98

    cmp-long v5, v2, v8

    if-gez v5, :cond_a4

    const-wide/16 v2, 0x3a98

    move-wide v8, v2

    .line 1009
    :goto_1d
    new-instance v12, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v2, 0x277b

    const-string v3, "TpnsMessage wait for response timeout!"

    invoke-direct {v12, v2, v3}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/l;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->e(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_36
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/a/a;

    .line 1013
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/l;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->e(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1015
    if-eqz v3, :cond_b6

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-eqz v5, :cond_b6

    .line 1017
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1019
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/a/a;->e()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v15

    move v3, v4

    move-wide v4, v6

    .line 1020
    :cond_66
    :goto_66
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 1021
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1023
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/n;

    .line 1024
    if-eqz v2, :cond_b1

    .line 1025
    iget-wide v6, v2, Lcom/tencent/android/tpush/service/channel/n;->b:J

    sub-long v6, v10, v6

    .line 1027
    const/16 v16, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/tencent/android/tpush/service/channel/a;->a(ILjava/lang/Object;)V

    .line 1029
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-ltz v16, :cond_66

    .line 1031
    cmp-long v16, v6, v8

    if-lez v16, :cond_a7

    .line 1032
    const/4 v3, 0x1

    .line 1033
    iget-object v6, v2, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    .line 1034
    if-eqz v6, :cond_9e

    .line 1035
    iget-object v7, v2, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    invoke-interface {v6, v7, v12, v15}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V

    .line 1039
    const/4 v6, 0x0

    iput-object v6, v2, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    .line 1041
    :cond_9e
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    move v2, v3

    :goto_a2
    move v3, v2

    .line 1048
    goto :goto_66

    :cond_a4
    move-wide v8, v2

    .line 1006
    goto/16 :goto_1d

    .line 1042
    :cond_a7
    sub-long v16, v8, v6

    cmp-long v2, v16, v4

    if-gez v2, :cond_b4

    .line 1043
    sub-long v4, v8, v6

    move v2, v3

    goto :goto_a2

    .line 1046
    :cond_b1
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    :cond_b4
    move v2, v3

    goto :goto_a2

    :cond_b6
    move v3, v4

    move-wide v4, v6

    :cond_b8
    move-wide v6, v4

    move v4, v3

    .line 1050
    goto/16 :goto_36

    .line 1052
    :cond_bc
    new-instance v12, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v2, 0x277a

    const-string v3, "TpnsMessage wait for response timeout!"

    invoke-direct {v12, v2, v3}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 1055
    const/4 v3, 0x0

    .line 1056
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/android/tpush/service/channel/l;->a:Lcom/tencent/android/tpush/service/channel/b;

    monitor-enter v13
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cb} :catch_137

    .line 1057
    :try_start_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/l;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1058
    :cond_d7
    :goto_d7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_153

    .line 1059
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/n;

    .line 1060
    if-eqz v2, :cond_14c

    .line 1061
    iget-wide v0, v2, Lcom/tencent/android/tpush/service/channel/n;->a:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    .line 1063
    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-ltz v5, :cond_d7

    .line 1065
    cmp-long v5, v16, v8

    if-lez v5, :cond_140

    .line 1066
    const/4 v4, 0x1

    .line 1067
    iget-object v5, v2, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    .line 1068
    if-eqz v5, :cond_124

    .line 1070
    if-nez v3, :cond_11c

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/l;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->d(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v3

    if-eqz v3, :cond_12e

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/l;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->d(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/android/tpush/service/channel/a/a;->e()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v3

    .line 1077
    :goto_112
    const/4 v15, 0x3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lcom/tencent/android/tpush/service/channel/a;->a(ILjava/lang/Object;)V

    .line 1081
    :cond_11c
    iget-object v15, v2, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    invoke-interface {v5, v15, v12, v3}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V

    .line 1085
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    :cond_124
    move-object v2, v3

    .line 1087
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    move v3, v4

    move-wide v4, v6

    :goto_12a
    move-wide v6, v4

    move v4, v3

    move-object v3, v2

    .line 1094
    goto :goto_d7

    .line 1075
    :cond_12e
    new-instance v3, Lcom/tencent/android/tpush/service/channel/a;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/a;-><init>()V

    goto :goto_112

    .line 1095
    :catchall_134
    move-exception v2

    monitor-exit v13
    :try_end_136
    .catchall {:try_start_cb .. :try_end_136} :catchall_134

    :try_start_136
    throw v2
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_137} :catch_137

    .line 1099
    :catch_137
    move-exception v2

    .line 1100
    const-string v3, "XGService"

    const-string v4, "TimeoutRunnable.run"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1102
    :cond_13f
    :goto_13f
    return-void

    .line 1088
    :cond_140
    sub-long v18, v8, v16

    cmp-long v2, v18, v6

    if-gez v2, :cond_14f

    .line 1089
    sub-long v6, v8, v16

    move-object v2, v3

    move v3, v4

    move-wide v4, v6

    goto :goto_12a

    .line 1092
    :cond_14c
    :try_start_14c
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    :cond_14f
    move-object v2, v3

    move v3, v4

    move-wide v4, v6

    goto :goto_12a

    .line 1095
    :cond_153
    monitor-exit v13
    :try_end_154
    .catchall {:try_start_14c .. :try_end_154} :catchall_134

    .line 1096
    if-eqz v4, :cond_13f

    .line 1097
    :try_start_156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/l;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b;->e()V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_15d} :catch_137

    goto :goto_13f
.end method
