.class public final Lcom/unionpay/mobile/android/nocard/utils/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)V
    .registers 7

    const/4 v3, -0x1

    const-string v0, "uppay"

    const-string v1, "exit() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reqId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget v2, v2, Lcom/unionpay/mobile/android/plugin/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    iget-object v0, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget v0, v0, Lcom/unionpay/mobile/android/plugin/c;->a:I

    sparse-switch v0, :sswitch_data_204

    :cond_4b
    :goto_4b
    iget-object v0, p1, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    if-eqz v0, :cond_78

    iget-object v0, p1, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_78

    iget-object v0, p1, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    if-eqz v0, :cond_78

    iget-object v0, p1, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_78

    iget-boolean v0, p1, Lcom/unionpay/mobile/android/model/b;->P:Z

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    if-eqz v0, :cond_78

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/unionpay/mobile/android/nocard/utils/e;

    invoke-direct {v3, v1, v2}, Lcom/unionpay/mobile/android/nocard/utils/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_78
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->finish()V

    const-string v0, "uppay"

    const-string v1, "exit() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_86
    const-string v0, "uppay"

    const-string v1, " notifyBrowserResult() +++ "

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    const-string v2, "fail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    const-string v0, "1"

    :goto_9c
    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget v2, v2, Lcom/unionpay/mobile/android/plugin/c;->a:I

    packed-switch v2, :pswitch_data_21e

    :goto_a3
    :pswitch_a3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result URL= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3e8

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget v3, v3, Lcom/unionpay/mobile/android/plugin/c;->a:I

    if-ne v2, v3, :cond_14b

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_e5
    const-string v0, "uppay"

    const-string v1, " notifyBrowserResult() --- "

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :cond_ee
    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    const-string v0, "-1"

    goto :goto_9c

    :cond_f9
    const-string v0, "0"

    goto :goto_9c

    :pswitch_fc
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.UCMobile.PluginApp.ActivityState"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ActivityState"

    const-string v3, "inactive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.unionpay.uppay.resultURL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "uppay"

    const-string v3, " uc browser "

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    :pswitch_121
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "uppay"

    const-string v3, " other browser "

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " result Action="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/plugin/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a3

    :cond_14b
    const-string v2, "ResultURL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_e5

    :sswitch_16b
    const-string v0, "uppay"

    const-string v1, "notifyAppResult() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pay_result"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    if-eqz v1, :cond_1aa

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1aa

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    if-eqz v1, :cond_1aa

    iget-object v1, p1, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1aa

    iget-boolean v1, p1, Lcom/unionpay/mobile/android/model/b;->P:Z

    if-nez v1, :cond_1aa

    const-string v1, "notify_url"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notify_msg"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1aa
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v0, "uppay"

    const-string v1, "notifyAppResult() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :sswitch_1b6
    const-string v0, "uppay"

    const-string v1, "notifyTencentJarResult() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pay_result"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tencentWID"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "tencentUID"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bankInfo"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cardType"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cardNo"

    iget-object v2, p1, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/plugin/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v0, "uppay"

    const-string v1, "notifyTencentJarResult() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :sswitch_data_204
    .sparse-switch
        0x0 -> :sswitch_16b
        0x1 -> :sswitch_86
        0x2 -> :sswitch_16b
        0x3 -> :sswitch_1b6
        0x4 -> :sswitch_86
        0x3e8 -> :sswitch_86
    .end sparse-switch

    :pswitch_data_21e
    .packed-switch 0x1
        :pswitch_121
        :pswitch_a3
        :pswitch_a3
        :pswitch_fc
    .end packed-switch
.end method
