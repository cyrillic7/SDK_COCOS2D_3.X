.class public Lcom/baidu/bdgame/sdk/obf/fu;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/baidu/bdgame/sdk/obf/gk;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/baidu/bdgame/sdk/obf/gm;

.field private i:Lcom/baidu/bdgame/sdk/obf/gj;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/baidu/bdgame/sdk/obf/fo;

.field private m:Lcom/baidu/bdgame/sdk/obf/fn;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->n:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 42
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ft;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fu;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ft;->d(I)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ft;->b(Z)V

    .line 45
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_cashcard_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ft;->f(I)V

    .line 47
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_cashcard_bind_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ft;->e(I)V

    .line 49
    return-object v0
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/it;->a()V

    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->a()I

    .line 200
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 201
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->a()I

    .line 203
    :cond_25
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->a:J

    .line 113
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gj;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->i:Lcom/baidu/bdgame/sdk/obf/gj;

    .line 148
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gk;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->c:Lcom/baidu/bdgame/sdk/obf/gk;

    .line 131
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gm;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->h:Lcom/baidu/bdgame/sdk/obf/gm;

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 161
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->j:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fu;->k:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->c:Lcom/baidu/bdgame/sdk/obf/gk;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->c:Lcom/baidu/bdgame/sdk/obf/gk;

    invoke-interface {v0, p1, p3, p4, p2}, Lcom/baidu/bdgame/sdk/obf/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_9
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->d:Ljava/util/List;

    .line 101
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 67
    if-eqz p1, :cond_8

    .line 68
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fu;->g()V

    .line 70
    :cond_8
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 54
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ft;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ft;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/fu;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ft;->d(I)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ft;->b(Z)V

    .line 57
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_cashcard"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ft;->f(I)V

    .line 59
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_paycontent_card_cashcard_bind"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ft;->e(I)V

    .line 61
    return-object v0
.end method

.method public b(I)V
    .registers 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    if-nez v0, :cond_11

    .line 189
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fu;->l()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/gi;->b:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-direct {v0, v1, v2, p1}, Lcom/baidu/bdgame/sdk/obf/fn;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/gi;I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    .line 191
    :cond_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->show()V

    .line 192
    return-void
.end method

.method public b(J)V
    .registers 6

    .prologue
    .line 116
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/ix;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->b:J

    .line 117
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->n:Z

    .line 210
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fu;->i:Lcom/baidu/bdgame/sdk/obf/gj;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gj;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public f()V
    .registers 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fu;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tips_bank_card_removebind_fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    if-eqz v0, :cond_13

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->show()V

    .line 88
    :goto_12
    return-void

    .line 86
    :cond_13
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fu;->v()V

    goto :goto_12
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fu;->b(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public o()V
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    .line 95
    return-void
.end method

.method public p()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->d:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->a:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()J
    .registers 3

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->b:J

    return-wide v0
.end method

.method public s()Lcom/baidu/bdgame/sdk/obf/gm;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->h:Lcom/baidu/bdgame/sdk/obf/gm;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->j:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->k:Ljava/lang/String;

    return-object v0
.end method

.method public v()V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    if-nez v0, :cond_23

    .line 177
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fu;->l()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/gi;->b:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/fo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/gi;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fu;->p()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fo;->a(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fu;->s()Lcom/baidu/bdgame/sdk/obf/gm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fo;->a(Lcom/baidu/bdgame/sdk/obf/gm;)V

    .line 182
    :cond_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->l:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->show()V

    .line 183
    return-void
.end method

.method public w()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/fu;->n:Z

    return v0
.end method
