.class public Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;


# static fields
.field public static final a:Ljava/lang/String; = "com.baidu.bdgame.sdk.qq.action"

.field public static final b:Ljava/lang/String; = "RESULT_STATUS"

.field public static final c:Ljava/lang/String; = "RESULT_STATUS_DES"


# instance fields
.field private d:Lcom/tencent/mobileqq/openpay/api/IOpenApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "com.baidu.bdgame.sdk.qq.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "RESULT_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v1, "RESULT_STATUS_DES"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->finish()V

    .line 89
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 34
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->a(ILjava/lang/String;)V

    .line 40
    :goto_10
    return-void

    .line 38
    :cond_11
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/fi;->k:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mobileqq/openpay/api/OpenApiFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->d:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    .line 39
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->d:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    goto :goto_10
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->setIntent(Landroid/content/Intent;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->d:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->handleIntent(Landroid/content/Intent;Lcom/tencent/mobileqq/openpay/api/IOpenApiListener;)Z

    .line 47
    return-void
.end method

.method public onOpenResponse(Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;)V
    .registers 4
    .param p1, "arg0"    # Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;

    .prologue
    const/4 v0, 0x1

    .line 53
    if-nez p1, :cond_c

    move v1, v0

    .line 78
    :goto_4
    if-nez p1, :cond_1c

    const-string v0, ""

    :goto_8
    invoke-direct {p0, v1, v0}, Lcom/baidu/platformsdk/pay/channel/qqwallet/QQPayActivity;->a(ILjava/lang/String;)V

    .line 79
    return-void

    .line 56
    :cond_c
    iget v1, p1, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    sparse-switch v1, :sswitch_data_20

    move v1, v0

    .line 73
    goto :goto_4

    .line 58
    :sswitch_13
    const/4 v0, 0x0

    move v1, v0

    .line 59
    goto :goto_4

    .line 61
    :sswitch_16
    const/4 v0, 0x4

    move v1, v0

    .line 62
    goto :goto_4

    .line 69
    :sswitch_19
    const/4 v0, 0x2

    move v1, v0

    .line 70
    goto :goto_4

    .line 78
    :cond_1c
    iget-object v0, p1, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retMsg:Ljava/lang/String;

    goto :goto_8

    .line 56
    nop

    :sswitch_data_20
    .sparse-switch
        -0x65 -> :sswitch_19
        -0x6 -> :sswitch_19
        -0x5 -> :sswitch_19
        -0x4 -> :sswitch_19
        -0x3 -> :sswitch_19
        -0x2 -> :sswitch_19
        -0x1 -> :sswitch_16
        0x0 -> :sswitch_13
    .end sparse-switch
.end method
