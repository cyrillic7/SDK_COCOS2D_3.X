.class public Lcom/baidu/bdgame/sdk/obf/iv;
.super Lcom/baidu/bdgame/sdk/obf/is;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/iv$1;,
        Lcom/baidu/bdgame/sdk/obf/iv$a;,
        Lcom/baidu/bdgame/sdk/obf/iv$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/is;-><init>(Landroid/content/Context;)V

    .line 93
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->j:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v6, 0x5

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_all_amount"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->a:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_good_price"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->b:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_baidubean_save"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->e:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_ensure"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->h:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_cancel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->i:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_dialog_exchange_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->f:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_exchange_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->g:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->j:Ljava/lang/String;

    if-eqz v0, :cond_a2

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/iv;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 60
    :cond_a2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->m:Ljava/lang/String;

    if-eqz v0, :cond_bd

    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/iv;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v0, v1, v2, v6, v3}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 65
    :cond_bd
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->o:Ljava/lang/String;

    if-eqz v0, :cond_d8

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/iv;->p:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v0, v1, v2, v6, v3}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 71
    :cond_d8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->q:Ljava/lang/String;

    if-eqz v0, :cond_f5

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/iv;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 77
    :cond_f5
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->s:Ljava/lang/String;

    if-eqz v0, :cond_106

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->t:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_111

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->u:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_11c

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_11c
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_dialog_extend"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 240
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/iv;->b(Landroid/view/View;)V

    .line 241
    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 4

    .prologue
    .line 184
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->t:Landroid/view/View$OnClickListener;

    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->h:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 186
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :cond_d
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 98
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->l:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/iv$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/iv$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 109
    :goto_d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    if-eqz v0, :cond_56

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tip_pay_dialog_all_amount"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/iv;->l:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->j:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_56

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/iv;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 121
    :cond_56
    return-void

    .line 101
    :pswitch_57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_game_card"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    goto :goto_d

    .line 105
    :pswitch_62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_phone_card"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->k:Ljava/lang/String;

    goto :goto_d

    .line 99
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_57
        :pswitch_62
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->n:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tip_pay_dialog_good_price"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->m:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/iv;->n:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 135
    :cond_32
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .registers 4

    .prologue
    .line 191
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->u:Landroid/view/View$OnClickListener;

    .line 192
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->i:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_d
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tip_pay_dialog_baiduben_save"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->o:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->p:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_32

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/iv;->p:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 150
    :cond_32
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tip_pay_dialog_failpay_baidubean"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->q:Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->r:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/iv;->c:Landroid/content/Context;

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/iv;->r:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 166
    :cond_33
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 173
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->s:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    .line 175
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iv;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iv;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_13
    return-void
.end method
