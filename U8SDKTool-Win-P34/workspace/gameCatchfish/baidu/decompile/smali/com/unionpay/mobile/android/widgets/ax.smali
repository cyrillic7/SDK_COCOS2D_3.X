.class public final Lcom/unionpay/mobile/android/widgets/ax;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/ax$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/LinearLayout;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/unionpay/mobile/android/widgets/ax$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/unionpay/mobile/android/widgets/ax$a;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->e:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->h:I

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->i:I

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/unionpay/mobile/android/widgets/ax;->k:Lcom/unionpay/mobile/android/widgets/ax$a;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    const/high16 v1, 0x41200000

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/ax;->e:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/unionpay/mobile/android/widgets/ax;->h:I

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/widgets/ax;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ax$a;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mobile/android/widgets/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ax$a;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ax$a;B)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->e:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->h:I

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->i:I

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/ax;->k:Lcom/unionpay/mobile/android/widgets/ax$a;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    const/high16 v1, 0x41200000

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/widgets/ax;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/ax;)Lcom/unionpay/mobile/android/widgets/ax$a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->k:Lcom/unionpay/mobile/android/widgets/ax$a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 13

    const/high16 v10, 0x41a00000

    const/16 v9, 0xb

    const/4 v8, -0x2

    const/16 v7, 0xf

    const/4 v6, -0x1

    sget v0, Lcom/unionpay/mobile/android/global/a;->k:I

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->i:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->i:I

    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ax;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->L:I

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ax;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Lcom/unionpay/mobile/android/widgets/ax;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->g:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    iget v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    iget v4, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    iget v5, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->g:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Lcom/unionpay/mobile/android/widgets/ax;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    const/high16 v3, 0x41300000

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v0

    iget v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->h:I

    if-eqz v3, :cond_6e

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->h:I

    :cond_6e
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ax;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_187

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ax;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7e
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/unionpay/mobile/android/global/a;->l:I

    iget v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->i:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/unionpay/mobile/android/widgets/ax;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_139

    sget v0, Lcom/unionpay/mobile/android/global/a;->e:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->i:I

    invoke-direct {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    const/high16 v4, 0x41800000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/unionpay/mobile/android/widgets/ax;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->m:I

    sget v3, Lcom/unionpay/mobile/android/global/a;->H:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v0, Lcom/unionpay/mobile/android/widgets/o;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    sget v3, Lcom/unionpay/mobile/android/global/a;->M:I

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v5}, Lcom/unionpay/mobile/android/widgets/o;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v0, v4}, Lcom/unionpay/mobile/android/widgets/ax;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_139
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/unionpay/mobile/android/global/a;->E:I

    sget v3, Lcom/unionpay/mobile/android/global/a;->D:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x407

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/widgets/ax;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/unionpay/mobile/android/global/a;->D:I

    sget v2, Lcom/unionpay/mobile/android/global/a;->D:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->j:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ax;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ax;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/widgets/ax;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_187
    const/16 v4, 0x405

    invoke-virtual {v1, v4}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7e
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ax;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method
