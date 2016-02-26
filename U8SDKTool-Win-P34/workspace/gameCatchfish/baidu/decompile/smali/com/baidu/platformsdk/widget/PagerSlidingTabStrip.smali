.class public Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/by;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;,
        Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;,
        Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$a;
    }
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Ljava/util/Locale;

.field public a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private final e:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->b:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v6, -0x99999a

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;-><init>(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->e:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;

    .line 57
    iput v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->i:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->j:F

    .line 63
    iput v6, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->m:I

    .line 64
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->n:I

    .line 65
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o:I

    .line 67
    iput-boolean v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->p:Z

    .line 68
    iput-boolean v2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->q:Z

    .line 70
    const/16 v0, 0x34

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->r:I

    .line 71
    iput v5, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->s:I

    .line 72
    iput v5, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->t:I

    .line 73
    const/16 v0, 0xc

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->u:I

    .line 74
    const/16 v0, 0x18

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->v:I

    .line 75
    iput v2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->w:I

    .line 77
    const/16 v0, 0x11

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->x:I

    .line 78
    iput v6, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->y:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->z:Landroid/graphics/Typeface;

    .line 80
    iput v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->A:I

    .line 82
    iput v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->B:I

    .line 84
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_pager_sliding_background_tab"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->C:I

    .line 99
    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 102
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 106
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 110
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->r:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->r:I

    .line 111
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->s:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->s:I

    .line 112
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->t:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->t:I

    .line 113
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->u:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->u:I

    .line 114
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->v:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->v:I

    .line 115
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->w:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->w:I

    .line 116
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->x:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->x:I

    .line 120
    sget-object v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->x:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->x:I

    .line 123
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->y:I

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    .line 130
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->w:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->D:Ljava/util/Locale;

    if-nez v0, :cond_125

    .line 141
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->D:Ljava/util/Locale;

    .line 143
    :cond_125
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;F)F
    .registers 2

    .prologue
    .line 33
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->j:F

    return p1
.end method

.method static synthetic a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;I)I
    .registers 2

    .prologue
    .line 33
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->i:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(II)V
    .registers 5

    .prologue
    .line 211
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    .line 216
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 220
    new-instance v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$2;-><init>(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->v:I

    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->v:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 228
    iget-object v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->p:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1c
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void

    .line 228
    :cond_20
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1c
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 201
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 204
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 206
    invoke-direct {p0, p1, v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;II)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->b(II)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->i:I

    return v0
.end method

.method private b(II)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x66

    .line 262
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->h:I

    if-nez v0, :cond_8

    .line 286
    :cond_7
    :goto_7
    return-void

    .line 266
    :cond_8
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int v3, v0, p2

    move v1, v2

    .line 268
    :goto_15
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_42

    .line 269
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    if-ne v1, p1, :cond_38

    .line 271
    check-cast v0, Landroid/widget/TextView;

    const/16 v4, 0x28

    const/16 v5, 0x7b

    const/16 v6, 0xf3

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    :goto_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 273
    :cond_38
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_34

    .line 277
    :cond_42
    if-gtz p1, :cond_46

    if-lez p2, :cond_54

    .line 278
    :cond_46
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->r:I

    sub-int v0, v3, v0

    .line 281
    :goto_4a
    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->B:I

    if-eq v0, v1, :cond_7

    .line 282
    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->B:I

    .line 283
    invoke-virtual {p0, v0, v2}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_7

    :cond_54
    move v0, v3

    goto :goto_4a
.end method

.method static synthetic c(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private o()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 233
    move v1, v2

    :goto_2
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->h:I

    if-ge v1, v0, :cond_4d

    .line 235
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 237
    iget v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->C:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_37

    .line 241
    check-cast v0, Landroid/widget/TextView;

    .line 242
    iget v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->x:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 243
    iget-object v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->z:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->A:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 244
    iget v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->y:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-boolean v3, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->q:Z

    if-eqz v3, :cond_37

    .line 249
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3b

    .line 250
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 233
    :cond_37
    :goto_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 252
    :cond_3b
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->D:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    .line 258
    :cond_4d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->h:I

    .line 167
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->h:I

    if-ge v1, v0, :cond_46

    .line 169
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$a;

    if-eqz v0, :cond_34

    .line 170
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$a;

    invoke-interface {v0, v1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$a;->a(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(II)V

    .line 167
    :goto_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 172
    :cond_34
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    goto :goto_30

    .line 177
    :cond_46
    invoke-direct {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o()V

    .line 179
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$1;-><init>(Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 197
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 372
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->m:I

    .line 373
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 374
    return-void
.end method

.method public a(Landroid/graphics/Typeface;I)V
    .registers 3

    .prologue
    .line 490
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->z:Landroid/graphics/Typeface;

    .line 491
    iput p2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->A:I

    .line 492
    invoke-direct {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o()V

    .line 493
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 159
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .registers 4

    .prologue
    .line 146
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    .line 148
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_10

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_10
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->e:Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$b;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->a()V

    .line 155
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->p:Z

    .line 451
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->requestLayout()V

    .line 452
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 382
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->m:I

    return v0
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->m:I

    .line 378
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 379
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->q:Z

    .line 464
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 391
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->s:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 386
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->s:I

    .line 387
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 388
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 405
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->n:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 395
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->n:I

    .line 396
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 397
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o:I

    return v0
.end method

.method public e(I)V
    .registers 3

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->n:I

    .line 401
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 402
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->t:I

    return v0
.end method

.method public f(I)V
    .registers 2

    .prologue
    .line 409
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o:I

    .line 410
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 411
    return-void
.end method

.method public g()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->u:I

    return v0
.end method

.method public g(I)V
    .registers 3

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o:I

    .line 415
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 416
    return-void
.end method

.method public h()I
    .registers 2

    .prologue
    .line 446
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->r:I

    return v0
.end method

.method public h(I)V
    .registers 2

    .prologue
    .line 423
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->t:I

    .line 424
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 425
    return-void
.end method

.method public i(I)V
    .registers 2

    .prologue
    .line 432
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->u:I

    .line 433
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 434
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->p:Z

    return v0
.end method

.method public j(I)V
    .registers 2

    .prologue
    .line 441
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->r:I

    .line 442
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->invalidate()V

    .line 443
    return-void
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->q:Z

    return v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 472
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->x:I

    return v0
.end method

.method public k(I)V
    .registers 2

    .prologue
    .line 467
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->x:I

    .line 468
    invoke-direct {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o()V

    .line 469
    return-void
.end method

.method public l()I
    .registers 2

    .prologue
    .line 486
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->y:I

    return v0
.end method

.method public l(I)V
    .registers 2

    .prologue
    .line 476
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->y:I

    .line 477
    invoke-direct {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o()V

    .line 478
    return-void
.end method

.method public m()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->C:I

    return v0
.end method

.method public m(I)V
    .registers 3

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->y:I

    .line 482
    invoke-direct {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o()V

    .line 483
    return-void
.end method

.method public n()I
    .registers 2

    .prologue
    .line 509
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->v:I

    return v0
.end method

.method public n(I)V
    .registers 2

    .prologue
    .line 496
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->C:I

    .line 497
    return-void
.end method

.method public o(I)V
    .registers 2

    .prologue
    .line 504
    iput p1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->v:I

    .line 505
    invoke-direct {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->o()V

    .line 506
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000

    .line 290
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 292
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->h:I

    if-nez v0, :cond_10

    .line 332
    :cond_f
    :goto_f
    return-void

    .line 296
    :cond_10
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->getHeight()I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->i:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v3, v2

    .line 308
    iget v2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->j:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_62

    iget v2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->i:I

    iget v4, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->h:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_62

    .line 310
    iget-object v2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->i:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 314
    iget v5, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->j:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->j:F

    sub-float v5, v6, v5

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    .line 315
    iget v4, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->j:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->j:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 318
    :cond_62
    iget v2, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->s:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 322
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 514
    check-cast p1, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;

    .line 515
    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p1}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 516
    iget v0, p1, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;->a:I

    iput v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->i:I

    .line 517
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->requestLayout()V

    .line 518
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 522
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 523
    new-instance v1, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;

    invoke-direct {v1, v0}, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;-><init>(Landroid/os/Parcelable;)V

    .line 524
    iget v0, p0, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip;->i:I

    iput v0, v1, Lcom/baidu/platformsdk/widget/PagerSlidingTabStrip$c;->a:I

    .line 525
    return-object v1
.end method
