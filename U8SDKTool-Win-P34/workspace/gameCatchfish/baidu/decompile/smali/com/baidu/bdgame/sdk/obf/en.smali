.class public Lcom/baidu/bdgame/sdk/obf/en;
.super Lcom/baidu/bdgame/sdk/obf/ei;
.source "SourceFile"


# instance fields
.field protected k:Lcom/baidu/bdgame/sdk/obf/il;

.field private l:Lcom/baidu/bdgame/sdk/obf/eq;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ei;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/en;)Lcom/baidu/bdgame/sdk/obf/eq;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    return-object v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/dm;JLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/em;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jd;->a(J)V

    .line 80
    :cond_d
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/en;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->N()V

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/en;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/en;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/en;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v8, Lcom/baidu/bdgame/sdk/obf/en$2;

    invoke-direct {v8, p0}, Lcom/baidu/bdgame/sdk/obf/en$2;-><init>(Lcom/baidu/bdgame/sdk/obf/en;)V

    move-object v1, p1

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v8}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 109
    if-nez v0, :cond_4c

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->O()V

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 113
    :cond_4c
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/en;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/en;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/en;Lcom/baidu/bdgame/sdk/obf/dm;JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/baidu/bdgame/sdk/obf/en;->a(Lcom/baidu/bdgame/sdk/obf/dm;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/en;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/en;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 116
    if-nez p1, :cond_5

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_4
.end method

.method public a()V
    .registers 3

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eq;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 37
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/en;->i()V

    .line 38
    return-void
.end method

.method public i()V
    .registers 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 42
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/en;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/en;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/eq;->a(J)V

    .line 51
    :goto_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/eq;->a(Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->b(Z)V

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/en$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/en$1;-><init>(Lcom/baidu/bdgame/sdk/obf/en;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eq;->a(Lcom/baidu/bdgame/sdk/obf/eo;)V

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 73
    return-void

    .line 45
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/en;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/eq;->a(J)V

    goto :goto_15

    .line 48
    :cond_48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/en;->l:Lcom/baidu/bdgame/sdk/obf/eq;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/eq;->a(J)V

    goto :goto_15
.end method
