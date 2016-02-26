.class public Lcom/baidu/bdgame/sdk/obf/ey;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ey$1;,
        Lcom/baidu/bdgame/sdk/obf/ey$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field private c:Lcom/baidu/bdgame/sdk/obf/cn$a;

.field private d:Lcom/baidu/bdgame/sdk/obf/iw;

.field private h:Lcom/baidu/bdgame/sdk/obf/eu;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lcom/baidu/bdgame/sdk/obf/jd;

.field private l:Ljava/lang/String;

.field private m:Lcom/baidu/bdgame/sdk/obf/ez;

.field private n:Lcom/baidu/bdgame/sdk/obf/ev;

.field private o:Lcom/baidu/bdgame/sdk/obf/er;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->i:I

    .line 30
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ey$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ey$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ey;Lcom/baidu/bdgame/sdk/obf/ey$1;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->c:Lcom/baidu/bdgame/sdk/obf/cn$a;

    .line 31
    return-void
.end method

.method private D()V
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->E()Z

    move-result v0

    if-nez v0, :cond_15

    .line 97
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->d(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    .line 102
    :goto_14
    return-void

    .line 101
    :cond_15
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->g()V

    goto :goto_14
.end method

.method private E()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 191
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->i:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    :cond_a
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ey;)Lcom/baidu/bdgame/sdk/obf/er;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->o:Lcom/baidu/bdgame/sdk/obf/er;

    return-object v0
.end method


# virtual methods
.method public A()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    if-eqz v0, :cond_9

    .line 250
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->dismiss()V

    .line 252
    :cond_9
    return-void
.end method

.method public B()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->o:Lcom/baidu/bdgame/sdk/obf/er;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->o:Lcom/baidu/bdgame/sdk/obf/er;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/er;->dismiss()V

    .line 278
    :cond_9
    return-void
.end method

.method public C()Lcom/baidu/bdgame/sdk/obf/cn$a;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->c:Lcom/baidu/bdgame/sdk/obf/cn$a;

    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    .line 36
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ex;

    invoke-direct {v1, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ex;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ey;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ex;->b(Z)V

    .line 38
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ey;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "bdp_paycenter_layout_accountinfo_fix_landscape"

    :goto_13
    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ex;->f(I)V

    .line 41
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ey;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "bdp_paycenter_paycontent_kucoin_fix"

    :goto_24
    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ex;->e(I)V

    .line 44
    return-object v1

    .line 38
    :cond_2c
    const-string v0, "bdp_paycenter_layout_accountinfo_nofix_landscape"

    goto :goto_13

    .line 41
    :cond_2f
    const-string v0, "bdp_paycenter_paycontent_kucoin_nofix"

    goto :goto_24
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/it;->a()V

    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->a()I

    .line 261
    :cond_14
    return-void
.end method

.method public a(F)V
    .registers 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->h:Lcom/baidu/bdgame/sdk/obf/eu;

    if-eqz v0, :cond_d

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->h:Lcom/baidu/bdgame/sdk/obf/eu;

    const/high16 v1, 0x42c80000

    mul-float/2addr v1, p1

    float-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/eu;->a(J)V

    .line 78
    :cond_d
    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 119
    const/4 v1, 0x0

    .line 121
    iget v2, p0, Lcom/baidu/bdgame/sdk/obf/ey;->i:I

    packed-switch v2, :pswitch_data_4c

    .line 133
    :goto_8
    if-eqz v1, :cond_1b

    .line 134
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_color_account_balance"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p1, v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 139
    :cond_1b
    return-void

    .line 123
    :pswitch_1c
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_91bean_balance"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->s()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    const/4 v0, 0x6

    .line 126
    goto :goto_8

    .line 128
    :pswitch_34
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_kucoin_balance"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->s()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 130
    const/4 v0, 0x5

    goto :goto_8

    .line 121
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_34
    .end packed-switch
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/eu;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->h:Lcom/baidu/bdgame/sdk/obf/eu;

    .line 179
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ev;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->n:Lcom/baidu/bdgame/sdk/obf/ev;

    .line 222
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->d:Lcom/baidu/bdgame/sdk/obf/iw;

    .line 106
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 205
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->o:Lcom/baidu/bdgame/sdk/obf/er;

    if-nez v0, :cond_f

    .line 268
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/er;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/er;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->o:Lcom/baidu/bdgame/sdk/obf/er;

    .line 270
    :cond_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->o:Lcom/baidu/bdgame/sdk/obf/er;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/er;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->o:Lcom/baidu/bdgame/sdk/obf/er;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/er;->show()V

    .line 272
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 64
    if-eqz p1, :cond_8

    .line 65
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->D()V

    .line 67
    :cond_8
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 5

    .prologue
    .line 50
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ex;

    invoke-direct {v1, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ex;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/ey;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ex;->b(Z)V

    .line 52
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ey;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "bdp_paycenter_layout_accountinfo_fix"

    :goto_13
    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ex;->f(I)V

    .line 55
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ey;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->f()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "bdp_paycenter_paycontent_kucoin_fix"

    :goto_24
    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ex;->e(I)V

    .line 58
    return-object v1

    .line 52
    :cond_2c
    const-string v0, "bdp_paycenter_layout_accountinfo_nofix"

    goto :goto_13

    .line 55
    :cond_2f
    const-string v0, "bdp_paycenter_paycontent_kucoin_nofix"

    goto :goto_24
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 187
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->i:I

    .line 188
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->j:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public b(F)Z
    .registers 6

    .prologue
    .line 142
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    .line 143
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ey;->d:Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v2

    .line 145
    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 210
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->l:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->a()Z

    move-result v0

    return v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ey;->b(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->d:Lcom/baidu/bdgame/sdk/obf/iw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->b(Lcom/baidu/bdgame/sdk/obf/iw;J)Z

    move-result v0

    return v0
.end method

.method public r()Ljava/lang/String;
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->d:Lcom/baidu/bdgame/sdk/obf/iw;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->d:Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(Lcom/baidu/bdgame/sdk/obf/iw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 3

    .prologue
    .line 154
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->i:I

    packed-switch v0, :pswitch_data_1e

    .line 162
    const-string v0, ""

    :goto_7
    return-object v0

    .line 156
    :pswitch_8
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_91_bean"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 159
    :pswitch_13
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_ku_coin"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 154
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method

.method public u()Ljava/lang/String;
    .registers 5

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_exchange_ratio_unit"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->t()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ey;->k:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->j:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->l:Ljava/lang/String;

    return-object v0
.end method

.method public x()V
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    if-nez v0, :cond_25

    .line 226
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ez;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    .line 227
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ey;->n:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ez;->a(Lcom/baidu/bdgame/sdk/obf/ev;)V

    .line 228
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_91_bean"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ez;->b(Ljava/lang/String;)V

    .line 230
    :cond_25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->show()V

    .line 231
    return-void
.end method

.method public y()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->a_()V

    .line 240
    :cond_9
    return-void
.end method

.method public z()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey;->m:Lcom/baidu/bdgame/sdk/obf/ez;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ez;->b()V

    .line 246
    :cond_9
    return-void
.end method
