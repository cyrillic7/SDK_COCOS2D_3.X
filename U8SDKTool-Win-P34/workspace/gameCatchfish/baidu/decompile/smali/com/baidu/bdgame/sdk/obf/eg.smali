.class public Lcom/baidu/bdgame/sdk/obf/eg;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/bdgame/sdk/obf/ee;

.field private d:[Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:Lcom/baidu/bdgame/sdk/obf/jd;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    .line 31
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ef;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/eg;)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_layout_paymode_name_other_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ef;->f(I)V

    .line 35
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_paycontent_card_other"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ef;->e(I)V

    .line 37
    return-object v0
.end method

.method public a(F)V
    .registers 4

    .prologue
    .line 86
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/eg;->a(J)V

    .line 87
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/eg;->a:I

    .line 56
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/eg;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->c:Lcom/baidu/bdgame/sdk/obf/ee;

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->c:Lcom/baidu/bdgame/sdk/obf/ee;

    invoke-interface {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ee;->a(J)V

    .line 77
    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ee;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eg;->c:Lcom/baidu/bdgame/sdk/obf/ee;

    .line 111
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eg;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 123
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
    .line 210
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eg;->h:Ljava/util/List;

    .line 211
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->d:[Ljava/lang/String;

    .line 212
    iput-wide p2, p0, Lcom/baidu/bdgame/sdk/obf/eg;->i:J

    .line 213
    invoke-static {p4, p5}, Lcom/baidu/bdgame/sdk/obf/ix;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->j:J

    .line 214
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 92
    if-eqz p1, :cond_8

    .line 93
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eg;->g()V

    .line 95
    :cond_8
    return-void
.end method

.method public b(I)J
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->h:Ljava/util/List;

    if-nez v0, :cond_7

    .line 183
    const-wide/16 v0, 0x0

    .line 185
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->h:Ljava/util/List;

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
    .line 42
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ef;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/eg;)V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_layout_paymode_name_other"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ef;->f(I)V

    .line 46
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_paycontent_card_other"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ef;->e(I)V

    .line 48
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eg;->l:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public b(F)Z
    .registers 6

    .prologue
    .line 143
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/eg;->j:J

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
    .line 163
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/eg;->i:J

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
    .line 195
    const/4 v2, -0x1

    .line 196
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->h:Ljava/util/List;

    if-nez v0, :cond_7

    move v1, v2

    .line 205
    :cond_6
    :goto_6
    return v1

    .line 199
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 200
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v4

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 199
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_29
    move v1, v2

    .line 205
    goto :goto_6
.end method

.method public f()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->a:I

    return v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->h:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/eg;->b(Ljava/lang/Object;)V

    .line 105
    :goto_8
    return-void

    .line 102
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eg;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->d(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eg;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    goto :goto_8
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 5

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_exchange_ratio"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/eg;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/eg;->k:Lcom/baidu/bdgame/sdk/obf/jd;

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
    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->j:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->i:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eg;->l:Ljava/lang/String;

    return-object v0
.end method
