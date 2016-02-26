.class public Lcom/baidu/bdgame/sdk/obf/de;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/cn;

.field private b:Lcom/baidu/bdgame/sdk/obf/dp;

.field private c:Lcom/baidu/bdgame/sdk/obf/dp;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/de;)Lcom/baidu/bdgame/sdk/obf/cn;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/de;Lcom/baidu/bdgame/sdk/obf/dq;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/de;->a(Lcom/baidu/bdgame/sdk/obf/dq;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/dq;)V
    .registers 5

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dq;->b()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/de;->d(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 76
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dq;->a()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/de;->f(Lcom/baidu/bdgame/sdk/obf/dp;)Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/de;->e(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 78
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dq;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/de;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/de;->a(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->c()Z

    move-result v0

    if-nez v0, :cond_41

    :cond_2b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 87
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/de;->e(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 91
    :cond_41
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/de;->l()V

    .line 93
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/de;->n()V

    .line 96
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/de;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/de;->m()V

    return-void
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    if-nez p1, :cond_4

    .line 191
    const/4 v0, 0x0

    .line 208
    :goto_3
    return-object v0

    .line 194
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    .line 197
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/baidu/bdgame/sdk/obf/dr;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 195
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 201
    :cond_2f
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/cn;->B()Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v4

    invoke-static {v3, v0, v4, v5}, Lcom/baidu/bdgame/sdk/obf/dr;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z

    move-result v3

    .line 203
    if-eqz v3, :cond_2b

    .line 204
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_49
    move-object v0, v2

    .line 208
    goto :goto_3
.end method

.method private f(Lcom/baidu/bdgame/sdk/obf/dp;)Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 171
    if-nez p1, :cond_5

    move-object p1, v0

    .line 183
    :cond_4
    :goto_4
    return-object p1

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object p1, v0

    .line 176
    goto :goto_4

    .line 178
    :cond_1b
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->B()Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/dr;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z

    move-result v1

    .line 180
    if-nez v1, :cond_4

    move-object p1, v0

    .line 183
    goto :goto_4
.end method

.method private g(Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private l()V
    .registers 3

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->e:Ljava/util/List;

    .line 103
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_16
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_2f
    return-void
.end method

.method private m()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->f()V

    .line 116
    return-void
.end method

.method private n()V
    .registers 5

    .prologue
    .line 122
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cv;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/cv;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->j()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/de$2;

    invoke-direct {v3, p0}, Lcom/baidu/bdgame/sdk/obf/de$2;-><init>(Lcom/baidu/bdgame/sdk/obf/de;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Lcom/baidu/bdgame/sdk/obf/cn;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/de$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/de$1;-><init>(Lcom/baidu/bdgame/sdk/obf/de;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 67
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/dp;)V

    .line 141
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/de;->d:Ljava/util/List;

    .line 356
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/de;->e:Ljava/util/List;

    .line 365
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v1

    if-nez v1, :cond_a

    .line 155
    :cond_9
    :goto_9
    return v0

    .line 152
    :cond_a
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 155
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->c()Z

    move-result v0

    goto :goto_9
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 5

    .prologue
    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->p()Z

    move-result v0

    if-nez v0, :cond_a

    .line 220
    const/4 v0, 0x1

    .line 243
    :goto_9
    return v0

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->I()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 224
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/de;->g(Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 225
    const/4 v0, 0x0

    goto :goto_9

    .line 228
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->o()J

    move-result-wide v0

    .line 229
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 230
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z

    move-result v0

    goto :goto_9

    .line 233
    :cond_37
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z

    move-result v0

    goto :goto_9

    .line 238
    :cond_42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->B()Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v0

    .line 239
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 240
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z

    move-result v0

    goto :goto_9

    .line 243
    :cond_63
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z

    move-result v0

    goto :goto_9
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cv;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 4

    .prologue
    .line 269
    const-string v0, "GameCardPay"

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "RechargeCardPay"

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public d()Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 5

    .prologue
    .line 276
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaiduPay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 281
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v2

    .line 284
    :cond_1b
    if-nez v2, :cond_54

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 285
    const/4 v0, 0x0

    move v1, v0

    :goto_25
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 286
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BaiduPay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 288
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    .line 293
    :goto_4f
    return-object v0

    .line 285
    :cond_50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_54
    move-object v0, v2

    goto :goto_4f
.end method

.method public d(Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 2

    .prologue
    .line 326
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/de;->b:Lcom/baidu/bdgame/sdk/obf/dp;

    .line 327
    return-void
.end method

.method public e()Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 5

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AliPay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 303
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->h()Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v2

    .line 306
    :cond_1b
    if-nez v2, :cond_54

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 307
    const/4 v0, 0x0

    move v1, v0

    :goto_25
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 308
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AliPay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 310
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/de;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    .line 315
    :goto_4f
    return-object v0

    .line 307
    :cond_50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_54
    move-object v0, v2

    goto :goto_4f
.end method

.method public e(Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 2

    .prologue
    .line 343
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/de;->c:Lcom/baidu/bdgame/sdk/obf/dp;

    .line 344
    return-void
.end method

.method public f()Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->b:Lcom/baidu/bdgame/sdk/obf/dp;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->c:Lcom/baidu/bdgame/sdk/obf/dp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public h()Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->c:Lcom/baidu/bdgame/sdk/obf/dp;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->d:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->e:Ljava/util/List;

    return-object v0
.end method

.method public k()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 383
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->b:Lcom/baidu/bdgame/sdk/obf/dp;

    .line 384
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->c:Lcom/baidu/bdgame/sdk/obf/dp;

    .line 386
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->d:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 387
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->d:Ljava/util/List;

    .line 390
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->e:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 391
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/de;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/de;->e:Ljava/util/List;

    .line 394
    :cond_1b
    return-void
.end method
