.class public Lcom/duoku/platform/view/a/d;
.super Lcom/duoku/platform/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/a/d$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:[Ljava/lang/String;

.field private c:Lcom/duoku/platform/view/a/b;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/support/v4/view/ViewPager;

.field private k:Lcom/duoku/platform/view/page/DKTabPageIndicator;

.field private l:Landroid/support/v4/app/FragmentPagerAdapter;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->i:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->j:Landroid/support/v4/view/ViewPager;

    .line 66
    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->k:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    .line 67
    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->l:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 328
    new-instance v0, Lcom/duoku/platform/view/a/d$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/d$1;-><init>(Lcom/duoku/platform/view/a/d;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->u:Landroid/view/View$OnClickListener;

    .line 340
    new-instance v0, Lcom/duoku/platform/view/a/d$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/d$2;-><init>(Lcom/duoku/platform/view/a/d;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->v:Landroid/view/View$OnClickListener;

    .line 351
    new-instance v0, Lcom/duoku/platform/view/a/d$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/a/d$3;-><init>(Lcom/duoku/platform/view/a/d;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->w:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 88
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/d;I)V
    .registers 2

    .prologue
    .line 58
    iput p1, p0, Lcom/duoku/platform/view/a/d;->a:I

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/a/d;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v1, "dk_btn_customer_retry"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 211
    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v2, "dk_tv_network_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    if-eqz p1, :cond_21

    .line 215
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_21
    new-instance v1, Lcom/duoku/platform/view/a/d$4;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/d$4;-><init>(Lcom/duoku/platform/view/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->m:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 235
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/a/d;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/view/a/d;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->m:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/view/a/d;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/a/d;)V
    .registers 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/duoku/platform/view/a/d;->o()V

    return-void
.end method

.method static synthetic g(Lcom/duoku/platform/view/a/d;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->j:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private n()V
    .registers 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v2, "dk_user_customer_center"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->e:Landroid/view/ViewGroup;

    .line 169
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v2, "dk_customer_my_question"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v3, "dk_customer_submit_question"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v4, "dk_customer_common_question"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 174
    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    aput-object v0, v3, v1

    .line 172
    iput-object v3, p0, Lcom/duoku/platform/view/a/d;->b:[Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_56

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    .line 180
    :cond_56
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v1, "dk_payment_iv_close"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->i:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v1, "dk_tv_title"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v2, "dk_layout_payment_back"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 186
    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v3, "dk_layout_net_work_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/duoku/platform/view/a/d;->m:Landroid/widget/FrameLayout;

    .line 187
    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v3, "dk_layout_progress_customer"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/duoku/platform/view/a/d;->n:Landroid/widget/LinearLayout;

    .line 188
    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v3, "dk_layout_customer_region"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/duoku/platform/view/a/d;->o:Landroid/widget/LinearLayout;

    .line 190
    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v2, "dk_customer_center_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    invoke-direct {p0}, Lcom/duoku/platform/view/a/d;->o()V

    .line 195
    return-void
.end method

.method private o()V
    .registers 6

    .prologue
    .line 202
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->d:Lcom/duoku/platform/c/c;

    sget-object v2, Lcom/duoku/platform/c/b;->y:Lcom/duoku/platform/c/b;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/duoku/platform/view/a/d;->g()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 203
    return-void
.end method

.method private p()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 239
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v1, "dk_customer_touch_page"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->j:Landroid/support/v4/view/ViewPager;

    .line 240
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v1, "dk_customer_page_indicator"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/page/DKTabPageIndicator;

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->k:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    .line 242
    new-instance v0, Lcom/duoku/platform/view/a/c;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->q:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/view/a/c;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->c:Lcom/duoku/platform/view/a/b;

    .line 243
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->c:Lcom/duoku/platform/view/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/duoku/platform/view/a/h;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->r:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/duoku/platform/view/a/d;->t:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/duoku/platform/view/a/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->c:Lcom/duoku/platform/view/a/b;

    .line 245
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->c:Lcom/duoku/platform/view/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v0, Lcom/duoku/platform/view/a/g;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/d;->s:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/view/a/g;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->c:Lcom/duoku/platform/view/a/b;

    .line 247
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->c:Lcom/duoku/platform/view/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->c:Lcom/duoku/platform/view/a/b;

    instance-of v0, v0, Lcom/duoku/platform/view/a/g;

    if-eqz v0, :cond_6a

    .line 251
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->c:Lcom/duoku/platform/view/a/b;

    check-cast v0, Lcom/duoku/platform/view/a/g;

    new-instance v1, Lcom/duoku/platform/view/a/d$5;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/d$5;-><init>(Lcom/duoku/platform/view/a/d;)V

    iput-object v1, v0, Lcom/duoku/platform/view/a/g;->c:Landroid/view/View$OnClickListener;

    .line 263
    :cond_6a
    new-instance v0, Lcom/duoku/platform/view/a/d$a;

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/ui/DKContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/view/a/d$a;-><init>(Lcom/duoku/platform/view/a/d;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->l:Landroid/support/v4/app/FragmentPagerAdapter;

    .line 264
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->j:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->l:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 265
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->k:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(Landroid/support/v4/view/ViewPager;)V

    .line 266
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->k:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->w:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 268
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->j:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->k:Lcom/duoku/platform/view/page/DKTabPageIndicator;

    invoke-virtual {v0, v4}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->setVisibility(I)V

    .line 273
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 286
    sget-object v0, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->d:Lcom/duoku/platform/c/c;

    .line 287
    return-void
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    .line 124
    sget-object v0, Lcom/duoku/platform/c/b;->o:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_2b

    .line 126
    check-cast p2, Lcom/duoku/platform/h/f;

    .line 128
    invoke-virtual {p2}, Lcom/duoku/platform/h/f;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->q:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {p2}, Lcom/duoku/platform/h/f;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->r:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {p2}, Lcom/duoku/platform/h/f;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->s:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {p2}, Lcom/duoku/platform/h/f;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/view/a/d;->t:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/duoku/platform/view/a/d;->p()V

    .line 162
    :cond_2a
    :goto_2a
    return-void

    .line 135
    :cond_2b
    sget-object v0, Lcom/duoku/platform/c/b;->z:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_3d

    .line 137
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_39

    .line 139
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/a/d;->b(Ljava/lang/String;)V

    goto :goto_2a

    .line 143
    :cond_39
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/a/d;->b(Ljava/lang/String;)V

    goto :goto_2a

    .line 146
    :cond_3d
    sget-object v0, Lcom/duoku/platform/c/b;->A:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_49

    .line 148
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_2a

    .line 150
    :cond_49
    sget-object v0, Lcom/duoku/platform/c/b;->B:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_69

    .line 152
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v2, "dk_tip_payment_network_time_out"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/d;->b(Ljava/lang/String;)V

    goto :goto_2a

    .line 155
    :cond_69
    sget-object v0, Lcom/duoku/platform/c/b;->C:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_2a

    .line 157
    check-cast p2, Lcom/duoku/platform/h/s;

    .line 159
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/d;->f:Landroid/content/Context;

    const-string v2, "dk_user_request_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/duoku/platform/h/s;->getErrorString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lcom/duoku/platform/view/a/d;->b(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/duoku/platform/view/a/d;->n()V

    .line 96
    invoke-virtual {p0}, Lcom/duoku/platform/view/a/d;->b()V

    .line 97
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 280
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 300
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    .line 325
    :goto_13
    return-void

    .line 304
    :cond_14
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2c

    .line 306
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    goto :goto_13

    .line 310
    :cond_2c
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    iget v1, p0, Lcom/duoku/platform/view/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/view/a/c;

    if-eqz v0, :cond_66

    .line 312
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    iget v1, p0, Lcom/duoku/platform/view/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 314
    iget-object v0, p0, Lcom/duoku/platform/view/a/d;->p:Ljava/util/ArrayList;

    iget v1, p0, Lcom/duoku/platform/view/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/c;->b()V

    goto :goto_13

    .line 318
    :cond_56
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    goto :goto_13

    .line 323
    :cond_66
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->finish()V

    goto :goto_13
.end method

.method public d()V
    .registers 3

    .prologue
    .line 415
    invoke-super {p0}, Lcom/duoku/platform/view/a;->d()V

    .line 419
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 422
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/duoku/platform/view/a;->h()V

    .line 105
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 107
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/duoku/platform/view/a;->i()V

    .line 115
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

    .line 116
    return-void
.end method
