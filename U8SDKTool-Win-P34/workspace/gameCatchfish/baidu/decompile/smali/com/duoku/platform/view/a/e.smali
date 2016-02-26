.class public Lcom/duoku/platform/view/a/e;
.super Lcom/duoku/platform/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/a/e$a;,
        Lcom/duoku/platform/view/a/e$b;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/FrameLayout;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Lcom/duoku/a/a/a/a/a;

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Lcom/duoku/platform/view/a/e$a;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Landroid/view/View$OnClickListener;

.field private N:Landroid/view/View$OnClickListener;

.field private O:Landroid/view/View$OnClickListener;

.field private P:Landroid/view/View$OnClickListener;

.field private Q:Landroid/view/View$OnClickListener;

.field private R:Landroid/os/Handler;

.field private S:Landroid/widget/BaseAdapter;

.field private a:Lcom/duoku/platform/e/a;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/ListView;

.field private u:Landroid/widget/ImageView;

.field private v:I

.field private w:Landroid/widget/ProgressBar;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a;-><init>(Landroid/content/Context;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/view/a/e;->L:Z

    .line 310
    new-instance v0, Lcom/duoku/platform/view/a/e$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/e$1;-><init>(Lcom/duoku/platform/view/a/e;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->M:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Lcom/duoku/platform/view/a/e$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/e$2;-><init>(Lcom/duoku/platform/view/a/e;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->N:Landroid/view/View$OnClickListener;

    .line 344
    new-instance v0, Lcom/duoku/platform/view/a/e$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/e$3;-><init>(Lcom/duoku/platform/view/a/e;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->O:Landroid/view/View$OnClickListener;

    .line 388
    new-instance v0, Lcom/duoku/platform/view/a/e$4;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/e$4;-><init>(Lcom/duoku/platform/view/a/e;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->P:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v0, Lcom/duoku/platform/view/a/e$5;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/e$5;-><init>(Lcom/duoku/platform/view/a/e;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->Q:Landroid/view/View$OnClickListener;

    .line 480
    new-instance v0, Lcom/duoku/platform/view/a/e$6;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/e$6;-><init>(Lcom/duoku/platform/view/a/e;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->R:Landroid/os/Handler;

    .line 511
    new-instance v0, Lcom/duoku/platform/view/a/e$7;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/e$7;-><init>(Lcom/duoku/platform/view/a/e;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->S:Landroid/widget/BaseAdapter;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/e;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->r:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/e;I)V
    .registers 2

    .prologue
    .line 70
    iput p1, p0, Lcom/duoku/platform/view/a/e;->v:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/e;Lcom/duoku/a/a/a/a/a;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/duoku/platform/view/a/e;->F:Lcom/duoku/a/a/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/e;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/duoku/platform/view/a/e;->C:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/e;Z)V
    .registers 2

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/duoku/platform/view/a/e;->L:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/e;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/e;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->C:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/16 v4, 0x8

    .line 272
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->B:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_btn_customer_retry"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 273
    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->B:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v3, "dk_tv_network_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 274
    if-eqz p1, :cond_27

    .line 276
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_27
    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->B:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    new-instance v1, Lcom/duoku/platform/view/a/e$8;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/e$8;-><init>(Lcom/duoku/platform/view/a/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 687
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/view/a/e;)I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/duoku/platform/view/a/e;->v:I

    return v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/a/e;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->R:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/a/e;)V
    .registers 1

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/duoku/platform/view/a/e;->r()V

    return-void
.end method

.method static synthetic i(Lcom/duoku/platform/view/a/e;)V
    .registers 1

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/duoku/platform/view/a/e;->s()V

    return-void
.end method

.method static synthetic j(Lcom/duoku/platform/view/a/e;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->w:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/view/a/e;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->s:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/view/a/e;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/view/a/e;)Landroid/widget/BaseAdapter;
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->S:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic n(Lcom/duoku/platform/view/a/e;)Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->P:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic o(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->E:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .registers 5

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    const-string v1, "com.duoku.game.helper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "com.duoku.game.helper.ex.uservice.IDKUserService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    new-instance v1, Lcom/duoku/platform/view/a/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/duoku/platform/view/a/e$a;-><init>(Lcom/duoku/platform/view/a/e;Lcom/duoku/platform/view/a/e$a;)V

    iput-object v1, p0, Lcom/duoku/platform/view/a/e;->I:Lcom/duoku/platform/view/a/e$a;

    .line 118
    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e;->I:Lcom/duoku/platform/view/a/e$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 119
    return-void
.end method

.method static synthetic p(Lcom/duoku/platform/view/a/e;)Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->O:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private p()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_head"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->b:Landroid/widget/LinearLayout;

    .line 162
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_tv_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->i:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_payment_iv_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->m:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->Q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_iv_payment_back"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->l:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_layout"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->p:Landroid/widget/RelativeLayout;

    .line 168
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_list"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->t:Landroid/widget/ListView;

    .line 169
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 170
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_gifts_lv_header"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->c:Landroid/widget/LinearLayout;

    .line 171
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_not_exist"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->q:Landroid/widget/RelativeLayout;

    .line 173
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_not_exist_iv"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->n:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_not_exist_tv"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->j:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_tips"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->r:Landroid/widget/RelativeLayout;

    .line 176
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_tips_iv"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->o:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_tips_text"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->k:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_tips_close"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->u:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_progress"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->w:Landroid/widget/ProgressBar;

    .line 180
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_gifts_tips_layout"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->s:Landroid/widget/RelativeLayout;

    .line 181
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->w:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 183
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->w:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_layout_progress_account"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->z:Landroid/widget/LinearLayout;

    .line 185
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_account_user_shodow"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->A:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "dk_layout_net_work_error"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->B:Landroid/widget/FrameLayout;

    .line 189
    invoke-virtual {p0}, Lcom/duoku/platform/view/a/e;->b()V

    .line 191
    invoke-direct {p0}, Lcom/duoku/platform/view/a/e;->q()V

    .line 192
    return-void
.end method

.method static synthetic q(Lcom/duoku/platform/view/a/e;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->B:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private q()V
    .registers 6

    .prologue
    .line 325
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->A:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->z:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->d:Lcom/duoku/platform/c/c;

    sget-object v2, Lcom/duoku/platform/c/b;->D:Lcom/duoku/platform/c/b;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/duoku/platform/view/a/e;->g()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 328
    return-void
.end method

.method static synthetic r(Lcom/duoku/platform/view/a/e;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->z:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private r()V
    .registers 4

    .prologue
    .line 422
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/view/a/e$9;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/a/e$9;-><init>(Lcom/duoku/platform/view/a/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    .line 443
    return-void
.end method

.method private s()V
    .registers 5

    .prologue
    .line 447
    invoke-static {}, Lcom/duoku/platform/ui/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 466
    :cond_6
    :goto_6
    return-void

    .line 451
    :cond_7
    const/16 v0, 0x8

    iput v0, p0, Lcom/duoku/platform/view/a/e;->G:I

    .line 452
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoku/platform/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/duoku/platform/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->H:Ljava/lang/String;

    .line 455
    :try_start_23
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->F:Lcom/duoku/a/a/a/a/a;

    if-eqz v0, :cond_6

    .line 459
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->F:Lcom/duoku/a/a/a/a/a;

    iget v1, p0, Lcom/duoku/platform/view/a/e;->G:I

    iget-object v2, p0, Lcom/duoku/platform/view/a/e;->H:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/duoku/a/a/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    .line 460
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_4f} :catch_50

    goto :goto_6

    .line 462
    :catch_50
    move-exception v0

    .line 464
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method static synthetic s(Lcom/duoku/platform/view/a/e;)V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/duoku/platform/view/a/e;->q()V

    return-void
.end method

.method private t()V
    .registers 3

    .prologue
    .line 692
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.ACTION_GIFT_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 694
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 649
    sget-object v0, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->d:Lcom/duoku/platform/c/c;

    .line 650
    return-void
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 197
    const-string v0, ""

    .line 198
    sget-object v0, Lcom/duoku/platform/c/b;->o:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_85

    .line 202
    invoke-direct {p0}, Lcom/duoku/platform/view/a/e;->t()V

    .line 204
    check-cast p2, Lcom/duoku/platform/ui/a/f;

    .line 205
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->x:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/f;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->y:Ljava/lang/String;

    .line 207
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/f;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->D:Ljava/lang/String;

    .line 208
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/f;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->E:Ljava/lang/String;

    .line 209
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/f;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->J:Ljava/lang/String;

    .line 210
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->K:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6d

    .line 215
    :cond_47
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    :goto_51
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v1, "com.duoku.game.helper"

    iget-object v2, p0, Lcom/duoku/platform/view/a/e;->K:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 227
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 233
    :goto_62
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :cond_6c
    :goto_6c
    return-void

    .line 221
    :cond_6d
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->S:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_51

    .line 231
    :cond_7f
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_62

    .line 236
    :cond_85
    sget-object v0, Lcom/duoku/platform/c/b;->z:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_97

    .line 239
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_93

    .line 241
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/a/e;->b(Ljava/lang/String;)V

    goto :goto_6c

    .line 245
    :cond_93
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/a/e;->b(Ljava/lang/String;)V

    goto :goto_6c

    .line 248
    :cond_97
    sget-object v0, Lcom/duoku/platform/c/b;->A:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_b6

    .line 250
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 251
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_6c

    .line 253
    :cond_b6
    sget-object v0, Lcom/duoku/platform/c/b;->B:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_d6

    .line 255
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_tip_payment_network_time_out"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/e;->b(Ljava/lang/String;)V

    goto :goto_6c

    .line 258
    :cond_d6
    sget-object v0, Lcom/duoku/platform/c/b;->C:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_6c

    .line 260
    check-cast p2, Lcom/duoku/platform/h/s;

    .line 262
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_user_request_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/duoku/platform/h/s;->getErrorString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/e;->b(Ljava/lang/String;)V

    goto/16 :goto_6c
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 98
    new-instance v0, Lcom/duoku/platform/e/a;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->a:Lcom/duoku/platform/e/a;

    .line 99
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 101
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_gifts_landscape"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->e:Landroid/view/ViewGroup;

    .line 108
    :goto_26
    invoke-direct {p0}, Lcom/duoku/platform/view/a/e;->p()V

    .line 109
    invoke-direct {p0}, Lcom/duoku/platform/view/a/e;->o()V

    .line 110
    return-void

    .line 105
    :cond_2d
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    const-string v2, "dk_gifts_portrait"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->e:Landroid/view/ViewGroup;

    goto :goto_26
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->r:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->O:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->S:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 640
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->F:Lcom/duoku/a/a/a/a/a;

    if-nez v0, :cond_13

    .line 642
    invoke-direct {p0}, Lcom/duoku/platform/view/a/e;->o()V

    .line 644
    :cond_13
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/duoku/platform/view/a;->d()V

    .line 146
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->I:Lcom/duoku/platform/view/a/e$a;

    if-eqz v0, :cond_11

    .line 148
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->I:Lcom/duoku/platform/view/a/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/a/e;->I:Lcom/duoku/platform/view/a/e$a;

    .line 152
    :cond_11
    iget-boolean v0, p0, Lcom/duoku/platform/view/a/e;->L:Z

    if-nez v0, :cond_1d

    .line 154
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 157
    :cond_1d
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0}, Lcom/duoku/platform/view/a;->h()V

    .line 126
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 128
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->S:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 134
    invoke-super {p0}, Lcom/duoku/platform/view/a;->i()V

    .line 136
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 137
    return-void
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/duoku/platform/view/a/e;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 659
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    .line 664
    :goto_15
    return-object v0

    .line 661
    :catch_16
    move-exception v0

    .line 663
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 664
    const/4 v0, 0x0

    goto :goto_15
.end method
