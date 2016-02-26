.class public Lcom/baidu/bdgame/sdk/obf/gh;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/gh$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x378

.field public static final b:I = 0x379


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private h:J

.field private i:I

.field private j:Lcom/baidu/bdgame/sdk/obf/gl;

.field private k:Lcom/baidu/bdgame/sdk/obf/gm;

.field private l:Lcom/baidu/bdgame/sdk/obf/gh$a;

.field private m:Lcom/baidu/bdgame/sdk/obf/fn;

.field private n:Lcom/baidu/bdgame/sdk/obf/fo;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->i:I

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 44
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/gg;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/gh;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gg;->d(I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gg;->b(Z)V

    .line 47
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gh;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_credit_land"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gg;->f(I)V

    .line 49
    return-object v0
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/it;->a()V

    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 227
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->a()I

    .line 229
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 230
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->a()I

    .line 232
    :cond_25
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/baidu/bdgame/sdk/obf/gh;->d:J

    .line 145
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gh$a;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gh;->l:Lcom/baidu/bdgame/sdk/obf/gh$a;

    .line 199
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gl;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gh;->j:Lcom/baidu/bdgame/sdk/obf/gl;

    .line 171
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gm;)V
    .registers 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gh;->k:Lcom/baidu/bdgame/sdk/obf/gm;

    .line 178
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->j:Lcom/baidu/bdgame/sdk/obf/gl;

    if-eqz v0, :cond_c

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->j:Lcom/baidu/bdgame/sdk/obf/gl;

    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/gl;->a(Lcom/baidu/bdgame/sdk/obf/ij;)V

    .line 158
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->d()Z

    .line 160
    :cond_c
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
    .line 132
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gh;->c:Ljava/util/List;

    .line 133
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 66
    if-eqz p1, :cond_9

    .line 67
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->g()V

    .line 80
    :cond_8
    :goto_8
    return-void

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->c:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 70
    :cond_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->l:Lcom/baidu/bdgame/sdk/obf/gh$a;

    if-eqz v0, :cond_8

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->l:Lcom/baidu/bdgame/sdk/obf/gh$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/gh$a;->b()V

    goto :goto_8

    .line 74
    :cond_1f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    if-eqz v0, :cond_2c

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fo;->b(Ljava/util/List;)V

    .line 77
    :cond_2c
    const/16 v0, 0x378

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gh;->a(I)V

    goto :goto_8
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gg;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/gg;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/gh;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gg;->d(I)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gg;->b(Z)V

    .line 58
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gh;->g:Landroid/content/Context;

    const-string v2, "bdp_paycenter_layout_paymode_credit"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gg;->f(I)V

    .line 60
    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 93
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/gh;->i:I

    .line 94
    return-void
.end method

.method public b(J)V
    .registers 6

    .prologue
    .line 148
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/ix;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->h:J

    .line 149
    return-void
.end method

.method public d(I)V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    if-nez v0, :cond_11

    .line 207
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->l()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/gi;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-direct {v0, v1, v2, p1}, Lcom/baidu/bdgame/sdk/obf/fn;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/gi;I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    .line 210
    :cond_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->m:Lcom/baidu/bdgame/sdk/obf/fn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fn;->show()V

    .line 211
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->i:I

    return v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gh;->b(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public o()V
    .registers 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tips_bank_card_removebind_fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->show()V

    .line 115
    :goto_12
    return-void

    .line 112
    :cond_13
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->v()V

    goto :goto_12
.end method

.method public p()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->c:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 122
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->l:Lcom/baidu/bdgame/sdk/obf/gh$a;

    if-eqz v0, :cond_15

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->l:Lcom/baidu/bdgame/sdk/obf/gh$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/gh$a;->a()V

    .line 129
    :cond_15
    :goto_15
    return-void

    .line 126
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    .line 127
    const/16 v0, 0x378

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gh;->a(I)V

    goto :goto_15
.end method

.method public q()Ljava/util/List;
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
    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->c:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->d:J

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()J
    .registers 3

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->h:J

    return-wide v0
.end method

.method public t()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->j:Lcom/baidu/bdgame/sdk/obf/gl;

    if-eqz v0, :cond_c

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->j:Lcom/baidu/bdgame/sdk/obf/gl;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/gl;->a()V

    .line 165
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->d()Z

    .line 167
    :cond_c
    return-void
.end method

.method public u()Lcom/baidu/bdgame/sdk/obf/gm;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->k:Lcom/baidu/bdgame/sdk/obf/gm;

    return-object v0
.end method

.method public v()V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    if-nez v0, :cond_23

    .line 216
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->l()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/gi;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/fo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/gi;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->q()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fo;->a(Ljava/util/List;)V

    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gh;->u()Lcom/baidu/bdgame/sdk/obf/gm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fo;->a(Lcom/baidu/bdgame/sdk/obf/gm;)V

    .line 220
    :cond_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gh;->n:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->show()V

    .line 221
    return-void
.end method
