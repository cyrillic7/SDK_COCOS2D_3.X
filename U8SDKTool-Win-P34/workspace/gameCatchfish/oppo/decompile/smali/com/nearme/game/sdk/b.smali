.class public final Lcom/nearme/game/sdk/b;
.super Lcom/nearme/game/sdk/a;
.source "GCInternalImpl.java"


# static fields
.field private static d:Lcom/nearme/game/sdk/b;


# instance fields
.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/nearme/game/sdk/a;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V

    .line 48
    return-void
.end method

.method static declared-synchronized a(Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;Landroid/content/Context;)Lcom/nearme/game/sdk/b;
    .registers 5

    .prologue
    .line 36
    const-class v1, Lcom/nearme/game/sdk/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/nearme/game/sdk/b;->d:Lcom/nearme/game/sdk/b;

    if-nez v0, :cond_16

    .line 37
    const-class v2, Lcom/nearme/game/sdk/b;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 38
    :try_start_a
    sget-object v0, Lcom/nearme/game/sdk/b;->d:Lcom/nearme/game/sdk/b;

    if-nez v0, :cond_15

    .line 39
    new-instance v0, Lcom/nearme/game/sdk/b;

    invoke-direct {v0, p1, p0}, Lcom/nearme/game/sdk/b;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V

    sput-object v0, Lcom/nearme/game/sdk/b;->d:Lcom/nearme/game/sdk/b;

    .line 41
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    .line 43
    :cond_16
    :try_start_16
    sget-object v0, Lcom/nearme/game/sdk/b;->d:Lcom/nearme/game/sdk/b;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1d

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 36
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nearme/game/sdk/b;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nearme/game/sdk/b;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;Z)V
    .registers 13

    .prologue
    .line 145
    const/16 v0, 0x1b60

    new-instance v1, Lcom/nearme/game/sdk/b$3;

    invoke-direct {v1, p1, p3}, Lcom/nearme/game/sdk/b$3;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 163
    if-eqz p4, :cond_51

    const-string v0, "offlineGame"

    .line 164
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pay."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const/16 v1, 0x1b65

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay"

    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getOrder()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "amount:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getAmount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 167
    return-void

    .line 163
    :cond_51
    const-string v0, "onlineGame"

    goto :goto_e
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nearme/game/sdk/b;->e:Ljava/lang/ref/WeakReference;

    .line 52
    const/16 v0, 0x1b68

    invoke-virtual {p0, v0}, Lcom/nearme/game/sdk/b;->a(I)V

    .line 53
    return-void
.end method

.method final a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nearme/game/sdk/b;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget-boolean v0, v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    if-eqz v0, :cond_e

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u5355\u673a\u652f\u4ed8\u8bf7\u8c03\u7528doSinglePay\u63a5\u53e3!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;Z)V

    .line 142
    return-void
.end method

.method final a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/SinglePayCallback;)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/nearme/game/sdk/b;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget-boolean v0, v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    if-nez v0, :cond_10

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u7f51\u6e38\u652f\u4ed8\u8bf7\u8c03\u7528doPay\u63a5\u53e3!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_10
    :try_start_10
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 114
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 116
    new-instance v0, Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-direct {v0}, Lcom/nearme/platform/opensdk/pay/PayRequest;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    .line 118
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    .line 119
    new-instance v2, Lcom/nearme/platform/opensdk/pay/PayTask;

    const/16 v3, 0x3ea

    invoke-direct {v2, p1, v0, v3}, Lcom/nearme/platform/opensdk/pay/PayTask;-><init>(Landroid/content/Context;Lcom/nearme/platform/opensdk/pay/PayRequest;I)V

    .line 120
    invoke-virtual {v2}, Lcom/nearme/platform/opensdk/pay/PayTask;->iSupportSinglePay()Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3c} :catch_43

    move-result v0

    .line 125
    :goto_3d
    if-eqz v0, :cond_46

    .line 126
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;Z)V

    .line 135
    :goto_42
    return-void

    :catch_43
    move-exception v0

    :cond_44
    move v0, v1

    goto :goto_3d

    .line 128
    :cond_46
    if-eqz p3, :cond_4b

    .line 129
    invoke-interface {p3, p2}, Lcom/nearme/game/sdk/callback/SinglePayCallback;->onCallCarrierPay(Lcom/nearme/game/sdk/common/model/biz/PayInfo;)V

    .line 132
    :cond_4b
    const/16 v0, 0x1b65

    new-instance v2, Lcom/nearme/game/sdk/common/model/biz/ReportParam;

    const-string v3, "pay"

    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getOrder()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "amount:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->getAmount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type:offlineGame carrier pay."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/nearme/game/sdk/common/model/biz/ReportParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/nearme/game/sdk/b;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    goto :goto_42
.end method

.method protected final b(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    sparse-switch p1, :sswitch_data_2c

    .line 202
    :goto_4
    return-object v0

    .line 190
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.account.action.login"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "ONEPLUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/nearme/game/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 193
    const-string v0, "OnePlusLoginActivity"

    goto :goto_4

    .line 195
    :cond_25
    const-string v0, "LoginActivity"

    goto :goto_4

    .line 199
    :sswitch_28
    const-string v0, "GameExitGuiderActivity"

    goto :goto_4

    .line 188
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1b5b -> :sswitch_5
        0x1b67 -> :sswitch_28
    .end sparse-switch
.end method
