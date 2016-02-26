.class public Lcom/qbao/sdk/ui/AboutView;
.super Lcom/qbao/sdk/ui/BaseView;
.source "AboutView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/AboutView;->setOrientation(I)V

    .line 25
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/AboutView;->setGravity(I)V

    .line 26
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/AboutView;->aF()V

    .line 27
    return-void
.end method

.method private b(ILjava/lang/String;)Landroid/widget/LinearLayout;
    .registers 15

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 62
    invoke-virtual {p0, v8, v9, v10, v8}, Lcom/qbao/sdk/ui/AboutView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 63
    sget v0, Lcom/qbao/sdk/e/g;->hU:I

    sget v2, Lcom/qbao/sdk/e/g;->hU:I

    invoke-virtual {v1, v0, v8, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 64
    const-wide/high16 v2, 0x3fe8000000000000L

    iget-boolean v0, p0, Lcom/qbao/sdk/ui/AboutView;->el:Z

    if-eqz v0, :cond_ba

    sget v0, Lcom/qbao/sdk/e/g;->aD:I

    :goto_18
    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 65
    const-wide v4, 0x3faeb851eb851eb8L

    iget-boolean v0, p0, Lcom/qbao/sdk/ui/AboutView;->el:Z

    if-eqz v0, :cond_be

    sget v0, Lcom/qbao/sdk/e/g;->aC:I

    :goto_26
    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 66
    sget v0, Lcom/qbao/sdk/e/g;->hz:I

    sget v4, Lcom/qbao/sdk/e/g;->hz:I

    invoke-static {v9, v0, v4}, Lcom/qbao/core/d/b;->a(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 70
    new-instance v0, Lcom/qbao/sdk/ui/AboutView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/qbao/sdk/ui/AboutView$2;-><init>(Lcom/qbao/sdk/ui/AboutView;ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const/16 v0, 0x11

    invoke-virtual {p0, v8, v8, v0, v8}, Lcom/qbao/sdk/ui/AboutView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/qbao/sdk/e/g;->hR:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 80
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/qbao/sdk/e/g;->hR:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 81
    sget v0, Lcom/qbao/sdk/e/g;->hD:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\uff1f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/qbao/sdk/e/g;->hD:I

    sget v4, Lcom/qbao/sdk/e/g;->hP:I

    sget v5, Lcom/qbao/sdk/e/g;->im:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/qbao/sdk/ui/AboutView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 84
    sget-object v3, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    sget v4, Lcom/qbao/sdk/e/g;->hT:I

    new-array v5, v11, [Landroid/view/View;

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {p0, v3, v8, v4, v5}, Lcom/qbao/sdk/ui/AboutView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 87
    const-string v4, "qb_go"

    invoke-virtual {p0, v4}, Lcom/qbao/sdk/ui/AboutView;->ac(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v4

    .line 89
    sget-object v5, Lcom/qbao/core/d/d$a;->aR:Lcom/qbao/core/d/d$a;

    new-array v6, v11, [Landroid/view/View;

    aput-object v3, v6, v8

    aput-object v4, v6, v9

    invoke-virtual {p0, v5, v9, v8, v6}, Lcom/qbao/sdk/ui/AboutView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 90
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 92
    new-instance v4, Lcom/qbao/sdk/ui/AboutView$3;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/qbao/sdk/ui/AboutView$3;-><init>(Lcom/qbao/sdk/ui/AboutView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    return-object v1

    .line 64
    :cond_ba
    sget v0, Lcom/qbao/sdk/e/g;->aC:I

    goto/16 :goto_18

    .line 65
    :cond_be
    sget v0, Lcom/qbao/sdk/e/g;->aD:I

    goto/16 :goto_26
.end method


# virtual methods
.method protected aA()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string v1, "\u5173\u4e8e\u94b1\u5b9d\u6e38\u620f"

    const/4 v2, 0x1

    new-instance v5, Lcom/qbao/sdk/ui/AboutView$1;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/AboutView$1;-><init>(Lcom/qbao/sdk/ui/AboutView;)V

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/AboutView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 42
    const/16 v0, 0x11

    invoke-virtual {p0, v4, v4, v0, v5}, Lcom/qbao/sdk/ui/AboutView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    sget v3, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 46
    const-string v1, "\u5982\u4f55\u4e0b\u8f7d\u6e38\u620f"

    invoke-direct {p0, v5, v1}, Lcom/qbao/sdk/ui/AboutView;->b(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    sget v1, Lcom/qbao/sdk/e/g;->hR:I

    invoke-virtual {p0, v4, v5, v1}, Lcom/qbao/sdk/ui/AboutView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    const-string v1, "\u5982\u4f55\u7ed9\u6e38\u620f\u5145\u503c"

    invoke-direct {p0, v4, v1}, Lcom/qbao/sdk/ui/AboutView;->b(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    sget v1, Lcom/qbao/sdk/e/g;->hR:I

    invoke-virtual {p0, v4, v5, v1}, Lcom/qbao/sdk/ui/AboutView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    const/4 v1, 0x2

    const-string v2, "\u5982\u4f55\u8bbe\u7f6e\u4ea4\u6613\u5bc6\u7801"

    invoke-direct {p0, v1, v2}, Lcom/qbao/sdk/ui/AboutView;->b(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    const/16 v1, 0x51

    invoke-virtual {p0, v4, v4, v1, v5}, Lcom/qbao/sdk/ui/AboutView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 53
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK\u7248\u672c\u53f7\uff1aV"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/qbao/sdk/e/a;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qbao/sdk/e/g;->hE:I

    sget v4, Lcom/qbao/sdk/e/g;->ik:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/qbao/sdk/ui/AboutView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    return-object v0
.end method
