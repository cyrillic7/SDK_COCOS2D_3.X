.class public Lcom/baidu/bdgame/sdk/obf/jl;
.super Lcom/baidu/bdgame/sdk/obf/iq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/jl$2;
    }
.end annotation


# instance fields
.field private h:Lcom/baidu/bdgame/sdk/obf/jm;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/jm;)V
    .registers 5

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iq;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/it;)V

    .line 46
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_result_notify_account"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jl;->f(I)V

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_result_notify_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jl;->e(I)V

    .line 51
    return-void
.end method

.method private C()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_result_notify_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_icon_pay_result_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jm;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    :goto_3d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jm;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    :goto_4e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    return-void

    .line 160
    :cond_54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jm;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 165
    :cond_60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jm;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 107
    if-eqz p1, :cond_48

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_result_notify_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_icon_pay_result_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jm;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :cond_48
    :goto_48
    return-void

    .line 118
    :cond_49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jm;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48
.end method

.method private s()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_result_notify_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_icon_pay_result_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jm;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :goto_3d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jm;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    :goto_4e
    return-void

    .line 133
    :cond_4f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jm;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 138
    :cond_5b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jm;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e
.end method

.method private t()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_result_notify_submit"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_icon_pay_result_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 146
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)V
    .registers 9

    .prologue
    const/4 v6, 0x4

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "txt_account"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->i:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jm;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_pay_result_notify_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/jm;->p()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jm;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 60
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v5, "bdp_blue"

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/kq;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/jm;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/16 v4, 0x21

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    return-void

    .line 66
    :cond_7d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_72
.end method

.method protected b(Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "txt_type"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->j:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "lin_success"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->k:Landroid/widget/LinearLayout;

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "txt_buy_item"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->l:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "txt_success_des"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->m:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "lin_fail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->n:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "lin_serial"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->q:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "txt_serial"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->r:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "txt_cancel_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->s:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "lin_submit"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->t:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "lin_fail_reason"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->o:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "txt_fail_reason"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->p:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "btn_return"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->u:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jm;->f()Lcom/baidu/bdgame/sdk/obf/jn;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jl;->h:Lcom/baidu/bdgame/sdk/obf/jm;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jm;->o()Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v1

    .line 88
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/jl$2;->a:[I

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jn;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_e4

    .line 104
    :goto_d7
    return-void

    .line 90
    :pswitch_d8
    invoke-direct {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jl;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    goto :goto_d7

    .line 93
    :pswitch_dc
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jl;->s()V

    goto :goto_d7

    .line 96
    :pswitch_e0
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jl;->t()V

    goto :goto_d7

    .line 88
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_dc
        :pswitch_e0
    .end packed-switch
.end method

.method public c(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 187
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jl;->j()V

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 182
    return-void
.end method

.method protected o()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->u:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jl$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/jl$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method protected p()I
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body_landscape"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected q()I
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jl;->b:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_pay_body"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
