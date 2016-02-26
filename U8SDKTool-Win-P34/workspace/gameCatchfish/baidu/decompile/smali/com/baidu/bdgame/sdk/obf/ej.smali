.class public abstract Lcom/baidu/bdgame/sdk/obf/ej;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/baidu/bdgame/sdk/obf/ce;

.field protected b:Lcom/baidu/bdgame/sdk/obf/el;

.field protected c:Lcom/baidu/bdgame/sdk/obf/jd;

.field protected d:Lcom/baidu/bdgame/sdk/obf/dm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;"
        }
    .end annotation
.end field

.field protected e:Lcom/baidu/bdgame/sdk/obf/dp;

.field protected f:Lcom/baidu/bdgame/sdk/obf/je;

.field protected g:Lcom/baidu/bdgame/sdk/obf/iy;

.field protected h:Lcom/baidu/bdgame/sdk/obf/iz;

.field protected i:J

.field protected j:Lcom/baidu/bdgame/sdk/obf/jj;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/dm;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dp;->d()Ljava/util/List;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v2

    .line 128
    :goto_e
    return-object v0

    .line 123
    :cond_f
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 124
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 125
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/dm;

    goto :goto_e

    .line 123
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_32
    move-object v0, v2

    .line 128
    goto :goto_e
.end method

.method protected abstract a(I)Lcom/baidu/bdgame/sdk/obf/jn;
.end method

.method protected abstract a()V
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 180
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jj;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ej;->a(I)Lcom/baidu/bdgame/sdk/obf/jn;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ej;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/ej;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/dm;->f()I

    move-result v5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/bdgame/sdk/obf/jj;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/jn;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->j:Lcom/baidu/bdgame/sdk/obf/jj;

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->j:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jj;->a()V

    .line 185
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->i:J

    .line 85
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 53
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/dp;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->e:Lcom/baidu/bdgame/sdk/obf/dp;

    .line 65
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/el;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->b:Lcom/baidu/bdgame/sdk/obf/el;

    .line 162
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 73
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iz;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->h:Lcom/baidu/bdgame/sdk/obf/iz;

    .line 81
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 61
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/je;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->f:Lcom/baidu/bdgame/sdk/obf/je;

    .line 69
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->k:Z

    .line 90
    return-void
.end method

.method protected b(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 188
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jj;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ej;->a(I)Lcom/baidu/bdgame/sdk/obf/jn;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    const/4 v4, 0x0

    const/16 v5, 0x1e

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/bdgame/sdk/obf/jj;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/jn;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->j:Lcom/baidu/bdgame/sdk/obf/jj;

    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->j:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jj;->a()V

    .line 192
    return-void
.end method

.method protected abstract b()Z
.end method

.method public c()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method protected d()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->k:Z

    return v0
.end method

.method protected e()V
    .registers 5

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    .line 110
    :goto_d
    return-void

    .line 108
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/jd;->b(J)V

    goto :goto_d
.end method

.method public f()V
    .registers 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->b()Z

    move-result v0

    if-nez v0, :cond_21

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_paycenter_channel_check_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    :goto_20
    return-void

    .line 137
    :cond_21
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ej;->a()V

    goto :goto_20
.end method

.method public g()V
    .registers 1

    .prologue
    .line 158
    return-void
.end method

.method protected h()V
    .registers 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/PayOrderInfo;

    .line 200
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_passport_pay_submit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    const/16 v3, -0xbbb

    invoke-virtual {v2, v3, v1, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    return-void
.end method
