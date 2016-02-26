.class public Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/by;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = -0x1


# instance fields
.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    .line 24
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->e:I

    .line 25
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->f:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    .line 166
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    .line 29
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    .line 24
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->e:I

    .line 25
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->f:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    .line 166
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    .line 35
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    .line 24
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->e:I

    .line 25
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->f:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    .line 166
    iput v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    .line 42
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d()V

    .line 44
    return-void
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v0, 0x4

    const/4 v4, 0x0

    const/high16 v3, 0x41000000

    .line 155
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 156
    iget-object v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x320

    if-le v1, v2, :cond_18

    const/4 v0, 0x5

    :cond_18
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    .line 160
    :goto_1a
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->e:I

    .line 161
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->f:I

    .line 162
    invoke-virtual {p0, v4}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->setFocusable(Z)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->setFocusableInTouchMode(Z)V

    .line 164
    return-void

    .line 158
    :cond_31
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    goto :goto_1a
.end method


# virtual methods
.method protected a()Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 140
    new-instance v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;
    .registers 4

    .prologue
    .line 146
    new-instance v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(I)V
    .registers 6

    .prologue
    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    .line 186
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 187
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 188
    if-eq v0, p1, :cond_1e

    .line 189
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    const-string v3, "bdp_paycenter_amount_no_selected_bg"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 192
    :cond_1e
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    .line 193
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    const-string v3, "bdp_paycenter_amount_selected_bg"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1b

    .line 197
    :cond_2c
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    .line 171
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 172
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    if-eq v1, p1, :cond_1e

    .line 174
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    const-string v3, "bdp_paycenter_amount_no_selected_bg"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 177
    :cond_1e
    iput v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    .line 178
    iget-object v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->d:Landroid/content/Context;

    const-string v3, "bdp_paycenter_amount_selected_bg"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1b

    .line 182
    :cond_2c
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 204
    iget v0, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 135
    instance-of v0, p1, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 130
    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a()Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(Landroid/util/AttributeSet;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

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
    .line 118
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getChildCount()I

    move-result v2

    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_33

    .line 121
    invoke-virtual {p0, v1}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

    .line 123
    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->a(Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;)I

    move-result v4

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->b(Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;)I

    move-result v5

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->a(Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;)I

    move-result v6

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->c(Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->b(Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 125
    :cond_33
    return-void
.end method

.method protected onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 52
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getMeasuredWidth()I

    move-result v3

    .line 54
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->e:I

    add-int/2addr v1, v3

    iget v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    div-int v4, v1, v2

    .line 56
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->e:I

    sub-int v5, v4, v1

    .line 58
    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getChildCount()I

    move-result v6

    move v2, v0

    .line 60
    :goto_18
    if-ge v2, v6, :cond_53

    .line 61
    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 62
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v8, 0x8

    if-ne v1, v8, :cond_2a

    .line 60
    :goto_26
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_18

    .line 66
    :cond_2a
    invoke-virtual {p0, v7, p1, p2}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->measureChild(Landroid/view/View;II)V

    .line 67
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;

    .line 68
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 69
    iget v8, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    rem-int v8, v2, v8

    mul-int/2addr v8, v4

    .line 70
    iget v9, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    div-int v9, v2, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->f:I

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    .line 71
    invoke-virtual {v0, v8, v9}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->a(II)V

    .line 72
    invoke-virtual {v0, v5}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout$LayoutParams;->a(I)V

    .line 73
    invoke-virtual {v7, v5}, Landroid/view/View;->setMinimumWidth(I)V

    move v0, v1

    goto :goto_26

    .line 77
    :cond_53
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    rem-int v1, v6, v1

    if-nez v1, :cond_6c

    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    div-int v1, v6, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    div-int v1, v6, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 79
    :goto_68
    invoke-virtual {p0, v3, v0}, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->setMeasuredDimension(II)V

    .line 80
    return-void

    .line 77
    :cond_6c
    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    div-int v1, v6, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->g:I

    div-int v1, v6, v1

    iget v2, p0, Lcom/baidu/platformsdk/pay/widget/BDPFlowLayout;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_68
.end method
