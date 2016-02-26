.class Lcom/tencent/android/tpush/service/channel/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/horse/l;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/channel/b;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 140
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ onFailure("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    monitor-enter v1

    .line 147
    :try_start_2b
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;Z)Z

    .line 148
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 150
    const-string v0, "XGService"

    const-string v2, ">> online but failed,retry"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;Z)Z

    .line 153
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;)V

    .line 171
    :goto_55
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    .line 172
    monitor-exit v1

    .line 173
    return-void

    .line 155
    :cond_5a
    const-string v0, "XGService"

    const-string v2, ">> retryed once,but failed again,then"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    invoke-direct {v2, p1, p2}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/n;

    .line 161
    iget-object v4, v0, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    if-eqz v4, :cond_8f

    .line 162
    iget-object v4, v0, Lcom/tencent/android/tpush/service/channel/n;->d:Lcom/tencent/android/tpush/service/channel/o;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/n;->c:Lcom/qq/taf/jce/JceStruct;

    invoke-static {}, Lcom/tencent/android/tpush/service/channel/a;->a()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v5

    invoke-interface {v4, v0, v2, v5}, Lcom/tencent/android/tpush/service/channel/o;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_70

    .line 172
    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_2b .. :try_end_8e} :catchall_8c

    throw v0

    .line 166
    :cond_8f
    :try_start_8f
    const-string v4, "XGService"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 169
    :cond_99
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_8c

    goto :goto_55
.end method

.method public a(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    .registers 9

    .prologue
    .line 177
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ onSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    monitor-enter v1

    .line 180
    :try_start_2b
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_e6

    .line 182
    :try_start_31
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 183
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->e(Landroid/content/Context;)B

    move-result v0

    packed-switch v0, :pswitch_data_112

    .line 200
    :goto_4a
    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    :cond_51
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->a:I

    .line 203
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->i()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v0

    if-eqz v0, :cond_fb

    new-instance v0, Lcom/tencent/android/tpush/service/channel/a/d;

    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->b()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v3

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v5

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/tencent/android/tpush/service/channel/a/d;-><init>(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/service/channel/a/b;Ljava/lang/String;I)V

    :goto_73
    invoke-static {v2, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;)Lcom/tencent/android/tpush/service/channel/a/a;

    .line 210
    const-string v0, "XGService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> tpnsClient : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->d(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Z)V

    .line 214
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->d(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/a/a;->start()V

    .line 215
    const-string v0, "XGService"

    const-string v2, ">> sentMessagesOfClient Clear"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->e(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 218
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/b;->e(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->d(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c;->a:Lcom/tencent/android/tpush/service/channel/b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;Z)Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_d3} :catch_db
    .catchall {:try_start_31 .. :try_end_d3} :catchall_e6

    .line 226
    :goto_d3
    :try_start_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_e6

    .line 227
    return-void

    .line 186
    :pswitch_d5
    :try_start_d5
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->d:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d9} :catch_db
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_e6

    goto/16 :goto_4a

    .line 223
    :catch_db
    move-exception v0

    .line 224
    :try_start_dc
    const-string v2, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    .line 226
    :catchall_e6
    move-exception v0

    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_dc .. :try_end_e8} :catchall_e6

    throw v0

    .line 189
    :pswitch_e9
    :try_start_e9
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->c:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    goto/16 :goto_4a

    .line 192
    :pswitch_ef
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->c:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    goto/16 :goto_4a

    .line 195
    :pswitch_f5
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->c:I

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->f:I

    goto/16 :goto_4a

    .line 203
    :cond_fb
    new-instance v0, Lcom/tencent/android/tpush/service/channel/a/c;

    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->b()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/tencent/android/tpush/service/channel/a/c;-><init>(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/service/channel/a/b;)V

    goto/16 :goto_73

    :cond_106
    new-instance v0, Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->b()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/tencent/android/tpush/service/channel/a/a;-><init>(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/service/channel/a/b;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_10f} :catch_db
    .catchall {:try_start_e9 .. :try_end_10f} :catchall_e6

    goto/16 :goto_73

    .line 183
    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_e9
        :pswitch_ef
        :pswitch_f5
    .end packed-switch
.end method
