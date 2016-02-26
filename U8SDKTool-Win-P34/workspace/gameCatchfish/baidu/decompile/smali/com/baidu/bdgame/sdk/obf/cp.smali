.class public Lcom/baidu/bdgame/sdk/obf/cp;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/cs;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/baidu/bdgame/sdk/obf/cn;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/cs;)V
    .registers 8

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cp;->c:Lcom/baidu/bdgame/sdk/obf/cn;

    .line 43
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/cn;->D()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->d:J

    .line 44
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/cn;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->e:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/cp;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    .line 46
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_view_custom_pay"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 49
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cp;->a(Landroid/view/View;)V

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/cp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cp;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tv_use_balance_type"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_pay_use_pay"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_et_input_number"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_color_text_hint"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cp$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cp$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_btn_balance_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 97
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cp$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cp$2;-><init>(Lcom/baidu/bdgame/sdk/obf/cp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/cp;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 114
    :try_start_10
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 115
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ix;->a(F)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/cp;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_38

    .line 116
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_paycenter_tip_balance_unenough"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_27} :catch_28

    .line 130
    :goto_27
    return-void

    .line 119
    :catch_28
    move-exception v0

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->g(Landroid/content/Context;)V

    goto :goto_27

    .line 125
    :cond_38
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->c()V

    goto :goto_27

    .line 128
    :cond_3c
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->b(Landroid/content/Context;)V

    goto :goto_27
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cp;)V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 173
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 179
    :cond_9
    :goto_9
    return v0

    .line 176
    :cond_a
    const-string v1, "\\d++"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 177
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private c()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->c:Lcom/baidu/bdgame/sdk/obf/cn;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cp$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cp$3;-><init>(Lcom/baidu/bdgame/sdk/obf/cp;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/dj;)Z

    move-result v0

    .line 145
    if-eqz v0, :cond_10

    .line 146
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->d()V

    .line 148
    :cond_10
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/cp;)V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cp;->d()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->a()Lcom/baidu/bdgame/sdk/obf/cs$a;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 154
    :try_start_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_20

    move-result v0

    .line 159
    :goto_16
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cp;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->a()Lcom/baidu/bdgame/sdk/obf/cs$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cs$a;->a(I)V

    .line 161
    :cond_1f
    return-void

    .line 156
    :catch_20
    move-exception v0

    .line 157
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cp;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method
