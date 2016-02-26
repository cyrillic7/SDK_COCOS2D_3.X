.class public final Lcom/baidu/bdgame/sdk/obf/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 3

    .prologue
    .line 142
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    :goto_6
    return-void

    .line 146
    :cond_7
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lg;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6
.end method

.method static synthetic a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dq;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dr;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dq;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/n;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dn;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/dn;-><init>()V

    .line 35
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/dr$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr$1;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-virtual {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 67
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->i(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->d()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 213
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 214
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    .line 215
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-ltz v4, :cond_24

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->g()J

    move-result-wide v4

    cmp-long v0, v4, p2

    if-gtz v0, :cond_24

    .line 217
    const/4 v2, 0x1

    .line 220
    :cond_23
    return v2

    .line 213
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 5

    .prologue
    .line 164
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .registers 6
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
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 74
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    .line 75
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->c()I

    move-result v4

    if-eqz v4, :cond_25

    .line 76
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 78
    :cond_25
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 82
    :cond_29
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    return-object v2
.end method

.method private static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dq;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dq;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/dq;->a(Ljava/util/List;)V

    .line 93
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/bdgame/sdk/obf/p;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->j(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 3

    .prologue
    .line 150
    const-string v0, "FreeBaiduBean"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 230
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->d()Ljava/util/List;

    move-result-object v4

    move v2, v3

    .line 231
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 232
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    .line 233
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/em;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/em;->b()D

    move-result-wide v8

    mul-double/2addr v6, v8

    long-to-double v8, p2

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_37

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->g()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_37

    .line 235
    const/4 v3, 0x1

    .line 239
    :cond_36
    return v3

    .line 231
    :cond_37
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c
.end method

.method static synthetic c(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->k(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 3

    .prologue
    .line 160
    const-string v0, "Bean91Pay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;J)Z
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->d()Ljava/util/List;

    move-result-object v4

    .line 254
    const-string v0, "Mo9Pay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v1, v2

    .line 255
    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 256
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    .line 257
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v6

    cmp-long v0, v6, p2

    if-ltz v0, :cond_25

    move v2, v3

    .line 264
    :cond_24
    :goto_24
    return v2

    .line 255
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_29
    move v2, v3

    .line 264
    goto :goto_24
.end method

.method static synthetic d(Landroid/content/Context;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->l(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 3

    .prologue
    .line 179
    const-string v0, "KubiPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 3

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->g(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 3

    .prologue
    .line 190
    const-string v0, "QuickPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 3

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->h(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 3

    .prologue
    .line 201
    const-string v0, "YiBaoCashCardPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    return v0
.end method

.method private static g(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/dp;"
        }
    .end annotation

    .prologue
    .line 277
    const/4 v2, 0x0

    .line 278
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 279
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dr;->i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 280
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    .line 281
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    :goto_1e
    return-object v0

    .line 278
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_23
    move-object v0, v2

    goto :goto_1e
.end method

.method public static g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 3

    .prologue
    .line 269
    const-string v0, "BaiduPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    return v0
.end method

.method private static h(Landroid/content/Context;Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/dp;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/dp;"
        }
    .end annotation

    .prologue
    .line 289
    const/4 v2, 0x0

    .line 290
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 291
    const-string v3, "BaiduBeanPay"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-static {p0, v3, v0}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 292
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    .line 293
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 297
    :goto_20
    return-object v0

    .line 290
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_25
    move-object v0, v2

    goto :goto_20
.end method

.method public static h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 3

    .prologue
    .line 273
    const-string v0, "GameCardPay"

    invoke-static {p0, v0, p1}, Lcom/baidu/bdgame/sdk/obf/dr;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    return v0
.end method

.method private static i(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 303
    if-nez v0, :cond_b

    .line 315
    :cond_a
    return-void

    .line 306
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v0

    .line 307
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_a

    .line 310
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dr;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 311
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    :cond_2e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d
.end method

.method private static i(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z
    .registers 4

    .prologue
    .line 369
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lg;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method private static j(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 319
    if-nez v0, :cond_b

    .line 331
    :cond_a
    return-void

    .line 322
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v0

    .line 323
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1d
    if-ltz v1, :cond_a

    .line 326
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dr;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 327
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 325
    :cond_2e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1d
.end method

.method private static k(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 341
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_11
    if-ltz v1, :cond_32

    .line 342
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dr;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dr;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 344
    :cond_2b
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 341
    :cond_2e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    .line 348
    :cond_32
    return-void
.end method

.method private static l(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 352
    if-nez v0, :cond_b

    .line 366
    :cond_a
    :goto_a
    return-void

    .line 355
    :cond_b
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v0

    .line 356
    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 358
    :cond_19
    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 359
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dr;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dp;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 360
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dp;

    .line 361
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 358
    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b
.end method
