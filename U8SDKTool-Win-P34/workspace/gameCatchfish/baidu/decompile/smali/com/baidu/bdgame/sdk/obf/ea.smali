.class public Lcom/baidu/bdgame/sdk/obf/ea;
.super Lcom/baidu/bdgame/sdk/obf/ek;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String; = "BaiduPay"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/eg;

.field private m:Lcom/baidu/bdgame/sdk/obf/gw;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    const-string v0, "BaiduPay"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/eg;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ea;Lcom/baidu/bdgame/sdk/obf/gw;)Lcom/baidu/bdgame/sdk/obf/gw;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->m:Lcom/baidu/bdgame/sdk/obf/gw;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ea;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ea;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ea;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ea;->l()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ea;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ea;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/gw;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->m:Lcom/baidu/bdgame/sdk/obf/gw;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ea;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ea;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ea;->k()V

    return-void
.end method

.method private i()V
    .registers 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ea;->e()V

    .line 52
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ea;->k()V

    .line 53
    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ea;->m()V

    .line 57
    return-void
.end method

.method private k()V
    .registers 8

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->N()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ea;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ea;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ea;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ea;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/ea$1;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/ea$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ea;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/bm;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 87
    if-nez v0, :cond_37

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->O()V

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 92
    :cond_37
    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    .line 95
    const-string v0, "BaiduPay"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->m:Lcom/baidu/bdgame/sdk/obf/gw;

    if-eqz v0, :cond_29

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->m:Lcom/baidu/bdgame/sdk/obf/gw;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gw;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ea$2;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/ea$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ea;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/dz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V

    .line 105
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ea;->h()V

    .line 107
    :cond_29
    return-void
.end method

.method private m()V
    .registers 7

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ea$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ea$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ea;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Lcom/baidu/bdgame/sdk/obf/ee;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ea;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dm;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ea;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Ljava/util/List;JJ)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->b(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 110
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 111
    packed-switch p1, :pswitch_data_e

    .line 119
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 121
    :goto_7
    return-object v0

    .line 113
    :pswitch_8
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->a:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_7

    .line 116
    :pswitch_b
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_7

    .line 111
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public a()V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ea;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ea;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 44
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ea;->i()V

    .line 48
    :goto_23
    return-void

    .line 46
    :cond_24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ea;->j()V

    goto :goto_23
.end method
