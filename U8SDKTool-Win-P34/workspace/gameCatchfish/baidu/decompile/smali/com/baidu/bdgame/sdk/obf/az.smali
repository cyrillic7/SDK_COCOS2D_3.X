.class public Lcom/baidu/bdgame/sdk/obf/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/cd;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/baidu/bdgame/sdk/obf/ba;

.field private p:Lcom/baidu/bdgame/sdk/obf/r;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cd;Z)V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    .line 62
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/az;->b:Z

    .line 63
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/az;->b()V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/az;Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az;->o:Lcom/baidu/bdgame/sdk/obf/ba;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/az;Lcom/baidu/bdgame/sdk/obf/r;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/az;->p:Lcom/baidu/bdgame/sdk/obf/r;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "bdp_controller_account_login_dk"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "edt_focus"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->d:Landroid/widget/EditText;

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "edt_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->e:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "img_account_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->f:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "img_arrow"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->g:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "edt_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->h:Landroid/widget/EditText;

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "img_pass_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->i:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "txt_find_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->j:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "btn_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->k:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "lin_customer_support"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->l:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "txt_customer_support"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->m:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    const-string v2, "lin_history"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->n:Landroid/widget/LinearLayout;

    .line 81
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/az;->c()V

    .line 82
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$1;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$8;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$9;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$10;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$11;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$12;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$2;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$3;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$4;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->k:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$5;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->b:Z

    if-nez v0, :cond_76

    .line 280
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/az$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/az$6;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 299
    :cond_76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/az$7;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/az$7;-><init>(Lcom/baidu/bdgame/sdk/obf/az;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    .line 366
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/az;->d()V

    .line 367
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/az;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/az;->d()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/az;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 373
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 381
    :goto_20
    return-void

    .line 376
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 377
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 380
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->k:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/cd;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->p:Lcom/baidu/bdgame/sdk/obf/r;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/az;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/az;)Lcom/baidu/bdgame/sdk/obf/ba;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->o:Lcom/baidu/bdgame/sdk/obf/ba;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    if-nez v0, :cond_7

    .line 389
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/az;->b()V

    .line 391
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/az;->c:Landroid/view/View;

    return-object v0
.end method
