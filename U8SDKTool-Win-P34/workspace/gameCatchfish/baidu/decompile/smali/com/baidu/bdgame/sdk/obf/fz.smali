.class public Lcom/baidu/bdgame/sdk/obf/fz;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:Lcom/baidu/bdgame/sdk/obf/jd;

.field private k:Lcom/baidu/bdgame/sdk/obf/ee;

.field private l:Lcom/baidu/bdgame/sdk/obf/fn;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fy;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/fy;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fz;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->d(I)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->b(Z)V

    .line 36
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fz;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_cashcard_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->f(I)V

    .line 38
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fz;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_other"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->e(I)V

    .line 40
    return-object v0
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/it;->a()V

    .line 224
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->l:Lcom/baidu/bdgame/sdk/obf/fn;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->l:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->l:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->a()I

    .line 227
    :cond_14
    return-void
.end method

.method public a(F)V
    .registers 4

    .prologue
    .line 85
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/fz;->a(J)V

    .line 86
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 60
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/fz;->a:I

    .line 61
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fz;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->k:Lcom/baidu/bdgame/sdk/obf/ee;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->k:Lcom/baidu/bdgame/sdk/obf/ee;

    invoke-interface {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ee;->a(J)V

    .line 76
    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ee;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fz;->k:Lcom/baidu/bdgame/sdk/obf/ee;

    .line 209
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fz;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 111
    return-void
.end method

.method public a(Ljava/util/List;JJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 198
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fz;->d:Ljava/util/List;

    .line 199
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->c:[Ljava/lang/String;

    .line 200
    iput-wide p2, p0, Lcom/baidu/bdgame/sdk/obf/fz;->h:J

    .line 201
    invoke-static {p4, p5}, Lcom/baidu/bdgame/sdk/obf/ix;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->i:J

    .line 202
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 91
    if-eqz p1, :cond_8

    .line 92
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fz;->g()V

    .line 94
    :cond_8
    return-void
.end method

.method public b(I)J
    .registers 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->d:Ljava/util/List;

    if-nez v0, :cond_7

    .line 171
    const-wide/16 v0, 0x0

    .line 173
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fy;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/fy;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fz;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->d(I)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->b(Z)V

    .line 48
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fz;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_cashcard"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->f(I)V

    .line 50
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fz;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_other"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fy;->e(I)V

    .line 52
    return-object v0
.end method

.method public b(F)Z
    .registers 6

    .prologue
    .line 131
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fz;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public c(F)Z
    .registers 6

    .prologue
    .line 151
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fz;->h:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public d(F)I
    .registers 10

    .prologue
    .line 183
    const/4 v2, -0x1

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->d:Ljava/util/List;

    if-nez v0, :cond_7

    move v1, v2

    .line 193
    :cond_6
    :goto_6
    return v1

    .line 187
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 188
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v4

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_29
    move v1, v2

    .line 193
    goto :goto_6
.end method

.method public d(I)V
    .registers 5

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->l:Lcom/baidu/bdgame/sdk/obf/fn;

    if-nez v0, :cond_11

    .line 215
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fz;->l()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/gi;->b:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-direct {v0, v1, v2, p1}, Lcom/baidu/bdgame/sdk/obf/fn;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/gi;I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->l:Lcom/baidu/bdgame/sdk/obf/fn;

    .line 218
    :cond_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->l:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->show()V

    .line 219
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->a:I

    return v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fz;->b(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 5

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_exchange_ratio"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fz;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fz;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->i:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fz;->h:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
