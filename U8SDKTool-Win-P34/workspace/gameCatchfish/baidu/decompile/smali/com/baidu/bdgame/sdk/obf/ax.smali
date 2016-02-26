.class public Lcom/baidu/bdgame/sdk/obf/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x3e7


# instance fields
.field private b:Lcom/baidu/bdgame/sdk/obf/cd;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Lcom/baidu/bdgame/sdk/obf/ba;

.field private v:Lcom/baidu/bdgame/sdk/obf/r;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cd;Z)V
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Lcom/baidu/bdgame/sdk/obf/cd;

    .line 74
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/ax;->c:Z

    .line 75
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->b()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ax;Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba;
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->u:Lcom/baidu/bdgame/sdk/obf/ba;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ax;Lcom/baidu/bdgame/sdk/obf/r;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->v:Lcom/baidu/bdgame/sdk/obf/r;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ax;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ax;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;I)V

    .line 435
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Lcom/baidu/bdgame/sdk/obf/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$17;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$17;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-static {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    .line 478
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "bdp_controller_account_login_91"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "edt_focus"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->e:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "edt_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "img_account_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->g:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "img_arrow"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "edt_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Landroid/widget/EditText;

    .line 86
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "img_pass_del"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->j:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "txt_find_pass"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->k:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "btn_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->l:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "lin_other_account"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->m:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "img_qq_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->n:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "img_renren_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->o:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "img_sina_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->p:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "img_txweibo_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->q:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "lin_customer_support"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->r:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "txt_customer_support"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->s:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    const-string v2, "lin_history"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->t:Landroid/widget/LinearLayout;

    .line 98
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->c()V

    .line 99
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 132
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$4;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$5;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$6;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$7;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 201
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$8;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$9;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->l:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$10;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->c:Z

    if-eqz v0, :cond_a9

    .line 296
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$11;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$12;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$12;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$13;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$13;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$14;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$14;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :goto_96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ax$16;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/ax$16;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    .line 414
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->d()V

    .line 415
    return-void

    .line 326
    :cond_a9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->m:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ax$15;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ax$15;-><init>(Lcom/baidu/bdgame/sdk/obf/ax;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->g(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_96
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ax;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->d()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ax;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 421
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 429
    :goto_20
    return-void

    .line 424
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 425
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 428
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->l:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/cd;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->b:Lcom/baidu/bdgame/sdk/obf/cd;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->v:Lcom/baidu/bdgame/sdk/obf/r;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/ax;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/ax;)Lcom/baidu/bdgame/sdk/obf/ba;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->u:Lcom/baidu/bdgame/sdk/obf/ba;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    if-nez v0, :cond_7

    .line 486
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ax;->b()V

    .line 488
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ax;->d:Landroid/view/View;

    return-object v0
.end method
