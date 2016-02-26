.class public Lcom/baidu/bdgame/sdk/obf/es;
.super Lcom/baidu/bdgame/sdk/obf/ek;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String; = "Bean91"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/ey;

.field private l:Lcom/baidu/bdgame/sdk/obf/hf;

.field private m:Lcom/baidu/bdgame/sdk/obf/hd;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "Bean91"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/ey;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/es;Lcom/baidu/bdgame/sdk/obf/hd;)Lcom/baidu/bdgame/sdk/obf/hd;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/es;->m:Lcom/baidu/bdgame/sdk/obf/hd;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/es;Lcom/baidu/bdgame/sdk/obf/hf;)Lcom/baidu/bdgame/sdk/obf/hf;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/es;->l:Lcom/baidu/bdgame/sdk/obf/hf;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/es;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/es;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/es;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/es;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/es;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/es;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->j()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/es;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/es;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->A()V

    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->N()V

    .line 259
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/es$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/es$6;-><init>(Lcom/baidu/bdgame/sdk/obf/es;)V

    invoke-static {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bm;->c(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 282
    if-nez v0, :cond_2e

    .line 283
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->O()V

    .line 284
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->x()V

    .line 285
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 288
    :cond_2e
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->m()V

    return-void
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/hf;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->l:Lcom/baidu/bdgame/sdk/obf/hf;

    return-object v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/es$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/es$1;-><init>(Lcom/baidu/bdgame/sdk/obf/es;)V

    .line 76
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_tips_query_balance"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ey;->f(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/bm;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 82
    if-nez v0, :cond_30

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->O()V

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 87
    :cond_30
    return-void
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/es;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->o:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->l()V

    .line 120
    :cond_b
    :goto_b
    return-void

    .line 93
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_91_bean"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const/4 v0, 0x0

    .line 97
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/es;->b:Lcom/baidu/bdgame/sdk/obf/el;

    if-eqz v2, :cond_23

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->b:Lcom/baidu/bdgame/sdk/obf/el;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/el;->a()Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    .line 100
    :cond_23
    if-eqz v0, :cond_b

    .line 103
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ey;->C()Lcom/baidu/bdgame/sdk/obf/cn$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/cn$a;)V

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_tip_bean_pay_title"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v3

    const-string v4, "bdp_paycenter_tip_balance_can_not_pay"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->m:Lcom/baidu/bdgame/sdk/obf/hd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/hd;->a()Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(Lcom/baidu/bdgame/sdk/obf/iw;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->n()V

    return-void
.end method

.method private k()Z
    .registers 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->m:Lcom/baidu/bdgame/sdk/obf/hd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hd;->a()Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->b(Lcom/baidu/bdgame/sdk/obf/iw;J)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->m:Lcom/baidu/bdgame/sdk/obf/hd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hd;->a()Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private l()V
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/es$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/es$2;-><init>(Lcom/baidu/bdgame/sdk/obf/es;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Lcom/baidu/bdgame/sdk/obf/eu;)V

    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jg;

    move-result-object v0

    .line 149
    if-nez v0, :cond_31

    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_tips_unlogin"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    :goto_30
    return-void

    .line 157
    :cond_31
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ey;->b(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 159
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->m:Lcom/baidu/bdgame/sdk/obf/hd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/hd;->a()Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Lcom/baidu/bdgame/sdk/obf/iw;)V

    .line 160
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->b(I)V

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    goto :goto_30
.end method

.method private m()V
    .registers 3

    .prologue
    .line 167
    const-string v0, "Bean91"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->m:Lcom/baidu/bdgame/sdk/obf/hd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hd;->b()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 170
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->o()V

    .line 176
    :cond_19
    :goto_19
    return-void

    .line 173
    :cond_1a
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->n()V

    goto :goto_19
.end method

.method private n()V
    .registers 7

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->N()V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/es;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/es;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/es;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/es$3;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/es$3;-><init>(Lcom/baidu/bdgame/sdk/obf/es;)V

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/bm;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 208
    if-nez v0, :cond_35

    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->O()V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 212
    :cond_35
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/es$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/es$4;-><init>(Lcom/baidu/bdgame/sdk/obf/es;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Lcom/baidu/bdgame/sdk/obf/ev;)V

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->x()V

    .line 234
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 235
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->p()V

    .line 237
    :cond_1a
    return-void
.end method

.method private p()V
    .registers 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/es$5;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/es$5;-><init>(Lcom/baidu/bdgame/sdk/obf/es;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    .line 254
    return-void
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 292
    if-nez p1, :cond_5

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->a:Lcom/baidu/bdgame/sdk/obf/jn;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_4
.end method

.method public a()V
    .registers 3

    .prologue
    .line 48
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ey;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ey;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es;->k:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x26

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 51
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/es;->i()V

    .line 52
    return-void
.end method
