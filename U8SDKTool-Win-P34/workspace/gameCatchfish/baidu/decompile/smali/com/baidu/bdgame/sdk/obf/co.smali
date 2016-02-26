.class public Lcom/baidu/bdgame/sdk/obf/co;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/co$b;,
        Lcom/baidu/bdgame/sdk/obf/co$a;
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/bdgame/sdk/obf/co$b;

.field public b:Lcom/baidu/bdgame/sdk/obf/co$a;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/baidu/bdgame/sdk/obf/ct;

.field private q:Lcom/baidu/bdgame/sdk/obf/cr;

.field private r:I

.field private s:Landroid/view/View;

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cr;Lcom/baidu/bdgame/sdk/obf/co$b;)V
    .registers 8

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    .line 63
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_paycenter_view_fix_account"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/co;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->k()V

    .line 70
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->v()V

    .line 72
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->t()V

    .line 73
    return-void
.end method

.method private A()V
    .registers 5

    .prologue
    .line 560
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cr;->p()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cr;->u()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Ljava/util/List;J)V

    .line 562
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->i()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    if-nez v0, :cond_24

    .line 563
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->d()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Lcom/baidu/bdgame/sdk/obf/ic;)V

    .line 565
    :cond_24
    return-void
.end method

.method private B()V
    .registers 7

    .prologue
    .line 568
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->b:Lcom/baidu/bdgame/sdk/obf/co$a;

    if-eqz v0, :cond_1b

    .line 569
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->b:Lcom/baidu/bdgame/sdk/obf/co$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cr;->q()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cr;->i()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cr;->d()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/co$a;->a(ILcom/baidu/bdgame/sdk/obf/ic;J)V

    .line 572
    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/co;)Lcom/baidu/bdgame/sdk/obf/cr;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/co;Z)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/co;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 5

    .prologue
    .line 159
    if-eqz p1, :cond_12

    .line 160
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_drop_black_up"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    :goto_11
    return-void

    .line 162
    :cond_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->j:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_drop_black_down"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11
.end method

.method private a(Landroid/widget/CompoundButton;Z)Z
    .registers 4

    .prologue
    .line 466
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->s:Landroid/view/View;

    if-ne v0, p1, :cond_a

    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->t:Z

    if-ne v0, p2, :cond_a

    .line 467
    const/4 v0, 0x1

    .line 471
    :goto_9
    return v0

    .line 469
    :cond_a
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/co;->s:Landroid/view/View;

    .line 470
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/co;->t:Z

    .line 471
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/co;)Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private c(I)V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 460
    return-void
.end method

.method private k()V
    .registers 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_baidu_bean_layout"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_baidu_bean_check"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_baidu_bean_content"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->e:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_voucher_layout"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_voucher_check"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_voucher"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->h:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_voucher_name"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->i:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_voucher_drop"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->j:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_merge_pay_layout"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->k:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_add_amount"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->l:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_non_merge_pay_layout"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_non_merge_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->n:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_more_payment_drop"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->o:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cr;->b()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/ct;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/co$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/co$1;-><init>(Lcom/baidu/bdgame/sdk/obf/co;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/ct$a;)V

    .line 126
    return-void
.end method

.method private declared-synchronized l()V
    .registers 2

    .prologue
    .line 217
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->q()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 237
    :goto_a
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->e()V

    .line 238
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->b(I)V

    .line 239
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->y()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    .line 240
    monitor-exit p0

    return-void

    .line 219
    :pswitch_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->m()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_a

    .line 217
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :pswitch_22
    :try_start_22
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->n()V

    goto :goto_a

    .line 225
    :pswitch_26
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->o()V

    goto :goto_a

    .line 228
    :pswitch_2a
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->p()V

    goto :goto_a

    .line 231
    :pswitch_2e
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->q()V

    goto :goto_a

    .line 234
    :pswitch_32
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->r()V
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_1f

    goto :goto_a

    .line 217
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method private m()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 249
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    return-void
.end method

.method private n()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg2"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    return-void
.end method

.method private o()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg2"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->z()V

    .line 270
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method

.method private p()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg2"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 281
    return-void
.end method

.method private q()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 287
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg2"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 288
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->z()V

    .line 290
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    return-void
.end method

.method private r()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 294
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 295
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 296
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 297
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_coupon_bg2"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 298
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    return-void
.end method

.method private s()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 305
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    if-eqz v0, :cond_1a

    .line 306
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 307
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cr;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 375
    :cond_1a
    :goto_1a
    return-void

    .line 310
    :cond_1b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/co$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 311
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 370
    :goto_28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Z)V

    goto :goto_1a

    .line 315
    :cond_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-nez v0, :cond_44

    .line 317
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    goto :goto_28

    .line 318
    :cond_44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->l()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 320
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    goto :goto_28

    .line 321
    :cond_5a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 323
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->c()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 324
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    goto :goto_28

    .line 325
    :cond_78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->h()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 326
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    goto :goto_28

    .line 327
    :cond_86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->t()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 328
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    goto :goto_28

    .line 329
    :cond_95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->n()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 330
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    goto :goto_28

    .line 332
    :cond_a3
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->e()V

    .line 333
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    goto/16 :goto_28

    .line 336
    :cond_af
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    goto/16 :goto_28
.end method

.method private t()V
    .registers 1

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->s()V

    .line 379
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->u()V

    .line 380
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->c()V

    .line 381
    return-void
.end method

.method private u()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->o()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->b(I)V

    .line 426
    return-void
.end method

.method private v()V
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 509
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->A()V

    .line 510
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->x()V

    .line 516
    :cond_e
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->z()V

    .line 517
    return-void
.end method

.method private w()V
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 521
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->x()V

    .line 527
    :cond_b
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->z()V

    .line 528
    return-void
.end method

.method private x()V
    .registers 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cr;->i()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/ic;)V

    .line 532
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/co;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/view/View;Landroid/widget/TextView;)V

    .line 533
    return-void
.end method

.method private y()V
    .registers 6

    .prologue
    .line 536
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 537
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_pay_amount"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cr;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_color_ff3300"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 544
    :cond_36
    return-void
.end method

.method private z()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 548
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 549
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_add_amount_pay"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/cr;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    :cond_2c
    :goto_2c
    return-void

    .line 551
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->q()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 552
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_add_amount_pay"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/cr;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->w()V

    .line 387
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 388
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->c()V

    .line 390
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->c()V

    .line 391
    return-void
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 400
    const/16 v0, 0x270f

    if-ne p1, v0, :cond_1b

    .line 401
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 403
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/view/View;)V

    .line 406
    :cond_1b
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/co$a;)V
    .registers 2

    .prologue
    .line 582
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/co;->b:Lcom/baidu/bdgame/sdk/obf/co$a;

    .line 583
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 395
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->c()V

    .line 397
    :cond_d
    return-void
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 454
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/co;->r:I

    .line 455
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->l()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 410
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :goto_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->m()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 416
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :goto_1d
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->l()V

    .line 422
    return-void

    .line 412
    :cond_21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 418
    :cond_27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d
.end method

.method public d()V
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/co;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->c(I)V

    .line 434
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    if-eqz v0, :cond_f

    .line 443
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cr;->q()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/co$b;->a(I)V

    .line 445
    :cond_f
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->r:I

    return v0
.end method

.method public g()V
    .registers 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 480
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->l()V

    .line 481
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 485
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->l()V

    .line 486
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 490
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->l()V

    .line 491
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(I)V

    .line 496
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->l()V

    .line 497
    return-void
.end method

.method public declared-synchronized onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/co;->a(Landroid/widget/CompoundButton;Z)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_71

    move-result v0

    if-eqz v0, :cond_9

    .line 213
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 172
    :cond_9
    if-eqz p2, :cond_95

    .line 173
    :try_start_b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_74

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->s()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->s()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 176
    :cond_27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->c(I)V

    .line 186
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cr;->o()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/bdgame/sdk/obf/co$b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_51

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->c(I)V

    .line 207
    :cond_51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->s()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 208
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->c(I)V

    .line 211
    :cond_6d
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->l()V
    :try_end_70
    .catchall {:try_start_b .. :try_end_70} :catchall_71

    goto :goto_7

    .line 169
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_74
    :try_start_74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_2b

    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->s()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->q:Lcom/baidu/bdgame/sdk/obf/cr;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->s()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 182
    :cond_90
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->c(I)V

    goto :goto_2b

    .line 191
    :cond_95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_a6

    .line 192
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 193
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->c(I)V

    goto :goto_3d

    .line 196
    :cond_a6
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_3d

    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->c(I)V
    :try_end_b6
    .catchall {:try_start_74 .. :try_end_b6} :catchall_71

    goto :goto_3d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kr;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 156
    :cond_6
    :goto_6
    return-void

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->c:Landroid/view/View;

    if-ne p1, v0, :cond_11

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_6

    .line 135
    :cond_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    if-ne p1, v0, :cond_1b

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_6

    .line 137
    :cond_1b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    if-ne p1, v0, :cond_27

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->c(I)V

    .line 139
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->l()V

    goto :goto_6

    .line 140
    :cond_27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->h:Landroid/view/View;

    if-ne p1, v0, :cond_4e

    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->a:Lcom/baidu/bdgame/sdk/obf/co$b;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/co$b;->a()Z

    move-result v0

    if-nez v0, :cond_40

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->p:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a()V

    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/co;->a(Z)V

    .line 145
    :cond_40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 146
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    goto :goto_6

    .line 148
    :cond_4e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_58

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_6

    .line 150
    :cond_58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->o:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_62

    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_6

    .line 152
    :cond_62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/co;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 153
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/co;->B()V

    goto :goto_6
.end method
