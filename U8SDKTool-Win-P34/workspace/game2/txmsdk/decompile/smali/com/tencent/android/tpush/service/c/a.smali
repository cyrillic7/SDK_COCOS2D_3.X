.class public Lcom/tencent/android/tpush/service/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/stat/j;->a(Landroid/content/Context;I)V

    .line 65
    return-void
.end method

.method private static a(I)V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x1

    if-le p0, v0, :cond_11

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->c(Z)V

    .line 124
    sget-object v0, Lcom/tencent/android/tpush/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->a(Lcom/tencent/android/tpush/stat/StatReportStrategy;)V

    .line 125
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->b(I)V

    .line 127
    :cond_11
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 51
    const-class v1, Lcom/tencent/android/tpush/service/c/a;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->e(Z)V

    .line 52
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->a(I)V

    .line 53
    sget-object v0, Lcom/tencent/android/tpush/stat/StatReportStrategy;->BATCH:Lcom/tencent/android/tpush/stat/StatReportStrategy;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->a(Lcom/tencent/android/tpush/stat/StatReportStrategy;)V

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->d(Z)V

    .line 55
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/j;->b(Landroid/content/Context;)V

    .line 56
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/j;->e(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/a/e;

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_21} :catch_23
    .catchall {:try_start_4 .. :try_end_21} :catchall_2c

    .line 61
    :goto_21
    monitor-exit v1

    return-void

    .line 58
    :catch_23
    move-exception v0

    .line 59
    :try_start_24
    const-string v2, "XgStat"

    const-string v3, "init"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_21

    .line 51
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Intent;)V
    .registers 15

    .prologue
    .line 92
    if-nez p0, :cond_3

    .line 114
    :goto_2
    return-void

    .line 96
    :cond_3
    :try_start_3
    const-string v0, "type"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 97
    const-string v2, "busiMsgId"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 99
    const-string v2, "timestamps"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 101
    const-string v2, "msgId"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 102
    const-string v2, "accId"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 104
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 105
    const-string v2, "type"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v0, "busiMsgId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v0, "msgId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    const-string v2, "SdkAck"

    invoke-static/range {v1 .. v7}, Lcom/tencent/android/tpush/stat/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;JJ)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_7f} :catch_80

    goto :goto_2

    .line 111
    :catch_80
    move-exception v0

    .line 112
    const-string v1, "XgStat"

    const-string v2, "reportSDKAck"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public static a(Ljava/util/ArrayList;)V
    .registers 11

    .prologue
    .line 69
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 88
    :cond_8
    :goto_8
    return-void

    .line 73
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 74
    invoke-static {v8}, Lcom/tencent/android/tpush/service/c/a;->a(I)V

    .line 75
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;

    .line 77
    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 78
    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->type:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v1, "busiMsgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->busiMsgId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    const-string v1, "msgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->msgId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    const-string v2, "SrvAck"

    iget-wide v4, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->accessId:J

    iget-wide v6, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushMsg;->timestamp:J

    invoke-static/range {v1 .. v7}, Lcom/tencent/android/tpush/stat/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;JJ)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_81} :catch_82

    goto :goto_19

    .line 85
    :catch_82
    move-exception v0

    .line 86
    const-string v1, "XgStat"

    const-string v2, "reportSrvAck"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 84
    :cond_8c
    :try_start_8c
    invoke-static {v8}, Lcom/tencent/android/tpush/service/c/a;->b(I)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_82

    goto/16 :goto_8
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/d;->a(Z)V

    .line 42
    return-void
.end method

.method private static b(I)V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 135
    if-le p0, v0, :cond_d

    .line 136
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->c(Z)V

    .line 137
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/d;->b(I)V

    .line 138
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()V

    .line 140
    :cond_d
    return-void
.end method

.method public static b(Ljava/util/ArrayList;)V
    .registers 17

    .prologue
    .line 144
    if-eqz p0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 170
    :cond_8
    :goto_8
    return-void

    .line 148
    :cond_9
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 149
    invoke-static {v8}, Lcom/tencent/android/tpush/service/c/a;->a(I)V

    .line 150
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 151
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;

    .line 152
    iget-wide v10, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->type:J

    .line 153
    iget-wide v6, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->timestamp:J

    .line 154
    iget-wide v12, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->broadcastId:J

    .line 155
    iget-wide v14, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->msgId:J

    .line 156
    iget-wide v4, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReport;->accessId:J

    .line 158
    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 159
    const-string v0, "type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    const-string v0, "busiMsgId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    const-string v0, "msgId"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    const-string v2, "Ack"

    invoke-static/range {v1 .. v7}, Lcom/tencent/android/tpush/stat/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;JJ)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_81} :catch_82

    goto :goto_19

    .line 167
    :catch_82
    move-exception v0

    .line 168
    const-string v1, "XgStat"

    const-string v2, "reportAck"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 166
    :cond_8c
    :try_start_8c
    invoke-static {v8}, Lcom/tencent/android/tpush/service/c/a;->b(I)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_82

    goto/16 :goto_8
.end method

.method public static c(Ljava/util/ArrayList;)V
    .registers 21

    .prologue
    .line 175
    if-eqz p0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 205
    :cond_8
    :goto_8
    return-void

    .line 179
    :cond_9
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 180
    invoke-static {v10}, Lcom/tencent/android/tpush/service/c/a;->a(I)V

    .line 181
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 182
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;

    .line 183
    iget-wide v12, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->type:J

    .line 184
    iget-wide v8, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->timestamp:J

    .line 185
    iget-wide v14, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->broadcastId:J

    .line 186
    iget-wide v0, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->msgId:J

    move-wide/from16 v16, v0

    .line 187
    iget-wide v6, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->accessId:J

    .line 188
    iget-wide v2, v2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClickClientReport;->action:J

    .line 190
    invoke-virtual {v5}, Ljava/util/Properties;->clear()V

    .line 191
    const-string v4, "type"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v4, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string v4, "busiMsgId"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v4, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    const-string v4, "msgId"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v4, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const-string v4, "action"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    sget-object v3, Lcom/tencent/android/tpush/service/c/a;->a:Landroid/content/Context;

    const-string v4, "Action"

    invoke-static/range {v3 .. v9}, Lcom/tencent/android/tpush/stat/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;JJ)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_a1} :catch_a3

    goto/16 :goto_19

    .line 202
    :catch_a3
    move-exception v2

    .line 203
    const-string v3, "XgStat"

    const-string v4, "reportNotifactionClickedOrClear"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 201
    :cond_ad
    :try_start_ad
    invoke-static {v10}, Lcom/tencent/android/tpush/service/c/a;->b(I)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_a3

    goto/16 :goto_8
.end method
