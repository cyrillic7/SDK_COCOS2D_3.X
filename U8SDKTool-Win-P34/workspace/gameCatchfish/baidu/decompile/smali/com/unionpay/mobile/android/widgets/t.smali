.class public final Lcom/unionpay/mobile/android/widgets/t;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/t$b;,
        Lcom/unionpay/mobile/android/widgets/t$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Lcom/unionpay/mobile/android/widgets/t$b;

.field private f:Lcom/unionpay/mobile/android/widgets/t$a;

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/text/TextWatcher;

.field private m:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    const/16 v9, 0xf

    const/high16 v8, 0x41200000

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    iput-object v7, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    iput-object v7, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/t;->d:Z

    iput-object v7, p0, Lcom/unionpay/mobile/android/widgets/t;->e:Lcom/unionpay/mobile/android/widgets/t$b;

    iput-object v7, p0, Lcom/unionpay/mobile/android/widgets/t;->f:Lcom/unionpay/mobile/android/widgets/t$a;

    iput-object v7, p0, Lcom/unionpay/mobile/android/widgets/t;->i:Landroid/widget/TextView;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/u;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/u;-><init>(Lcom/unionpay/mobile/android/widgets/t;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/v;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/v;-><init>(Lcom/unionpay/mobile/android/widgets/t;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->l:Landroid/text/TextWatcher;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/w;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/w;-><init>(Lcom/unionpay/mobile/android/widgets/t;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->m:Landroid/view/View$OnFocusChangeListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/unionpay/mobile/android/widgets/t;->setOrientation(I)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->n:I

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/t;->g:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/t;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/t;->setFocusable(Z)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0xcccccd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->i:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x13

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v2}, Lcom/unionpay/mobile/android/widgets/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->j:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {v3, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    const/high16 v1, 0x41f00000

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->l:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/t;->d:Z

    if-eqz v0, :cond_195

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->m:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_195
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/widgets/t;)Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/t;->d:Z

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/widgets/t;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/widgets/t;)Lcom/unionpay/mobile/android/widgets/t$b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->e:Lcom/unionpay/mobile/android/widgets/t$b;

    return-object v0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/widgets/t;)Lcom/unionpay/mobile/android/widgets/t$a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->f:Lcom/unionpay/mobile/android/widgets/t$a;

    return-object v0
.end method

.method static synthetic g()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/widgets/t;
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object p0
.end method

.method public final a()V
    .registers 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/widgets/t;->d:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_25
    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_9
    return-void
.end method

.method public final a(Landroid/text/InputFilter;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    aput-object p1, v0, v4

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_a

    :cond_19
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [Landroid/text/InputFilter;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_a
.end method

.method public final a(Landroid/text/TextWatcher;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_b
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 5

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method public final a(Landroid/widget/TextView$OnEditorActionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/t;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_d
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/t$a;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/t;->f:Lcom/unionpay/mobile/android/widgets/t$a;

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/t$b;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/t;->e:Lcom/unionpay/mobile/android/widgets/t$b;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_9
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public final c()Landroid/text/Editable;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    :cond_a
    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->e:Lcom/unionpay/mobile/android/widgets/t$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->e:Lcom/unionpay/mobile/android/widgets/t$b;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/widgets/t$b;->d()V

    goto :goto_4
.end method

.method public final f()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1e

    const-string v0, "setShowSoftInputOnFocus"

    :cond_16
    :goto_16
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    :goto_1d
    return-void

    :cond_1e
    const/16 v2, 0xe

    if-lt v1, v2, :cond_16

    const-string v0, "setSoftInputShownOnFocus"

    goto :goto_16

    :cond_25
    const-class v1, Landroid/widget/EditText;

    const/4 v2, 0x1

    :try_start_28
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_47} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_47} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_47} :catch_57
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_47} :catch_5c

    goto :goto_1d

    :catch_48
    move-exception v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1d

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1d

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1d

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1d
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->e:Lcom/unionpay/mobile/android/widgets/t$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->e:Lcom/unionpay/mobile/android/widgets/t$b;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/widgets/t$b;->a_()V

    :cond_9
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/t;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    return-void
.end method
