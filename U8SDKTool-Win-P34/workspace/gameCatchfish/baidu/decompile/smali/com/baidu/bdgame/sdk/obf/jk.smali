.class public Lcom/baidu/bdgame/sdk/obf/jk;
.super Lcom/baidu/bdgame/sdk/obf/ls;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/jk$1;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ScrollView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Lcom/baidu/bdgame/sdk/obf/jn;

.field private j:Landroid/text/Spannable;

.field private k:Ljava/lang/String;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jn;Landroid/text/Spannable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 7

    .prologue
    .line 41
    const-string v0, "bdp_pay_result_dialog_style"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/ls;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jk;->i:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 43
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/jk;->j:Landroid/text/Spannable;

    .line 44
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/jk;->k:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/baidu/bdgame/sdk/obf/jk;->l:Landroid/view/View$OnClickListener;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jk;->setCancelable(Z)V

    .line 47
    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    const/16 v5, 0x2a

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 83
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jk$1;->a:[I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->i:Lcom/baidu/bdgame/sdk/obf/jn;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10e

    .line 126
    :goto_12
    return-void

    .line 85
    :pswitch_13
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->d:Landroid/widget/TextView;

    const-string v1, "#ffff5555"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "bdp_icon_pay_result_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_pay_result_notify_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->j:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 94
    :cond_52
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v5}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 101
    :pswitch_6f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->d:Landroid/widget/TextView;

    const-string v1, "#ff333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "bdp_icon_pay_result_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_pay_result_notify_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->j:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 107
    :pswitch_9d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->d:Landroid/widget/TextView;

    const-string v1, "#ffff5555"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "bdp_icon_pay_result_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_pay_result_notify_submit"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_pay_result_notify_submit_tip"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_12

    .line 116
    :cond_e3
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v5}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_pay_result_notify_submit_activity"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jk;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 83
    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_6f
        :pswitch_9d
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v1, "bdp_dialog_pay_result_notify"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "img_icon"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->c:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "txt_type"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->d:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "txt_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->e:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "sv_activity"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->f:Landroid/widget/ScrollView;

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "txt_activity"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->g:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const-string v2, "btn_back"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->h:Landroid/widget/Button;

    .line 58
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jk;->b()V

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->h:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jk;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-object v1
.end method

.method public a()V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v1

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    const/high16 v2, 0x41300000

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    .line 67
    const/4 v0, 0x0

    .line 68
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->h(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    .line 70
    int-to-float v0, v0

    const v1, 0x3f933333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 74
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jk;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 75
    return-void

    .line 71
    :cond_2a
    if-nez v1, :cond_21

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jk;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    goto :goto_21
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 131
    return-void
.end method
