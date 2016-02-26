.class public Lcom/baidu/bdgame/sdk/obf/kb;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/kb$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/baidu/bdgame/sdk/obf/bk;

.field private f:Lcom/baidu/bdgame/sdk/obf/mk;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/kb;Lcom/baidu/bdgame/sdk/obf/bk;)Lcom/baidu/bdgame/sdk/obf/bk;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kb;->e:Lcom/baidu/bdgame/sdk/obf/bk;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/kb;)V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->p()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/kb;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private n()V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_now_logining"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    return-void
.end method

.method private o()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_sso_login_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_sso_login_loading"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->l()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 287
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;)I

    move-result v0

    .line 288
    packed-switch v0, :pswitch_data_3a

    .line 297
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lc;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lc;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 300
    :goto_20
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 301
    return-void

    .line 290
    :pswitch_25
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ja;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ja;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    goto :goto_20

    .line 293
    :pswitch_2f
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/md;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/md;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    goto :goto_20

    .line 288
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_25
    .end packed-switch
.end method

.method private q()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->f:Lcom/baidu/bdgame/sdk/obf/mk;

    if-eqz v0, :cond_c

    .line 311
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->f:Lcom/baidu/bdgame/sdk/obf/mk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mk;->b()V

    .line 312
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb;->f:Lcom/baidu/bdgame/sdk/obf/mk;

    .line 315
    :cond_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->e:Lcom/baidu/bdgame/sdk/obf/bk;

    if-eqz v0, :cond_17

    .line 316
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->e:Lcom/baidu/bdgame/sdk/obf/bk;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/bk;->a()V

    .line 317
    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb;->e:Lcom/baidu/bdgame/sdk/obf/bk;

    .line 319
    :cond_17
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_login_auto"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-string v0, "lin_account"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->a:Landroid/widget/LinearLayout;

    .line 52
    const-string v0, "txt_login_type"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->b:Landroid/widget/TextView;

    .line 53
    const-string v0, "txt_account"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->c:Landroid/widget/TextView;

    .line 54
    const-string v0, "txt_now_logining"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->d:Landroid/widget/TextView;

    .line 56
    return-object v1
.end method

.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/bk;)V
    .registers 7

    .prologue
    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_11
    const/4 v0, 0x2

    if-ne v0, p1, :cond_35

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_type_91"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_now_logining"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/kb;->e:Lcom/baidu/bdgame/sdk/obf/bk;

    .line 137
    return-void

    .line 131
    :cond_35
    const/4 v0, 0x1

    if-ne v0, p1, :cond_23

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_type_dk"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_23
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 99
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/r;)V
    .registers 7

    .prologue
    .line 217
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/kb$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/kb$3;-><init>(Lcom/baidu/bdgame/sdk/obf/kb;)V

    .line 239
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->n()V

    .line 240
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->h()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_account_autologin_guest"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 246
    :goto_1d
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v0

    .line 247
    packed-switch v0, :pswitch_data_88

    .line 267
    const/4 v0, 0x0

    .line 270
    :goto_29
    if-eqz v0, :cond_30

    .line 271
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kb;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :cond_30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v3

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/kb$4;

    invoke-direct {v4, p0, v1}, Lcom/baidu/bdgame/sdk/obf/kb$4;-><init>(Lcom/baidu/bdgame/sdk/obf/kb;Lcom/baidu/bdgame/sdk/obf/kb$a;)V

    invoke-static {v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/s;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->e:Lcom/baidu/bdgame/sdk/obf/bk;

    .line 280
    return-void

    .line 243
    :cond_45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/r;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 249
    :pswitch_4f
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_account_autologin_type_baidu"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 252
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    goto :goto_29

    .line 255
    :pswitch_62
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_account_autologin_type_91"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 258
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    goto :goto_29

    .line 261
    :pswitch_75
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_account_autologin_type_dk"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 264
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    goto :goto_29

    .line 247
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_75
        :pswitch_62
    .end packed-switch
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 305
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->c()V

    .line 306
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->q()V

    .line 307
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_autologin_now_loading"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    return-void
.end method

.method public g()V
    .registers 4

    .prologue
    .line 159
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kb$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/kb$1;-><init>(Lcom/baidu/bdgame/sdk/obf/kb;)V

    .line 177
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->o()V

    .line 179
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/kb;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/mk;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/mk;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb;->f:Lcom/baidu/bdgame/sdk/obf/mk;

    .line 180
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kb;->f:Lcom/baidu/bdgame/sdk/obf/mk;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/kb$2;

    invoke-direct {v2, p0, v0}, Lcom/baidu/bdgame/sdk/obf/kb$2;-><init>(Lcom/baidu/bdgame/sdk/obf/kb;Lcom/baidu/bdgame/sdk/obf/kb$a;)V

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mk;->a(Lcom/baidu/bdgame/sdk/obf/mm;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kb;->f:Lcom/baidu/bdgame/sdk/obf/mk;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mk;->a()V

    .line 211
    return-void
.end method
