.class Lcom/tencent/android/tpush/ac;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;

.field private c:Lcom/tencent/android/tpush/XGIOperateCallback;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/XGIOperateCallback;Landroid/content/Context;Landroid/content/Intent;II)V
    .registers 9

    .prologue
    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/ac;->e:I

    .line 1246
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> Create callback runnable. intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iput-object p1, p0, Lcom/tencent/android/tpush/ac;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    .line 1249
    iput-object p2, p0, Lcom/tencent/android/tpush/ac;->a:Landroid/content/Context;

    .line 1250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    .line 1251
    iput p4, p0, Lcom/tencent/android/tpush/ac;->d:I

    .line 1252
    iput p5, p0, Lcom/tencent/android/tpush/ac;->e:I

    .line 1253
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->startWatchdog()V

    .line 1259
    iget v0, p0, Lcom/tencent/android/tpush/ac;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8c

    .line 1260
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    if-eqz v0, :cond_42

    .line 1261
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1269
    iget-object v1, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    const-string v2, "operation"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1270
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> Callback runnable running @operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    packed-switch v1, :pswitch_data_b6

    .line 1313
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V

    .line 1314
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/common/a;->a(Landroid/content/Context;)V

    .line 1318
    :goto_50
    return-void

    .line 1278
    :pswitch_51
    iget-object v1, p0, Lcom/tencent/android/tpush/ac;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    iget-object v2, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    const-string v3, "flag"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/tencent/android/tpush/XGIOperateCallback;->onSuccess(Ljava/lang/Object;I)V

    .line 1279
    iget v0, p0, Lcom/tencent/android/tpush/ac;->e:I

    if-nez v0, :cond_42

    .line 1281
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->a:Landroid/content/Context;

    const-string v1, ".firstregister"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_42

    .line 1315
    :catch_6c
    move-exception v0

    .line 1316
    const-string v1, "TPush"

    const-string v2, "OperateRunnable error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 1291
    :pswitch_75
    :try_start_75
    iget-object v1, p0, Lcom/tencent/android/tpush/ac;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    iget-object v2, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    const-string v3, "code"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    const-string v4, "msg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/tencent/android/tpush/XGIOperateCallback;->onFail(Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_42

    .line 1298
    :cond_8c
    iget v0, p0, Lcom/tencent/android/tpush/ac;->d:I

    if-nez v0, :cond_42

    .line 1299
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    if-eqz v0, :cond_42

    .line 1300
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    const-string v1, "operation"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1301
    packed-switch v0, :pswitch_data_be

    goto :goto_42

    .line 1303
    :pswitch_a1
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ac;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    goto :goto_42

    .line 1306
    :pswitch_ab
    iget-object v0, p0, Lcom/tencent/android/tpush/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/android/tpush/ac;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/android/tpush/ac;->c:Lcom/tencent/android/tpush/XGIOperateCallback;

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/android/tpush/XGIOperateCallback;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_b4} :catch_6c

    goto :goto_42

    .line 1273
    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_51
        :pswitch_75
    .end packed-switch

    .line 1301
    :pswitch_data_be
    .packed-switch 0x64
        :pswitch_a1
        :pswitch_ab
    .end packed-switch
.end method
