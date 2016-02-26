.class public Lcom/nearme/game/sdk/component/PayResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PayResultReceiver.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nearme/game/sdk/callback/ApiCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    .line 23
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .prologue
    const/16 v8, 0x3e9

    const/16 v7, 0x3f2

    const/16 v6, 0x3ec

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v1, "nearme.pay.response"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 29
    const-string v0, "response"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/PayResponse;->parse(Ljava/lang/String;)Lcom/nearme/platform/opensdk/pay/PayResponse;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_a3

    .line 31
    iget-object v1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mOder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 32
    iget v1, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    if-ne v8, v1, :cond_63

    .line 33
    iget-object v1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v1, :cond_49

    .line 34
    iget-object v1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nearme/game/sdk/callback/ApiCallback;->onSuccess(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v1

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay_result"

    iget-object v4, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    .line 51
    :cond_49
    :goto_49
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    const-string v1, "PayResultReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive payResponse not null order = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mOder:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_62
    :goto_62
    return-void

    .line 38
    :cond_63
    iget v1, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    if-ne v6, v1, :cond_85

    .line 39
    iget-object v1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v1, :cond_49

    .line 40
    iget-object v1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v1, v2, v6}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 41
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v1

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay_result"

    iget-object v4, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    goto :goto_49

    .line 45
    :cond_85
    iget-object v1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v1, :cond_49

    .line 46
    iget-object v1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-interface {v1, v2, v7}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    .line 47
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v1

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay_result"

    iget-object v4, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    goto :goto_49

    .line 55
    :cond_a3
    const-string v0, "PayResultReceiver"

    const-string v1, "onReceive payResponse is null."

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v1, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v2, "pay_result"

    iget-object v3, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    const-string v4, "payResponse is null."

    invoke-direct {v1, v2, v3, v7, v4}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportData(Lcom/nearme/game/sdk/common/model/biz/ReportParam;)V

    goto :goto_62
.end method
