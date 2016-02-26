.class public Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/by;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->c:I

    .line 22
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->d:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    .line 26
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->b()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->c:I

    .line 22
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->d:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    .line 31
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->b()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->c:I

    .line 22
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->d:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    .line 37
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->b()V

    .line 38
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->setFocusable(Z)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->setFocusableInTouchMode(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method protected a()Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 133
    new-instance v0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;
    .registers 4

    .prologue
    .line 139
    new-instance v0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;
    .registers 3

    .prologue
    .line 144
    new-instance v0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 128
    instance-of v0, p1, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 123
    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->a()Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->a(Landroid/util/AttributeSet;)Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->getChildCount()I

    move-result v2

    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_33

    .line 114
    invoke-virtual {p0, v1}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    .line 116
    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->a(Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;)I

    move-result v4

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->b(Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;)I

    move-result v5

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->a(Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;)I

    move-result v6

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->c(Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->b(Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 118
    :cond_33
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 46
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->getMeasuredWidth()I

    move-result v3

    .line 48
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->c:I

    add-int/2addr v1, v3

    iget v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    div-int v4, v1, v2

    .line 50
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->c:I

    sub-int v5, v4, v1

    .line 52
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->getChildCount()I

    move-result v6

    move v2, v0

    .line 54
    :goto_18
    if-ge v2, v6, :cond_53

    .line 55
    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 56
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v8, 0x8

    if-ne v1, v8, :cond_2a

    .line 54
    :goto_26
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_18

    .line 60
    :cond_2a
    invoke-virtual {p0, v7, p1, p2}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->measureChild(Landroid/view/View;II)V

    .line 61
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;

    .line 62
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 63
    iget v8, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    rem-int v8, v2, v8

    mul-int/2addr v8, v4

    .line 64
    iget v9, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    div-int v9, v2, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->d:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    .line 65
    invoke-virtual {v0, v8, v9}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->a(II)V

    .line 66
    invoke-virtual {v0, v5}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout$LayoutParams;->a(I)V

    .line 67
    invoke-virtual {v7, v5}, Landroid/view/View;->setMinimumWidth(I)V

    move v0, v1

    goto :goto_26

    .line 70
    :cond_53
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    rem-int v1, v6, v1

    if-nez v1, :cond_6c

    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    div-int v1, v6, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    div-int v1, v6, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->d:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 72
    :goto_68
    invoke-virtual {p0, v3, v0}, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->setMeasuredDimension(II)V

    .line 73
    return-void

    .line 70
    :cond_6c
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    div-int v1, v6, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->e:I

    div-int v1, v6, v1

    iget v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPLineFeedLayout;->d:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_68
.end method
