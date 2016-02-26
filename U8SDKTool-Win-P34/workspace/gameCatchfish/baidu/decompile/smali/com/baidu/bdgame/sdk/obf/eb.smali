.class public Lcom/baidu/bdgame/sdk/obf/eb;
.super Lcom/baidu/bdgame/sdk/obf/ek;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String; = "BankCard"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/eg;

.field private m:Lcom/baidu/bdgame/sdk/obf/ib;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    const-string v0, "BankCard"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/eg;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eb;Lcom/baidu/bdgame/sdk/obf/ib;)Lcom/baidu/bdgame/sdk/obf/ib;
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->m:Lcom/baidu/bdgame/sdk/obf/ib;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eb;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/eb;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eb;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eb;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/ib;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->m:Lcom/baidu/bdgame/sdk/obf/ib;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/eb;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/eb;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 121
    const-string v0, "BankCard"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->l()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/eb$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/eb$3;-><init>(Lcom/baidu/bdgame/sdk/obf/eb;)V

    invoke-static {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/ec;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V

    .line 133
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eb;->h()V

    .line 136
    :cond_1f
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/eb;)V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eb;->k()V

    return-void
.end method

.method private i()V
    .registers 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eb;->e()V

    .line 50
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eb;->k()V

    .line 51
    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eb;->l()V

    .line 55
    return-void
.end method

.method private k()V
    .registers 8

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->N()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eb;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/eb;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/eb;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/eb;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/eb$1;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/eb$1;-><init>(Lcom/baidu/bdgame/sdk/obf/eb;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 90
    if-nez v0, :cond_37

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->O()V

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 95
    :cond_37
    return-void
.end method

.method private l()V
    .registers 7

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/eb$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/eb$2;-><init>(Lcom/baidu/bdgame/sdk/obf/eb;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Lcom/baidu/bdgame/sdk/obf/ee;)V

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eb;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dm;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/eb;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Ljava/util/List;JJ)V

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->b(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 139
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 140
    packed-switch p1, :pswitch_data_c

    .line 145
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 147
    :goto_7
    return-object v0

    .line 142
    :pswitch_8
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->a:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_7

    .line 140
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public a()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eg;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->k:Lcom/baidu/bdgame/sdk/obf/eg;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 42
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eb;->i()V

    .line 46
    :goto_23
    return-void

    .line 44
    :cond_24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eb;->j()V

    goto :goto_23
.end method
