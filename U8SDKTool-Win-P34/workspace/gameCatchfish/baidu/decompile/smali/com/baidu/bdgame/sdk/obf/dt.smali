.class public Lcom/baidu/bdgame/sdk/obf/dt;
.super Lcom/baidu/bdgame/sdk/obf/ek;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "AliKuai"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/eg;

.field private l:Lcom/baidu/bdgame/sdk/obf/gs;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    const-string v0, "AliKuai"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/eg;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dt;Lcom/baidu/bdgame/sdk/obf/gs;)Lcom/baidu/bdgame/sdk/obf/gs;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->l:Lcom/baidu/bdgame/sdk/obf/gs;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dt;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dt;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dt;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dt;->l()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dt;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dt;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/gs;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->l:Lcom/baidu/bdgame/sdk/obf/gs;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/dt;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/dt;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dt;->k()V

    return-void
.end method

.method private i()V
    .registers 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dt;->e()V

    .line 53
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dt;->k()V

    .line 54
    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dt;->m()V

    .line 58
    return-void
.end method

.method private k()V
    .registers 8

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->N()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dt;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/dt;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/dt;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/dt;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/dt$1;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/dt$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dt;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 94
    if-nez v0, :cond_37

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->O()V

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 99
    :cond_37
    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    .line 104
    const-class v0, Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "performPay ."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "AliKuai"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->l:Lcom/baidu/bdgame/sdk/obf/gs;

    if-eqz v0, :cond_3f

    .line 108
    const-class v0, Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "paychannel id .AliKuai"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->l:Lcom/baidu/bdgame/sdk/obf/gs;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gs;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dt$2;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/dt$2;-><init>(Lcom/baidu/bdgame/sdk/obf/dt;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/du;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V

    .line 131
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dt;->h()V

    .line 134
    :cond_3f
    return-void
.end method

.method private m()V
    .registers 7

    .prologue
    .line 155
    const-class v0, Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showPayMoneySelectView ."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dt$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/dt$3;-><init>(Lcom/baidu/bdgame/sdk/obf/dt;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Lcom/baidu/bdgame/sdk/obf/ee;)V

    .line 171
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dt;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dm;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/dt;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Ljava/util/List;JJ)V

    .line 175
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->b(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 139
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 140
    packed-switch p1, :pswitch_data_e

    .line 148
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 151
    :goto_7
    return-object v0

    .line 142
    :pswitch_8
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->a:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_7

    .line 145
    :pswitch_b
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_7

    .line 140
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public a()V
    .registers 3

    .prologue
    .line 39
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dt;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dt;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 43
    const-class v0, Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fix pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dt;->i()V

    .line 49
    :goto_2e
    return-void

    .line 46
    :cond_2f
    const-class v0, Lcom/baidu/bdgame/sdk/obf/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nofix pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dt;->j()V

    goto :goto_2e
.end method
