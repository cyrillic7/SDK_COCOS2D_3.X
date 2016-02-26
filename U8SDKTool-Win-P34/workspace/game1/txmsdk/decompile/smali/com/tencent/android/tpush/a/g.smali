.class Lcom/tencent/android/tpush/a/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/a/f;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Intent;

.field private d:Lcom/tencent/android/tpush/XGIOperateCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/a/f;Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 8

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/android/tpush/a/g;->a:Lcom/tencent/android/tpush/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create PushMessageRunnable, intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    .line 66
    iput-object p4, p0, Lcom/tencent/android/tpush/a/g;->d:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 67
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 74
    const-string v1, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ processMsgIntent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    const-string v1, "svrPkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.android.tpush.action.ack.sdk2srv"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v0, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    :cond_68
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/tencent/android/tpush/a/g;->a:Lcom/tencent/android/tpush/a/f;

    monitor-enter v1

    .line 94
    :try_start_6
    const-string v2, "XGService"

    const-string v3, "@@PushMessageRunnable @ run()"

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_dd

    .line 97
    :try_start_d
    iget-object v2, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    const-string v3, "expire_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 100
    iget-object v6, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    invoke-static {v6, v7}, Lcom/tencent/android/tpush/a/h;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/android/tpush/a/h;

    move-result-object v6

    .line 102
    cmp-long v7, v2, v8

    if-lez v7, :cond_60

    cmp-long v7, v4, v2

    if-lez v7, :cond_60

    .line 103
    const-string v0, "XGService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg is expired, currentTimeMillis="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",expire_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_5e} :catch_222
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_5e} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_5e} :catch_238
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_5e} :catch_241
    .catchall {:try_start_d .. :try_end_5e} :catchall_dd

    .line 108
    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_dd

    .line 190
    :goto_5f
    return-void

    .line 110
    :cond_60
    :try_start_60
    iget-object v2, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    const-string v3, "msgId"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 111
    iget-object v4, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    iget-object v7, p0, Lcom/tencent/android/tpush/a/g;->c:Landroid/content/Intent;

    const-string v8, "accId"

    const-wide/16 v10, -0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 115
    iget-object v7, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/android/tpush/XGPushConfig;->getAccessidList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 117
    if-eqz v7, :cond_e0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_e0

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMessageRunnable match accessId failed, message droped cause accessId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v2, "XGService"

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "TPush"

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_db} :catch_222
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_db} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_60 .. :try_end_db} :catch_238
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_db} :catch_241
    .catchall {:try_start_60 .. :try_end_db} :catchall_dd

    .line 124
    :try_start_db
    monitor-exit v1

    goto :goto_5f

    .line 189
    :catchall_dd
    move-exception v0

    monitor-exit v1
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_dd

    throw v0

    .line 127
    :cond_e0
    :try_start_e0
    iget-object v7, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    invoke-static {v7, v8, v9}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 128
    const-string v10, "XGService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">> msgId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",is contains:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_22b

    .line 132
    const-string v10, "XGService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">> PushMessageRunnable@!msgIds.contains(msgIdstr)@msgId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tpush_msgId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tpush_msgId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    iget-object v2, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tpush_msgId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c2

    .line 145
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag write failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bf
    .catch Lorg/json/JSONException; {:try_start_e0 .. :try_end_1bf} :catch_222
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e0 .. :try_end_1bf} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_e0 .. :try_end_1bf} :catch_238
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_1bf} :catch_241
    .catchall {:try_start_e0 .. :try_end_1bf} :catchall_dd

    .line 147
    :try_start_1bf
    monitor-exit v1
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_dd

    goto/16 :goto_5f

    .line 149
    :cond_1c2
    :try_start_1c2
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiver msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/tencent/android/tpush/a/h;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/tencent/android/tpush/a/g;->a()V

    .line 153
    invoke-virtual {v6}, Lcom/tencent/android/tpush/a/h;->h()Lcom/tencent/android/tpush/a/a;

    move-result-object v2

    if-eqz v2, :cond_204

    invoke-virtual {v6}, Lcom/tencent/android/tpush/a/h;->h()Lcom/tencent/android/tpush/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/a/a;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_204

    invoke-virtual {v6}, Lcom/tencent/android/tpush/a/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z
    :try_end_1f9
    .catch Lorg/json/JSONException; {:try_start_1c2 .. :try_end_1f9} :catch_222
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c2 .. :try_end_1f9} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_1c2 .. :try_end_1f9} :catch_238
    .catch Ljava/lang/Throwable; {:try_start_1c2 .. :try_end_1f9} :catch_241
    .catchall {:try_start_1c2 .. :try_end_1f9} :catchall_dd

    move-result v2

    if-nez v2, :cond_204

    .line 158
    :try_start_1fc
    invoke-virtual {v6}, Lcom/tencent/android/tpush/a/h;->a()V
    :try_end_1ff
    .catch Ljava/lang/Throwable; {:try_start_1fc .. :try_end_1ff} :catch_219
    .catch Lorg/json/JSONException; {:try_start_1fc .. :try_end_1ff} :catch_222
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fc .. :try_end_1ff} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_1fc .. :try_end_1ff} :catch_238
    .catchall {:try_start_1fc .. :try_end_1ff} :catchall_dd

    .line 163
    :goto_1ff
    :try_start_1ff
    iget-object v2, p0, Lcom/tencent/android/tpush/a/g;->b:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/tencent/android/tpush/XGPushManager;->msgAck(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V
    :try_end_204
    .catch Lorg/json/JSONException; {:try_start_1ff .. :try_end_204} :catch_222
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ff .. :try_end_204} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_1ff .. :try_end_204} :catch_238
    .catch Ljava/lang/Throwable; {:try_start_1ff .. :try_end_204} :catch_241
    .catchall {:try_start_1ff .. :try_end_204} :catchall_dd

    .line 182
    :cond_204
    :goto_204
    :try_start_204
    iget-object v2, p0, Lcom/tencent/android/tpush/a/g;->d:Lcom/tencent/android/tpush/XGIOperateCallback;

    if-eqz v2, :cond_216

    .line 183
    if-eqz v0, :cond_24a

    .line 184
    iget-object v2, p0, Lcom/tencent/android/tpush/a/g;->d:Lcom/tencent/android/tpush/XGIOperateCallback;

    const-string v3, ""

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v0}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    .line 189
    :cond_216
    :goto_216
    monitor-exit v1
    :try_end_217
    .catchall {:try_start_204 .. :try_end_217} :catchall_dd

    goto/16 :goto_5f

    .line 159
    :catch_219
    move-exception v0

    .line 160
    :try_start_21a
    const-string v2, "XGService"

    const-string v3, "\u51fa\u73b0\u672a\u77e5\u9519\u8bef"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_221
    .catch Lorg/json/JSONException; {:try_start_21a .. :try_end_221} :catch_222
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21a .. :try_end_221} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_21a .. :try_end_221} :catch_238
    .catch Ljava/lang/Throwable; {:try_start_21a .. :try_end_221} :catch_241
    .catchall {:try_start_21a .. :try_end_221} :catchall_dd

    goto :goto_1ff

    .line 168
    :catch_222
    move-exception v0

    .line 169
    :try_start_223
    const-string v2, "XGService"

    const-string v3, "push\u89e3\u5305\u5931\u8d25"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22a
    .catchall {:try_start_223 .. :try_end_22a} :catchall_dd

    goto :goto_204

    .line 166
    :cond_22b
    const/4 v2, 0x0

    :try_start_22c
    iput-object v2, p0, Lcom/tencent/android/tpush/a/g;->d:Lcom/tencent/android/tpush/XGIOperateCallback;
    :try_end_22e
    .catch Lorg/json/JSONException; {:try_start_22c .. :try_end_22e} :catch_222
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22c .. :try_end_22e} :catch_22f
    .catch Ljava/lang/SecurityException; {:try_start_22c .. :try_end_22e} :catch_238
    .catch Ljava/lang/Throwable; {:try_start_22c .. :try_end_22e} :catch_241
    .catchall {:try_start_22c .. :try_end_22e} :catchall_dd

    goto :goto_204

    .line 171
    :catch_22f
    move-exception v0

    .line 172
    :try_start_230
    const-string v2, "XGService"

    const-string v3, "push\u6d88\u606f\u7c7b\u578b\u9519\u8bef"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_204

    .line 174
    :catch_238
    move-exception v0

    .line 175
    const-string v2, "XGService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_204

    .line 177
    :catch_241
    move-exception v0

    .line 178
    const-string v2, "XGService"

    const-string v3, "\u51fa\u73b0\u672a\u77e5\u5f02\u5e38"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_204

    .line 186
    :cond_24a
    iget-object v0, p0, Lcom/tencent/android/tpush/a/g;->d:Lcom/tencent/android/tpush/XGIOperateCallback;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/tencent/android/tpush/XGIOperateCallback;->onSuccess(Ljava/lang/Object;I)V
    :try_end_252
    .catchall {:try_start_230 .. :try_end_252} :catchall_dd

    goto :goto_216
.end method
