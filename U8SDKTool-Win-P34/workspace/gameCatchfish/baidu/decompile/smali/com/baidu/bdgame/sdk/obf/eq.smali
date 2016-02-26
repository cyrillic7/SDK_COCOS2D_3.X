.class public Lcom/baidu/bdgame/sdk/obf/eq;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;>;"
        }
    .end annotation
.end field

.field private h:Lcom/baidu/bdgame/sdk/obf/jd;

.field private i:Lcom/baidu/bdgame/sdk/obf/eo;

.field private j:Z

.field private k:J

.field private l:Lcom/baidu/bdgame/sdk/obf/jc;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 270
    const/16 v0, 0x1388

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->a:I

    .line 34
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/dm;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/em;

    .line 368
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/em;->e()Ljava/util/List;

    move-result-object v4

    .line 369
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_39

    .line 370
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/em;->b()D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    long-to-double v8, v8

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_35

    .line 371
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_35
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    .line 374
    :cond_39
    return-object v3
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eq;)V
    .registers 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->P()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/eq;IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/eq;->c(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)[J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 428
    if-nez p1, :cond_6

    .line 429
    new-array v0, v0, [J

    .line 435
    :goto_5
    return-object v0

    .line 431
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [J

    move v1, v0

    .line 432
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 433
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 432
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_23
    move-object v0, v2

    .line 435
    goto :goto_5
.end method

.method private b(II)J
    .registers 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_13

    .line 202
    :cond_10
    const-wide/16 v0, 0x0

    .line 204
    :goto_12
    return-wide v0

    :cond_13
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_12
.end method

.method private b(IILjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/eq;->b(II)J

    move-result-wide v6

    .line 72
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/eq$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/eq$1;-><init>(Lcom/baidu/bdgame/sdk/obf/eq;IILjava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v8, Lcom/baidu/bdgame/sdk/obf/eq$2;

    invoke-direct {v8, p0}, Lcom/baidu/bdgame/sdk/obf/eq$2;-><init>(Lcom/baidu/bdgame/sdk/obf/eq;)V

    .line 87
    long-to-double v2, v6

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->l(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 88
    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3d

    .line 94
    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    sub-long/2addr v2, v4

    .line 95
    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v5

    .line 97
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/iv$b;->a:Lcom/baidu/bdgame/sdk/obf/iv$b;

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->k(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bdgame/sdk/obf/eq;->a(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 112
    :goto_3c
    return-void

    .line 102
    :cond_3d
    long-to-double v2, v6

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->l(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v5

    .line 105
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/iv$b;->a:Lcom/baidu/bdgame/sdk/obf/iv$b;

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->k(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bdgame/sdk/obf/eq;->b(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_3c
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/eq;)V
    .registers 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->P()V

    return-void
.end method

.method private c(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->i:Lcom/baidu/bdgame/sdk/obf/eo;

    if-eqz v0, :cond_13

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->i:Lcom/baidu/bdgame/sdk/obf/eo;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->m(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/eq;->b(II)J

    move-result-wide v2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/eo;->a(Lcom/baidu/bdgame/sdk/obf/dm;JLjava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_13
    return-void
.end method

.method private k(I)Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/high16 v4, 0x4059000000000000L

    .line 245
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->l(I)D

    move-result-wide v0

    .line 246
    const-wide/high16 v2, 0x3ff0000000000000L

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->b(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 247
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->c(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 248
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->c(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 249
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->k()Landroid/content/Context;

    move-result-object v1

    const-string v3, "bdp_paycenter_tip_pay_dialog_exchange_tips"

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l(I)D
    .registers 4

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->m(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/em;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/em;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method private m(I)Lcom/baidu/bdgame/sdk/obf/dm;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/em;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    return-object v0
.end method

.method private q()V
    .registers 9

    .prologue
    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->b:Ljava/util/List;

    .line 327
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->d:Ljava/util/List;

    if-nez v0, :cond_c

    .line 357
    :cond_b
    return-void

    .line 332
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->c:Ljava/util/List;

    .line 333
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    .line 334
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/em;

    .line 335
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/em;->b()D

    move-result-wide v4

    .line 336
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    long-to-double v6, v6

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_19

    .line 337
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eq;->a(Lcom/baidu/bdgame/sdk/obf/dm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method private r()Z
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->h:Lcom/baidu/bdgame/sdk/obf/jd;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    .line 38
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ep;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/eq;)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Z)V

    .line 40
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_game_card_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->f(I)V

    .line 42
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_game"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->e(I)V

    .line 44
    return-object v0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/eq;->b(IILjava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_9
    return-void

    .line 63
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/eq;->c(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 413
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    .line 414
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 4

    .prologue
    .line 320
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/eq;->h:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 321
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->d:Ljava/util/List;

    .line 322
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->q()V

    .line 323
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/eo;)V
    .registers 2

    .prologue
    .line 396
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->i:Lcom/baidu/bdgame/sdk/obf/eo;

    .line 397
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jc;)V
    .registers 2

    .prologue
    .line 441
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->l:Lcom/baidu/bdgame/sdk/obf/jc;

    .line 442
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 126
    if-eqz p1, :cond_8

    .line 127
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->g()V

    .line 129
    :cond_8
    return-void
.end method

.method public a(II)Z
    .registers 7

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/eq;->b(II)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    .line 49
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ep;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ep;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/eq;)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->b(Z)V

    .line 51
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_game_card"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->f(I)V

    .line 53
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_game"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ep;->e(I)V

    .line 55
    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->m(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/eq;->j:Z

    .line 408
    return-void
.end method

.method public d(I)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->m(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->m(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/em;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/em;->c()Ljava/util/List;

    move-result-object v0

    .line 227
    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->j:Z

    return v0
.end method

.method public g(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->m(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/em;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/em;->d()Ljava/util/List;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eq;->b(Ljava/lang/Object;)V

    .line 139
    :goto_a
    return-void

    .line 136
    :cond_b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->d(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    goto :goto_a
.end method

.method public h(I)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x1388

    .line 274
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eq;->a(Ljava/util/List;)[J

    move-result-object v2

    move v0, v1

    .line 275
    :goto_10
    array-length v3, v2

    if-ge v0, v3, :cond_3e

    .line 276
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->f()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 292
    :cond_19
    :goto_19
    return v1

    .line 279
    :cond_1a
    aget-wide v4, v2, v0

    cmp-long v3, v4, v6

    if-nez v3, :cond_22

    move v1, v0

    .line 280
    goto :goto_19

    .line 281
    :cond_22
    aget-wide v4, v2, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3b

    .line 282
    aget-wide v4, v2, v0

    sub-long/2addr v4, v6

    .line 283
    if-lez v0, :cond_19

    .line 284
    add-int/lit8 v1, v0, -0x1

    aget-wide v2, v2, v1

    sub-long v2, v6, v2

    .line 285
    cmp-long v1, v4, v2

    if-lez v1, :cond_39

    add-int/lit8 v0, v0, -0x1

    :cond_39
    move v1, v0

    goto :goto_19

    .line 275
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 292
    :cond_3e
    array-length v0, v2

    add-int/lit8 v1, v0, -0x1

    goto :goto_19
.end method

.method public i(I)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_pay_money_unit"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/eq;->k:J

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_exchange_ratio"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eq;->h:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/eq;->h:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public j(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_current_consume_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eq;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_pay_select_card_amount_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/eq;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public o()I
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public p()Lcom/baidu/bdgame/sdk/obf/jc;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eq;->l:Lcom/baidu/bdgame/sdk/obf/jc;

    return-object v0
.end method
