.class public Lcom/baidu/bdgame/sdk/obf/hc;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/bdgame/sdk/obf/dm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Lcom/baidu/bdgame/sdk/obf/jd;

.field private h:Lcom/baidu/bdgame/sdk/obf/iy;

.field private i:Lcom/baidu/bdgame/sdk/obf/iz;

.field private j:Lcom/baidu/bdgame/sdk/obf/je;

.field private k:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/hc;->k:I

    .line 41
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/hc;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->b:Lcom/baidu/bdgame/sdk/obf/dm;

    .line 43
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/hc;->g:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 5

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/hc;->k:I

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/hc;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/hc;->e()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/hc;)I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/hc;->k:I

    return v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 121
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/hc;->k:I

    if-nez v0, :cond_5

    .line 133
    :goto_4
    return-void

    .line 125
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/hc$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/hc$1;-><init>(Lcom/baidu/bdgame/sdk/obf/hc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 160
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 162
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->b:Lcom/baidu/bdgame/sdk/obf/dm;

    if-eqz v1, :cond_26

    .line 52
    const-string v1, "PayType"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->b:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dm;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "PayID"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->b:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dm;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_26
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->g:Lcom/baidu/bdgame/sdk/obf/jd;

    if-eqz v1, :cond_6d

    .line 57
    const-string v1, "CooperatorOrderSerial"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->g:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "MerchandiseName"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->g:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v1, "TotalAmount"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->g:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v1, "BankAmount"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->g:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v1, "CpRate"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->g:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_6d
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->h:Lcom/baidu/bdgame/sdk/obf/iy;

    if-eqz v1, :cond_d5

    .line 65
    const-string v1, "ActionInfo"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->h:Lcom/baidu/bdgame/sdk/obf/iy;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/iy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :goto_7c
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->i:Lcom/baidu/bdgame/sdk/obf/iz;

    if-eqz v1, :cond_dd

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    const-string v2, "Ver"

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/hc;->i:Lcom/baidu/bdgame/sdk/obf/iz;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/iz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "PayID"

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/hc;->i:Lcom/baidu/bdgame/sdk/obf/iz;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/iz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v2, "MergePayment"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :goto_a0
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->j:Lcom/baidu/bdgame/sdk/obf/je;

    if-eqz v1, :cond_fb

    .line 80
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    if-ne v1, v2, :cond_eb

    .line 82
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->j:Lcom/baidu/bdgame/sdk/obf/je;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/je;->a()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 84
    const-string v1, "CallbackURL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :goto_bd
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->j:Lcom/baidu/bdgame/sdk/obf/je;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/je;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f3

    .line 92
    const-string v1, "ExtInfo"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/hc;->j:Lcom/baidu/bdgame/sdk/obf/je;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/je;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :goto_d4
    return-object v0

    .line 67
    :cond_d5
    const-string v1, "ActionInfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7c

    .line 76
    :cond_dd
    const-string v1, "MergePayment"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a0

    .line 86
    :cond_e5
    const-string v2, "CallbackURL"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_bd

    .line 89
    :cond_eb
    const-string v1, "CallbackURL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_bd

    .line 94
    :cond_f3
    const-string v1, "ExtInfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d4

    .line 97
    :cond_fb
    const-string v1, "CallbackURL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "ExtInfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d4
.end method

.method protected final a(I)V
    .registers 2

    .prologue
    .line 107
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->k:I

    .line 108
    return-void
.end method

.method public final a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->h:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 140
    return-void
.end method

.method public final a(Lcom/baidu/bdgame/sdk/obf/iz;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->i:Lcom/baidu/bdgame/sdk/obf/iz;

    .line 147
    return-void
.end method

.method public final a(Lcom/baidu/bdgame/sdk/obf/je;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hc;->j:Lcom/baidu/bdgame/sdk/obf/je;

    .line 155
    return-void
.end method

.method protected final b(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    if-nez p1, :cond_8

    .line 116
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/hc;->c()V

    .line 118
    :cond_8
    return-void
.end method
