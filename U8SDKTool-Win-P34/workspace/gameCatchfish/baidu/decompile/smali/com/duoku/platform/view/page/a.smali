.class public Lcom/duoku/platform/view/page/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 29
    const v2, 0x1010129

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/duoku/platform/view/page/a;->a:[I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    sget-object v1, Lcom/duoku/platform/view/page/a;->a:[I

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/page/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/view/page/a;->f:I

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/view/page/a;->e:I

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getChildCount()I

    move-result v2

    .line 122
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_26

    .line 134
    invoke-direct {p0, v2}, Lcom/duoku/platform/view/page/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 135
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    if-nez v0, :cond_4f

    .line 139
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/duoku/platform/view/page/a;->d:I

    sub-int/2addr v0, v1

    .line 145
    :goto_22
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/view/page/a;->a(Landroid/graphics/Canvas;I)V

    .line 147
    :cond_25
    return-void

    .line 123
    :cond_26
    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/page/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4b

    .line 126
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/page/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/view/page/a;->a(Landroid/graphics/Canvas;I)V

    .line 122
    :cond_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 142
    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_22
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .registers 7

    .prologue
    .line 180
    iget-object v0, p0, Lcom/duoku/platform/view/page/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/duoku/platform/view/page/a;->f:I

    add-int/2addr v1, v2

    .line 181
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/duoku/platform/view/page/a;->f:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/duoku/platform/view/page/a;->d:I

    add-int/2addr v3, p2

    .line 180
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    iget-object v0, p0, Lcom/duoku/platform/view/page/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    return-void
.end method

.method private a(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 192
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getChildCount()I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 209
    :cond_9
    :goto_9
    return v0

    .line 196
    :cond_a
    iget v1, p0, Lcom/duoku/platform/view/page/a;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 199
    add-int/lit8 v1, p1, -0x1

    :goto_12
    if-ltz v1, :cond_9

    .line 200
    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/page/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_22

    .line 201
    const/4 v0, 0x1

    .line 202
    goto :goto_9

    .line 199
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_12
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getChildCount()I

    move-result v2

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_26

    .line 164
    invoke-direct {p0, v2}, Lcom/duoku/platform/view/page/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 165
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    if-nez v0, :cond_4f

    .line 169
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/duoku/platform/view/page/a;->c:I

    sub-int/2addr v0, v1

    .line 175
    :goto_22
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/view/page/a;->b(Landroid/graphics/Canvas;I)V

    .line 177
    :cond_25
    return-void

    .line 153
    :cond_26
    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/page/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 155
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4b

    .line 156
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/page/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 157
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v0, v3, v0

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/view/page/a;->b(Landroid/graphics/Canvas;I)V

    .line 152
    :cond_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 172
    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_22
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .registers 8

    .prologue
    .line 186
    iget-object v0, p0, Lcom/duoku/platform/view/page/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/duoku/platform/view/page/a;->f:I

    add-int/2addr v1, v2

    .line 187
    iget v2, p0, Lcom/duoku/platform/view/page/a;->c:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/duoku/platform/view/page/a;->f:I

    sub-int/2addr v3, v4

    .line 186
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    iget-object v0, p0, Lcom/duoku/platform/view/page/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/duoku/platform/view/page/a;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_6

    .line 73
    :goto_5
    return-void

    .line 61
    :cond_6
    iput-object p1, p0, Lcom/duoku/platform/view/page/a;->b:Landroid/graphics/drawable/Drawable;

    .line 63
    if-eqz p1, :cond_20

    .line 64
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/view/page/a;->c:I

    .line 65
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/duoku/platform/view/page/a;->d:I

    .line 71
    :goto_16
    if-nez p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/page/a;->setWillNotDraw(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->requestLayout()V

    goto :goto_5

    .line 67
    :cond_20
    iput v0, p0, Lcom/duoku/platform/view/page/a;->c:I

    .line 68
    iput v0, p0, Lcom/duoku/platform/view/page/a;->d:I

    goto :goto_16
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 12

    .prologue
    const/4 v5, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/duoku/platform/view/page/a;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 78
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getOrientation()I

    move-result v2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    invoke-direct {p0, v1}, Lcom/duoku/platform/view/page/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 82
    if-ne v2, v5, :cond_33

    .line 84
    iget v3, p0, Lcom/duoku/platform/view/page/a;->d:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 91
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getChildCount()I

    move-result v3

    .line 93
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_2f

    .line 94
    invoke-direct {p0, v3}, Lcom/duoku/platform/view/page/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 95
    if-ne v2, v5, :cond_38

    .line 96
    iget v1, p0, Lcom/duoku/platform/view/page/a;->d:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 103
    :cond_2f
    :goto_2f
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 104
    return-void

    .line 87
    :cond_33
    iget v3, p0, Lcom/duoku/platform/view/page/a;->c:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_1b

    .line 98
    :cond_38
    iget v1, p0, Lcom/duoku/platform/view/page/a;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2f
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/duoku/platform/view/page/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 109
    invoke-virtual {p0}, Lcom/duoku/platform/view/page/a;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 110
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/page/a;->a(Landroid/graphics/Canvas;)V

    .line 116
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    return-void

    .line 112
    :cond_12
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/page/a;->b(Landroid/graphics/Canvas;)V

    goto :goto_e
.end method
