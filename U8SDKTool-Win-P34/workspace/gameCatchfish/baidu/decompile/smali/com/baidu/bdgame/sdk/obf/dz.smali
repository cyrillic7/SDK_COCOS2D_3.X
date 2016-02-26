.class public Lcom/baidu/bdgame/sdk/obf/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/bdgame/sdk/obf/ed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "BfbPayManager"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->a:Ljava/lang/String;

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->b:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dz;->e:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    .line 55
    return-void
.end method

.method private a()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    const-string v1, "userType"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 61
    const-string v1, "tokenValue"

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduOAuthAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2b
    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    if-nez v0, :cond_6

    .line 128
    :goto_5
    return-void

    .line 97
    :cond_6
    const-string v0, "BfbPayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    packed-switch p1, :pswitch_data_a4

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_5

    .line 101
    :pswitch_2f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v3, "bdp_passport_pay"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_5

    .line 104
    :pswitch_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v3, "bdp_passport_pay_submit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_5

    .line 107
    :pswitch_4d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_cancel"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_5

    .line 110
    :pswitch_5b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_unsupport"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_5

    .line 113
    :pswitch_69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_invalid_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_5

    .line 116
    :pswitch_77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_login_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_5

    .line 119
    :pswitch_85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 122
    :pswitch_94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dz;->d:Lcom/baidu/bdgame/sdk/obf/ed;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->c:Landroid/content/Context;

    const-string v2, "bdp_passport_pay_logout"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 99
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_3e
        :pswitch_4d
        :pswitch_5b
        :pswitch_69
        :pswitch_77
        :pswitch_85
        :pswitch_94
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 71
    invoke-static {}, Lcom/baidu/paysdk/api/BaiduPay;->getInstance()Lcom/baidu/paysdk/api/BaiduPay;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dz;->e:Ljava/lang/String;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dz$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/dz$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dz;)V

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dz;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baidu/paysdk/api/BaiduPay;->doPay(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pay/PayCallBack;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    const-class v1, Lcom/baidu/bdgame/sdk/obf/dz;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 40
    if-eqz p2, :cond_1d

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_null_orderinfo"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_28

    .line 48
    :cond_1d
    :goto_1d
    monitor-exit v1

    return-void

    .line 46
    :cond_1f
    :try_start_1f
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dz;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/dz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V

    .line 47
    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/dz;->a(Landroid/content/Context;)V
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_28

    goto :goto_1d

    .line 39
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dz;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/dz;->a(ILjava/lang/String;)V

    return-void
.end method
