.class public Lcom/baidu/sapi2/share/CnctReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CnctReceiver.java"


# static fields
.field private static final a:Ljava/lang/String; = "baidu.intent.action.account.B2C_SYNC"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const-string v7, "SYNC"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "sync":Ljava/lang/String;
    const-string v7, "SN"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "sn":Ljava/lang/String;
    const-string v7, "CHECKSUM"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "checksum":Ljava/lang/String;
    const-string v7, "TIME"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "time":Ljava/lang/String;
    const-string v7, "TYPE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "type":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 75
    :cond_3c
    :goto_3c
    return-void

    .line 60
    :cond_3d
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 61
    .local v2, "crc32":Ljava/util/zip/Checksum;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/android/common/security/Base64;->decode([B)[B

    move-result-object v0

    .line 62
    .local v0, "bytes":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-interface {v2, v0, v7, v8}, Ljava/util/zip/Checksum;->update([BII)V

    .line 63
    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 67
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    move-result-object v7

    if-eqz v7, :cond_6a

    .line 68
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getReceiveShareListener()Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;->onReceiveShare()V

    .line 71
    :cond_6a
    invoke-direct {p0}, Lcom/baidu/sapi2/share/CnctReceiver;->a()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/sapi2/SapiConfiguration;->b2cSyncEnabled()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 74
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v6}, Lcom/baidu/sapi2/SapiAccountService;->verifyOtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private a()Z
    .registers 3

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_9

    .line 81
    const/4 v1, 0x1

    .line 83
    :goto_8
    return v1

    .line 82
    :catch_9
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 42
    :cond_8
    :goto_8
    return-void

    .line 35
    :cond_9
    :try_start_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string v2, "baidu.intent.action.account.B2C_SYNC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 37
    invoke-direct {p0, p2}, Lcom/baidu/sapi2/share/CnctReceiver;->a(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_8

    .line 39
    .end local v0    # "action":Ljava/lang/String;
    :catch_19
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method
