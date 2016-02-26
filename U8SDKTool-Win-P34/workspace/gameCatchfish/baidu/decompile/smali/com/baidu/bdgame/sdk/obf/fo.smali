.class public Lcom/baidu/bdgame/sdk/obf/fo;
.super Lcom/baidu/bdgame/sdk/obf/is;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/fo$2;,
        Lcom/baidu/bdgame/sdk/obf/fo$b;,
        Lcom/baidu/bdgame/sdk/obf/fo$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/gi;

.field private b:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/Button;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/fo$b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/baidu/bdgame/sdk/obf/ij;

.field private t:Lcom/baidu/bdgame/sdk/obf/gm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/gi;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/is;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fo;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fo;Lcom/baidu/bdgame/sdk/obf/ij;)Lcom/baidu/bdgame/sdk/obf/ij;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->s:Lcom/baidu/bdgame/sdk/obf/ij;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fo;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fo;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->q:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1d

    .line 112
    :cond_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fo;->d()V

    .line 120
    :goto_1c
    return-void

    .line 116
    :cond_1d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fo;->c()V

    goto :goto_1c
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_dialog_iv_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->f:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_bind_card_parent"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->b:Landroid/widget/LinearLayout;

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_card_parent"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->e:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->g:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_ensure_parent"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->h:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_remove_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->i:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_cancel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->j:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_ensure"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->k:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_unbind_parent"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->o:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_close1"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->p:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_tip_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->l:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_tip_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->m:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_unbind_card"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->n:Landroid/widget/TextView;

    .line 91
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/fo$2;->a:[I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_136

    .line 105
    :goto_dd
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fo;->b()V

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void

    .line 93
    :pswitch_e6
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_credit_card_manage"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_credit_binded_card"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_credit_unbind_card"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_dd

    .line 98
    :pswitch_10e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_yibao_cash_card_manage"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_yibao_cash_card_binded_card"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_yibao_cash_card_unbind_card"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_dd

    .line 91
    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_10e
    .end packed-switch
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fo;)Lcom/baidu/bdgame/sdk/obf/gi;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fo;->e()V

    .line 129
    return-void
.end method

.method private c(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    if-nez v0, :cond_6

    .line 267
    :cond_5
    return-void

    :cond_6
    move v1, v2

    .line 255
    :goto_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fo$b;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/fo$b;->b:Landroid/widget/Button;

    .line 257
    if-ne v0, p1, :cond_2d

    .line 258
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v4, "bdp_dark_gray"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 260
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    :goto_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 262
    :cond_2d
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v4, "bdp_color_orangeyellow"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 264
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_29
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->p:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/high16 v11, 0x40800000

    const/4 v5, 0x0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    .line 137
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x2

    invoke-direct {v6, v12, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v5, v5, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move v4, v5

    .line 142
    :goto_22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_cb

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->q:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ij;

    .line 144
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_view_bank_card_manage_item"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 146
    invoke-virtual {v8, v4}, Landroid/view/View;->setId(I)V

    .line 147
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_tv_bank_name"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v3, "bdp_paycenter_tv_card_num"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v9, "bdp_paycenter_bank_card_remove_bind"

    invoke-static {v3, v9}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 153
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ij;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v9, "bdp_paycenter_bank_card_no"

    invoke-static {v1, v9}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ij;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fo$a;

    invoke-direct {v1, p0, v0}, Lcom/baidu/bdgame/sdk/obf/fo$a;-><init>(Lcom/baidu/bdgame/sdk/obf/fo;Lcom/baidu/bdgame/sdk/obf/ij;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fo$b;

    invoke-direct {v0, p0, v13}, Lcom/baidu/bdgame/sdk/obf/fo$b;-><init>(Lcom/baidu/bdgame/sdk/obf/fo;Lcom/baidu/bdgame/sdk/obf/fo$1;)V

    .line 158
    iput-object v8, v0, Lcom/baidu/bdgame/sdk/obf/fo$b;->a:Landroid/view/View;

    .line 159
    iput-object v3, v0, Lcom/baidu/bdgame/sdk/obf/fo$b;->b:Landroid/widget/Button;

    .line 160
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v4, v0, :cond_c6

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    invoke-static {v3, v11}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v12, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :cond_c6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_22

    .line 169
    :cond_cb
    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .registers 5

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->s:Lcom/baidu/bdgame/sdk/obf/ij;

    .line 271
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    if-nez v0, :cond_8

    .line 280
    :cond_7
    return-void

    .line 274
    :cond_8
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/fo$b;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/fo$b;->b:Landroid/widget/Button;

    .line 276
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v3, "bdp_color_orangeyellow"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 278
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_dialog_bank_card_manage"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fo;->b(Landroid/view/View;)V

    .line 201
    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gm;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->t:Lcom/baidu/bdgame/sdk/obf/gm;

    .line 291
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
    .line 205
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->q:Ljava/util/List;

    .line 206
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3
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
    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->q:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fo;->a(Ljava/util/List;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_e

    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    if-eqz v0, :cond_17

    .line 214
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    :cond_17
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fo;->b()V

    .line 217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fo$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/fo$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fo;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->g:Landroid/widget/Button;

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->p:Landroid/widget/Button;

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_20

    .line 182
    :cond_1c
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fo;->dismiss()V

    .line 194
    :cond_1f
    :goto_1f
    return-void

    .line 183
    :cond_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_34

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fo;->f()V

    goto :goto_1f

    .line 187
    :cond_34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_1f

    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->t:Lcom/baidu/bdgame/sdk/obf/gm;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->s:Lcom/baidu/bdgame/sdk/obf/ij;

    if-eqz v0, :cond_1f

    .line 190
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/fo;->dismiss()V

    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo;->t:Lcom/baidu/bdgame/sdk/obf/gm;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo;->s:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gm;->a(Lcom/baidu/bdgame/sdk/obf/ij;)V

    goto :goto_1f
.end method
