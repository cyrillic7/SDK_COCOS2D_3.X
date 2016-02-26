.class public Lcom/baidu/bdgame/sdk/obf/fc;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/baidu/bdgame/sdk/obf/ee;

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


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fb;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/fb;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fc;)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fb;->b(Z)V

    .line 36
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fc;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_name_other_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fb;->f(I)V

    .line 38
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fc;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_other"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fb;->e(I)V

    .line 40
    return-object v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->b:Lcom/baidu/bdgame/sdk/obf/ee;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->b:Lcom/baidu/bdgame/sdk/obf/ee;

    invoke-interface {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ee;->a(J)V

    .line 74
    :cond_9
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ee;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fc;->b:Lcom/baidu/bdgame/sdk/obf/ee;

    .line 98
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fc;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 110
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
    .line 197
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fc;->d:Ljava/util/List;

    .line 198
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->c:[Ljava/lang/String;

    .line 199
    iput-wide p2, p0, Lcom/baidu/bdgame/sdk/obf/fc;->h:J

    .line 200
    invoke-static {p4, p5}, Lcom/baidu/bdgame/sdk/obf/ix;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->i:J

    .line 201
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_8

    .line 80
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fc;->g()V

    .line 82
    :cond_8
    return-void
.end method

.method public a(F)Z
    .registers 6

    .prologue
    .line 130
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fc;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

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
    .line 45
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fb;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/fb;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fc;)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fb;->b(Z)V

    .line 47
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fc;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_name_other"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fb;->f(I)V

    .line 49
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fc;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_other"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fb;->e(I)V

    .line 51
    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 61
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/fc;->a:I

    .line 62
    return-void
.end method

.method public b(F)Z
    .registers 6

    .prologue
    .line 150
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/fc;->h:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public c(F)I
    .registers 10

    .prologue
    .line 182
    const/4 v2, -0x1

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->d:Ljava/util/List;

    if-nez v0, :cond_7

    move v1, v2

    .line 192
    :cond_6
    :goto_6
    return v1

    .line 186
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 187
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v4

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_29
    move v1, v2

    .line 192
    goto :goto_6
.end method

.method public d(I)J
    .registers 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->d:Ljava/util/List;

    if-nez v0, :cond_7

    .line 170
    const-wide/16 v0, 0x0

    .line 172
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6
.end method

.method public f()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->a:I

    return v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->c:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fc;->b(Ljava/lang/Object;)V

    .line 92
    :goto_8
    return-void

    .line 89
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fc;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->d(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fc;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    goto :goto_8
.end method

.method public o()Ljava/lang/String;
    .registers 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fc;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_exchange_ratio"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fc;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fc;->j:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->i:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fc;->h:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
