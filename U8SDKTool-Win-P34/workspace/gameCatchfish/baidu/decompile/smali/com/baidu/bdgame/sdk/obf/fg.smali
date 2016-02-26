.class public Lcom/baidu/bdgame/sdk/obf/fg;
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

.field private i:Lcom/baidu/bdgame/sdk/obf/fh;

.field private j:J

.field private k:Z

.field private l:Lcom/baidu/bdgame/sdk/obf/jc;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 247
    const/16 v0, 0x1388

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->a:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->k:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fg;)V
    .registers 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->P()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fg;IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/fg;->c(IILjava/lang/String;Ljava/lang/String;)V

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

    .line 377
    if-nez p1, :cond_6

    .line 378
    new-array v0, v0, [J

    .line 384
    :goto_5
    return-object v0

    .line 380
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [J

    move v1, v0

    .line 381
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 382
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 381
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_23
    move-object v0, v2

    .line 384
    goto :goto_5
.end method

.method private b(II)J
    .registers 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 194
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_13

    .line 195
    :cond_10
    const-wide/16 v0, 0x0

    .line 197
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
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/fg;->b(II)J

    move-result-wide v6

    .line 74
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fg$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/fg$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fg;IILjava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v8, Lcom/baidu/bdgame/sdk/obf/fg$2;

    invoke-direct {v8, p0}, Lcom/baidu/bdgame/sdk/obf/fg$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fg;)V

    .line 89
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

    cmp-long v1, v6, v2

    if-ltz v1, :cond_34

    .line 91
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

    sub-long v2, v6, v2

    .line 92
    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v5

    .line 94
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/iv$b;->b:Lcom/baidu/bdgame/sdk/obf/iv$b;

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bdgame/sdk/obf/fg;->a(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 106
    :goto_33
    return-void

    .line 99
    :cond_34
    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v5

    .line 100
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/iv$b;->b:Lcom/baidu/bdgame/sdk/obf/iv$b;

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bdgame/sdk/obf/fg;->b(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_33
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fg;)V
    .registers 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->P()V

    return-void
.end method

.method private c(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->i:Lcom/baidu/bdgame/sdk/obf/fh;

    if-eqz v0, :cond_13

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->i:Lcom/baidu/bdgame/sdk/obf/fh;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fg;->k(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/fg;->b(II)J

    move-result-wide v2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/fh;->a(Lcom/baidu/bdgame/sdk/obf/dm;JLjava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_13
    return-void
.end method

.method private k(I)Lcom/baidu/bdgame/sdk/obf/dm;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    return-object v0
.end method

.method private l(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fg;->k(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fd;->b()Ljava/util/List;

    move-result-object v3

    .line 334
    const/4 v0, 0x0

    move v1, v0

    :goto_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 335
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_32

    .line 336
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 339
    :cond_36
    return-object v2
.end method

.method private q()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->b:Ljava/util/List;

    .line 304
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->d:Ljava/util/List;

    if-nez v0, :cond_d

    .line 322
    :cond_c
    return-void

    :cond_d
    move v1, v2

    .line 307
    :goto_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    .line 308
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->h()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_33

    .line 309
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fg;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 312
    :cond_37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->c:Ljava/util/List;

    .line 313
    :goto_3e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 315
    :try_start_46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->c:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/baidu/bdgame/sdk/obf/fg;->l(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_52

    .line 313
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 316
    :catch_52
    move-exception v0

    .line 317
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->c:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f
.end method

.method private r()Z
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->h:Lcom/baidu/bdgame/sdk/obf/jd;

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
    .line 40
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ff;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fg;)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->b(Z)V

    .line 42
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_czcard_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->f(I)V

    .line 44
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_chongzhi"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->e(I)V

    .line 46
    return-object v0
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/fg;->b(IILjava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_9
    return-void

    .line 65
    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/fg;->c(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 356
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

    .line 357
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/dp;Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 4

    .prologue
    .line 297
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fg;->h:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 298
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/dp;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->d:Ljava/util/List;

    .line 299
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->q()V

    .line 300
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/fh;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->i:Lcom/baidu/bdgame/sdk/obf/fh;

    .line 351
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jc;)V
    .registers 2

    .prologue
    .line 390
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->l:Lcom/baidu/bdgame/sdk/obf/jc;

    .line 391
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 120
    if-eqz p1, :cond_8

    .line 121
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->g()V

    .line 123
    :cond_8
    return-void
.end method

.method public a(II)Z
    .registers 7

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/fg;->b(II)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

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
    .line 51
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ff;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ff;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fg;)V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->b(Z)V

    .line 53
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_czcard"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->f(I)V

    .line 55
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_chongzhi"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ff;->e(I)V

    .line 57
    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fg;->k(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/fg;->k:Z

    .line 363
    return-void
.end method

.method public d(I)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->c:Ljava/util/List;

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
    .line 207
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fg;->k(I)Lcom/baidu/bdgame/sdk/obf/dm;

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
    .line 217
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fg;->k(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fd;->c()Ljava/util/List;

    move-result-object v0

    .line 220
    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->k:Z

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
    .line 230
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fg;->k(I)Lcom/baidu/bdgame/sdk/obf/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fd;->d()Ljava/util/List;

    move-result-object v0

    .line 233
    return-object v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fg;->b(Ljava/lang/Object;)V

    .line 133
    :goto_a
    return-void

    .line 130
    :cond_b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->d(Landroid/content/Context;)V

    .line 131
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    goto :goto_a
.end method

.method public h(I)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x1388

    .line 251
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fg;->a(Ljava/util/List;)[J

    move-result-object v2

    move v0, v1

    .line 252
    :goto_10
    array-length v3, v2

    if-ge v0, v3, :cond_3e

    .line 253
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->f()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 269
    :cond_19
    :goto_19
    return v1

    .line 256
    :cond_1a
    aget-wide v4, v2, v0

    cmp-long v3, v4, v6

    if-nez v3, :cond_22

    move v1, v0

    .line 257
    goto :goto_19

    .line 258
    :cond_22
    aget-wide v4, v2, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3b

    .line 259
    aget-wide v4, v2, v0

    sub-long/2addr v4, v6

    .line 260
    if-lez v0, :cond_19

    .line 261
    add-int/lit8 v1, v0, -0x1

    aget-wide v2, v2, v1

    sub-long v2, v6, v2

    .line 262
    cmp-long v1, v4, v2

    if-lez v1, :cond_39

    add-int/lit8 v0, v0, -0x1

    :cond_39
    move v1, v0

    goto :goto_19

    .line 252
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 269
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

    .line 273
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_pay_money_unit"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fg;->j:J

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_exchange_ratio"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fg;->h:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fg;->h:Lcom/baidu/bdgame/sdk/obf/jd;

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
    .line 281
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_current_consume_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_pay_select_card_amount_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fg;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public o()I
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public p()Lcom/baidu/bdgame/sdk/obf/jc;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fg;->l:Lcom/baidu/bdgame/sdk/obf/jc;

    return-object v0
.end method
