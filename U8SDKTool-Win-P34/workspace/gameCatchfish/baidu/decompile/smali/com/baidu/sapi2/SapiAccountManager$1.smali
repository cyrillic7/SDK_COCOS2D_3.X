.class Lcom/baidu/sapi2/SapiAccountManager$1;
.super Ljava/lang/Object;
.source "SapiAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiAccountManager;->init(Lcom/baidu/sapi2/SapiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiConfiguration;

.field final synthetic b:Lcom/baidu/sapi2/SapiAccountManager;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiAccountManager;Lcom/baidu/sapi2/SapiConfiguration;)V
    .registers 3

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->b:Lcom/baidu/sapi2/SapiAccountManager;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 110
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 111
    .local v0, "curVersionCode":I
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->silentShareOnUpgrade:Z

    if-eqz v1, :cond_26

    .line 112
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/d;->x()I

    move-result v1

    if-le v0, v1, :cond_26

    .line 113
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->resetSilentShareStatus(Landroid/content/Context;)V

    .line 116
    :cond_26
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/d;->b(I)V

    .line 118
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientId:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-static {}, Lcom/baidu/sapi2/utils/SapiUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/SapiConfiguration;->clientIp:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/baidu/sapi2/share/b;->b()V

    .line 121
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->syncCacheOnInit:Z

    if-eqz v1, :cond_55

    .line 122
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiCache;->init(Landroid/content/Context;)V

    .line 125
    :cond_55
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 126
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->b()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountService;->deviceLoginCheck()V

    .line 128
    :cond_66
    invoke-static {}, Lcom/baidu/sapi2/utils/StatService;->a()V

    .line 129
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v1

    const-string v2, "6.10.3"

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/d;->b(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/d;->a(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)V

    .line 132
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountManager$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/utils/b;->a(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 134
    return-void
.end method
