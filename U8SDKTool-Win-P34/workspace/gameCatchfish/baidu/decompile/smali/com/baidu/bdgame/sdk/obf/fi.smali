.class public Lcom/baidu/bdgame/sdk/obf/fi;
.super Lcom/baidu/bdgame/sdk/obf/ek;
.source "SourceFile"


# static fields
.field public static k:Ljava/lang/String; = null

.field private static final o:Ljava/lang/String; = "QQWallet"


# instance fields
.field private l:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

.field private m:Lcom/baidu/bdgame/sdk/obf/eg;

.field private n:Lcom/baidu/bdgame/sdk/obf/fk;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "QQWallet"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/eg;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;Lcom/baidu/bdgame/sdk/obf/fk;)Lcom/baidu/bdgame/sdk/obf/fk;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;Lcom/tencent/mobileqq/openpay/api/IOpenApi;)Lcom/tencent/mobileqq/openpay/api/IOpenApi;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->l:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fi;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fi;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fi;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fi;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fi;)Z
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/fk;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fi;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fi;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/fi;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/fi;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->m()V

    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->e()V

    .line 68
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->m()V

    .line 69
    return-void
.end method

.method private k()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->o()V

    .line 73
    return-void
.end method

.method private l()Z
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->l:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQInstalled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->l:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    const-string v1, "pay"

    invoke-interface {v0, v1}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->isMobileQQSupportApi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 80
    const/4 v0, 0x1

    .line 84
    :goto_13
    return v0

    .line 82
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_paychannel_error_qq"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private m()V
    .registers 8

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->N()V

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fi;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fi;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fi;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/fi$1;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/fi$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/bm;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 122
    if-nez v0, :cond_37

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->O()V

    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 126
    :cond_37
    return-void
.end method

.method private n()V
    .registers 4

    .prologue
    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    const-string v1, "com.baidu.bdgame.sdk.qq.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/fi$2;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/fi$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method private o()V
    .registers 7

    .prologue
    .line 197
    const-class v0, Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showPayMoneySelectView ."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fi$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fi$3;-><init>(Lcom/baidu/bdgame/sdk/obf/fi;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Lcom/baidu/bdgame/sdk/obf/ee;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fi;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dm;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fi;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Ljava/util/List;JJ)V

    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->b(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 217
    return-void
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 184
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 185
    packed-switch p1, :pswitch_data_c

    .line 191
    :pswitch_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 193
    :goto_7
    return-object v0

    .line 188
    :pswitch_8
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_7

    .line 185
    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_8
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public a()V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fi;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->m:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 58
    const-class v0, Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fix pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->j()V

    .line 64
    :goto_2e
    return-void

    .line 61
    :cond_2f
    const-class v0, Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nofix pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->k()V

    goto :goto_2e
.end method

.method protected i()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 132
    const-class v0, Lcom/baidu/bdgame/sdk/obf/fi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "performPay ."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 134
    :cond_1d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    if-nez v0, :cond_27

    const-string v0, ""

    :goto_23
    invoke-virtual {p0, v4, v5, v0}, Lcom/baidu/bdgame/sdk/obf/fi;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_26
    return-void

    .line 134
    :cond_27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 138
    :cond_2e
    new-instance v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;

    invoke-direct {v1}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;-><init>()V

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->appId:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->serialNumber:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qwallet"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->c()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->callbackScheme:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->tokenId:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAcc:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->pubAccHint:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->nonce:Ljava/lang/String;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->timeStamp:J

    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->bargainorId:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sig:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->sigType:Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-virtual {v1}, Lcom/tencent/mobileqq/openpay/data/pay/PayApi;->checkParams()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->l:Lcom/tencent/mobileqq/openpay/api/IOpenApi;

    invoke-interface {v0, v1}, Lcom/tencent/mobileqq/openpay/api/IOpenApi;->execApi(Lcom/tencent/mobileqq/openpay/data/base/BaseApi;)Z

    move-result v0

    .line 155
    :cond_ab
    if-eqz v0, :cond_b5

    .line 156
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->h()V

    .line 157
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fi;->n()V

    goto/16 :goto_26

    .line 159
    :cond_b5
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    if-nez v0, :cond_c0

    const-string v0, ""

    :goto_bb
    invoke-virtual {p0, v4, v5, v0}, Lcom/baidu/bdgame/sdk/obf/fi;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_c0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fi;->n:Lcom/baidu/bdgame/sdk/obf/fk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fk;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_bb
.end method
