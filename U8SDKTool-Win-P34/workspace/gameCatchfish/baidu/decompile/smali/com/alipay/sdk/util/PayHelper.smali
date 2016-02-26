.class public Lcom/alipay/sdk/util/PayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "failed"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/android/app/IAlixPay;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Landroid/content/ServiceConnection;

.field private g:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->d:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    .line 38
    new-instance v0, Lcom/alipay/sdk/util/PayHelper$1;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/PayHelper$1;-><init>(Lcom/alipay/sdk/util/PayHelper;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    .line 140
    new-instance v0, Lcom/alipay/sdk/util/PayHelper$2;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/PayHelper$2;-><init>(Lcom/alipay/sdk/util/PayHelper;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 35
    iput-object p1, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/PayHelper;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/sdk/util/PayHelper;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 97
    .line 99
    iget-boolean v0, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    if-eqz v0, :cond_a

    .line 100
    const-string v0, ""

    .line 137
    :goto_9
    return-object v0

    .line 102
    :cond_a
    iput-boolean v3, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    .line 104
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_1b

    .line 105
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p2, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 110
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_3d
    .catchall {:try_start_1b .. :try_end_1e} :catchall_76

    .line 111
    :try_start_1e
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_29

    .line 112
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->d:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 113
    :cond_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_3a

    .line 115
    :try_start_2a
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_4d

    .line 116
    const-string v0, "failed"
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_30} :catch_3d
    .catchall {:try_start_2a .. :try_end_30} :catchall_76

    .line 128
    :try_start_30
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_49

    .line 133
    :goto_37
    iput-boolean v6, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    goto :goto_9

    .line 113
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v2

    throw v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_76

    :catch_3d
    move-exception v0

    move-object v0, v1

    .line 128
    :goto_3f
    :try_start_3f
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_72

    .line 133
    :goto_46
    iput-boolean v6, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    goto :goto_9

    .line 130
    :catch_49
    move-exception v2

    iput-object v1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_37

    .line 118
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v0, v2}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_3d
    .catchall {:try_start_4d .. :try_end_59} :catchall_76

    move-result-object v0

    .line 121
    :try_start_5a
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v2, v3}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 123
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_64} :catch_85
    .catchall {:try_start_5a .. :try_end_64} :catchall_76

    .line 128
    :try_start_64
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_6e

    .line 133
    :goto_6b
    iput-boolean v6, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    goto :goto_9

    .line 130
    :catch_6e
    move-exception v2

    iput-object v1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_6b

    :catch_72
    move-exception v2

    iput-object v1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_46

    .line 127
    :catchall_76
    move-exception v0

    .line 128
    :try_start_77
    iget-object v2, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/sdk/util/PayHelper;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7e} :catch_81

    .line 133
    :goto_7e
    iput-boolean v6, p0, Lcom/alipay/sdk/util/PayHelper;->e:Z

    throw v0

    .line 130
    :catch_81
    move-exception v2

    iput-object v1, p0, Lcom/alipay/sdk/util/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_7e

    :catch_85
    move-exception v2

    goto :goto_3f
.end method

.method static synthetic b(Lcom/alipay/sdk/util/PayHelper;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/sdk/util/PayHelper;->b:Landroid/app/Activity;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/Utils;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/Utils;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1b

    const-string v1, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 85
    invoke-static {}, Lcom/alipay/sdk/app/Result;->c()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_1a
    return-object v0

    .line 89
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.alipay.android.app.MspService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method
