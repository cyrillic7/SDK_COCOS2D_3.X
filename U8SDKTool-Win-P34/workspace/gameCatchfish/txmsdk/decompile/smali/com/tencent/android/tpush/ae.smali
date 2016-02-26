.class Lcom/tencent/android/tpush/ae;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/Intent;

.field c:Lcom/tencent/android/tpush/XGIOperateCallback;

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    iput-object v0, p0, Lcom/tencent/android/tpush/ae;->a:Landroid/content/Context;

    .line 1063
    iput-object v0, p0, Lcom/tencent/android/tpush/ae;->b:Landroid/content/Intent;

    .line 1064
    iput-object v0, p0, Lcom/tencent/android/tpush/ae;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1065
    iput v1, p0, Lcom/tencent/android/tpush/ae;->d:I

    .line 1069
    iput-object p1, p0, Lcom/tencent/android/tpush/ae;->a:Landroid/content/Context;

    .line 1070
    iput-object p2, p0, Lcom/tencent/android/tpush/ae;->b:Landroid/content/Intent;

    .line 1071
    iput-object p3, p0, Lcom/tencent/android/tpush/ae;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1072
    const-string v0, "opType"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/ae;->d:I

    .line 1074
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1079
    :try_start_0
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterTimeoutRunnable optype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/ae;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/ae;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget v0, p0, Lcom/tencent/android/tpush/ae;->d:I

    packed-switch v0, :pswitch_data_88

    .line 1089
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeoutRunnable error optype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/ae;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :goto_45
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/ad;

    .line 1094
    iget-object v2, p0, Lcom/tencent/android/tpush/ae;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_63

    goto :goto_51

    .line 1097
    :catch_63
    move-exception v0

    .line 1098
    const-string v1, "TPush"

    const-string v2, " RegisterTimeoutRunnable run error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1101
    :goto_6b
    return-void

    .line 1083
    :pswitch_6c
    :try_start_6c
    iget-object v0, p0, Lcom/tencent/android/tpush/ae;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ae;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ae;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_45

    .line 1086
    :pswitch_76
    iget-object v0, p0, Lcom/tencent/android/tpush/ae;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ae;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ae;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_45

    .line 1096
    :cond_80
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_87} :catch_63

    goto :goto_6b

    .line 1081
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_76
    .end packed-switch
.end method
