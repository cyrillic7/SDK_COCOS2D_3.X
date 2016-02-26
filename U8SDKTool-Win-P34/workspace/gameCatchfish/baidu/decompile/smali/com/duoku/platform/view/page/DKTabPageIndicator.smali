.class public Lcom/duoku/platform/view/page/DKTabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/view/page/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/page/DKTabPageIndicator$a;,
        Lcom/duoku/platform/view/page/DKTabPageIndicator$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/CharSequence;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/lang/Runnable;

.field private final d:Landroid/view/View$OnClickListener;

.field private final e:Lcom/duoku/platform/view/page/a;

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private h:I

.field private i:I

.field private j:Lcom/duoku/platform/view/page/DKTabPageIndicator$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, ""

    sput-object v0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->b:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/duoku/platform/view/page/DKTabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/page/DKTabPageIndicator$1;-><init>(Lcom/duoku/platform/view/page/DKTabPageIndicator;)V

    iput-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->d:Landroid/view/View$OnClickListener;

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    new-instance v0, Lcom/duoku/platform/view/page/a;

    const-string v1, "vpiTabPageIndicatorStyle"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/duoku/platform/view/page/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->e:Lcom/duoku/platform/view/page/a;

    .line 103
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->e:Lcom/duoku/platform/view/page/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/page/DKTabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;I)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 194
    new-instance v0, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;-><init>(Lcom/duoku/platform/view/page/DKTabPageIndicator;Landroid/content/Context;)V

    .line 195
    invoke-static {v0, p1}, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->a(Lcom/duoku/platform/view/page/DKTabPageIndicator$b;I)V

    .line 196
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->setFocusable(Z)V

    .line 197
    iget-object v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {v0, p2}, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->setText(Ljava/lang/CharSequence;)V

    .line 200
    if-eqz p3, :cond_1e

    .line 202
    invoke-virtual {v0, p3, v5, v5, v5}, Lcom/duoku/platform/view/page/DKTabPageIndicator$b;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 205
    :cond_1e
    iget-object v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->e:Lcom/duoku/platform/view/page/a;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcom/duoku/platform/view/page/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/page/DKTabPageIndicator;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/page/DKTabPageIndicator;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(I)V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->e:Lcom/duoku/platform/view/page/a;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/view/page/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    .line 153
    iget-object v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 156
    :cond_f
    new-instance v1, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;

    invoke-direct {v1, p0, v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator$2;-><init>(Lcom/duoku/platform/view/page/DKTabPageIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/page/DKTabPageIndicator;)Lcom/duoku/platform/view/page/DKTabPageIndicator$a;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->j:Lcom/duoku/platform/view/page/DKTabPageIndicator$a;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/view/page/DKTabPageIndicator;)I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->h:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->e:Lcom/duoku/platform/view/page/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/page/a;->removeAllViews()V

    .line 264
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 265
    const/4 v0, 0x0

    .line 267
    instance-of v2, v1, Lcom/duoku/platform/a/c;

    if-eqz v2, :cond_14

    move-object v0, v1

    .line 269
    check-cast v0, Lcom/duoku/platform/a/c;

    .line 272
    :cond_14
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    move v5, v3

    .line 274
    :goto_19
    if-lt v5, v6, :cond_2c

    .line 293
    iget v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->i:I

    if-le v0, v6, :cond_23

    .line 295
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->i:I

    .line 298
    :cond_23
    iget v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->i:I

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(I)V

    .line 299
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->requestLayout()V

    .line 300
    return-void

    .line 276
    :cond_2c
    invoke-virtual {v1, v5}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 278
    if-nez v2, :cond_44

    .line 280
    sget-object v2, Lcom/duoku/platform/view/page/DKTabPageIndicator;->b:Ljava/lang/CharSequence;

    move-object v4, v2

    .line 285
    :goto_35
    if-eqz v0, :cond_42

    .line 287
    invoke-interface {v0, v5}, Lcom/duoku/platform/a/c;->a(I)I

    move-result v2

    .line 290
    :goto_3b
    invoke-direct {p0, v5, v4, v2}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(ILjava/lang/CharSequence;I)V

    .line 274
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_19

    :cond_42
    move v2, v3

    goto :goto_3b

    :cond_44
    move-object v4, v2

    goto :goto_35
.end method

.method public a(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_d

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_d
    iput p1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->i:I

    .line 318
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 320
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->e:Lcom/duoku/platform/view/page/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/page/a;->getChildCount()I

    move-result v3

    move v2, v1

    .line 322
    :goto_1b
    if-lt v2, v3, :cond_1e

    .line 333
    return-void

    .line 324
    :cond_1e
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->e:Lcom/duoku/platform/view/page/a;

    invoke-virtual {v0, v2}, Lcom/duoku/platform/view/page/a;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 325
    if-ne v2, p1, :cond_33

    const/4 v0, 0x1

    .line 326
    :goto_27
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 328
    if-eqz v0, :cond_2f

    .line 330
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->b(I)V

    .line 322
    :cond_2f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_33
    move v0, v1

    .line 325
    goto :goto_27
.end method

.method public a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    .prologue
    .line 338
    iput-object p1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 339
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_5

    .line 259
    :goto_4
    return-void

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_f

    .line 246
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 249
    :cond_f
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 251
    if-nez v0, :cond_1d

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1d
    iput-object p1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->f:Landroid/support/v4/view/ViewPager;

    .line 257
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 258
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a()V

    goto :goto_4
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 174
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 177
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 179
    :cond_c
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 186
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->c:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 190
    :cond_c
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    .prologue
    const/high16 v4, 0x40000000

    const/4 v1, 0x1

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 115
    if-ne v2, v4, :cond_3f

    move v0, v1

    .line 116
    :goto_a
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->setFillViewport(Z)V

    .line 118
    iget-object v3, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->e:Lcom/duoku/platform/view/page/a;

    invoke-virtual {v3}, Lcom/duoku/platform/view/page/a;->getChildCount()I

    move-result v3

    .line 120
    if-le v3, v1, :cond_4a

    if-eq v2, v4, :cond_1b

    const/high16 v1, -0x80000000

    if-ne v2, v1, :cond_4a

    .line 122
    :cond_1b
    const/4 v1, 0x2

    if-le v3, v1, :cond_41

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->h:I

    .line 136
    :goto_2a
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->getMeasuredWidth()I

    move-result v1

    .line 137
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 138
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->getMeasuredWidth()I

    move-result v2

    .line 140
    if-eqz v0, :cond_3e

    if-eq v1, v2, :cond_3e

    .line 143
    iget v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->i:I

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(I)V

    .line 145
    :cond_3e
    return-void

    .line 115
    :cond_3f
    const/4 v0, 0x0

    goto :goto_a

    .line 128
    :cond_41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->h:I

    goto :goto_2a

    .line 133
    :cond_4a
    const/4 v1, -0x1

    iput v1, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->h:I

    goto :goto_2a
.end method

.method public onPageScrollStateChanged(I)V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 213
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 215
    :cond_9
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 224
    :cond_9
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/page/DKTabPageIndicator;->a(I)V

    .line 230
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_c

    .line 232
    iget-object v0, p0, Lcom/duoku/platform/view/page/DKTabPageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 234
    :cond_c
    return-void
.end method
