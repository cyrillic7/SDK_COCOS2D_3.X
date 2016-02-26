.class public Lcom/baidu/bdgame/sdk/obf/fa;
.super Lcom/baidu/bdgame/sdk/obf/ek;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "Mo9Credit"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/fc;

.field private l:Lcom/baidu/bdgame/sdk/obf/hn;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const-string v0, "Mo9Credit"

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/fc;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fa;Lcom/baidu/bdgame/sdk/obf/hn;)Lcom/baidu/bdgame/sdk/obf/hn;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->l:Lcom/baidu/bdgame/sdk/obf/hn;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fa;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fa;->m()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/hn;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->l:Lcom/baidu/bdgame/sdk/obf/hn;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/fa;)Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/fa;)V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fa;->k()V

    return-void
.end method

.method private i()V
    .registers 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fa;->e()V

    .line 52
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fa;->k()V

    .line 53
    return-void
.end method

.method private j()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fa;->l()V

    .line 57
    return-void
.end method

.method private k()V
    .registers 8

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->N()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fa;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fa;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fa;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fa;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/fa$1;

    invoke-direct {v6, p0}, Lcom/baidu/bdgame/sdk/obf/fa$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fa;)V

    invoke-static/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 92
    if-nez v0, :cond_37

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->O()V

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 96
    :cond_37
    return-void
.end method

.method private l()V
    .registers 7

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fa$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fa$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fa;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fc;->a(Lcom/baidu/bdgame/sdk/obf/ee;)V

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fc;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fa;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dm;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fa;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/fc;->a(Ljava/util/List;JJ)V

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 122
    const-string v0, "Mo9Credit"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 123
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fa;->n()V

    .line 125
    :cond_11
    return-void
.end method

.method private n()V
    .registers 4

    .prologue
    .line 128
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eh;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eh;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 130
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->l:Lcom/baidu/bdgame/sdk/obf/hn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/hn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eh;->c(Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fa$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fa$3;-><init>(Lcom/baidu/bdgame/sdk/obf/fa;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eh;->a(Lcom/baidu/bdgame/sdk/obf/ji;)V

    .line 139
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 145
    sparse-switch p1, :sswitch_data_10

    .line 153
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    :goto_5
    return-object v0

    .line 147
    :sswitch_6
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_5

    .line 149
    :sswitch_9
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->a:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_5

    .line 151
    :sswitch_c
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_5

    .line 145
    nop

    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_9
        0x3e8 -> :sswitch_c
    .end sparse-switch
.end method

.method public a()V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fc;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fc;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->k:Lcom/baidu/bdgame/sdk/obf/fc;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fc;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 44
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fa;->i()V

    .line 48
    :goto_23
    return-void

    .line 46
    :cond_24
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fa;->j()V

    goto :goto_23
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 157
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_23

    .line 158
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jj;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fa;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fa;->a(I)Lcom/baidu/bdgame/sdk/obf/jn;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fa;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fa;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fa;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/dm;->f()I

    move-result v5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/bdgame/sdk/obf/jj;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/jn;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->j:Lcom/baidu/bdgame/sdk/obf/jj;

    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fa;->j:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jj;->b()V

    .line 165
    :goto_22
    return-void

    .line 163
    :cond_23
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ek;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method
