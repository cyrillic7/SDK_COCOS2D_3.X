.class public Lcom/qbao/sdk/ui/ExitView;
.super Lcom/qbao/sdk/ui/BaseView;
.source "ExitView.java"


# instance fields
.field private et:Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/ExitView;->setOrientation(I)V

    .line 26
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/ExitView;->setGravity(I)V

    .line 27
    iput-object p2, p0, Lcom/qbao/sdk/ui/ExitView;->et:Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;

    .line 28
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/ExitView;->aF()V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ExitView;)Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qbao/sdk/ui/ExitView;->et:Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;

    return-object v0
.end method


# virtual methods
.method protected aA()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 40
    const-string v1, "\u9000\u51fa\u6e38\u620f"

    const/4 v2, 0x0

    new-instance v5, Lcom/qbao/sdk/ui/ExitView$1;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/ExitView$1;-><init>(Lcom/qbao/sdk/ui/ExitView;)V

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/ExitView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 16

    .prologue
    const v14, 0x3ebd70a4

    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 51
    const/16 v0, 0x11

    invoke-virtual {p0, v11, v11, v0, v13}, Lcom/qbao/sdk/ui/ExitView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 52
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    sget v3, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 55
    const-string v0, "\u662f\u5426\u786e\u5b9a\u9000\u51fa\u6e38\u620f\uff1f"

    sget v1, Lcom/qbao/sdk/e/g;->hD:I

    sget v2, Lcom/qbao/sdk/e/g;->ip:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/ExitView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    sget v0, Lcom/qbao/sdk/e/g;->hW:I

    invoke-virtual {p0, v11, v13, v0}, Lcom/qbao/sdk/ui/ExitView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    const-string v1, "\u66f4\u591a\u6e38\u620f\uff0c\u5c3d\u5728\u5e94\u7528\u5e02\u573a"

    sget v2, Lcom/qbao/sdk/e/g;->hI:I

    sget v3, Lcom/qbao/sdk/e/g;->hO:I

    sget v4, Lcom/qbao/sdk/e/g;->im:I

    new-instance v5, Lcom/qbao/sdk/ui/ExitView$2;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/ExitView$2;-><init>(Lcom/qbao/sdk/ui/ExitView;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/ExitView;->a(Ljava/lang/String;IIILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {p0, v11, v13, v0}, Lcom/qbao/sdk/ui/ExitView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    const-string v1, "\u53d6\u6d88"

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    sget v6, Lcom/qbao/sdk/e/g;->hI:I

    sget v7, Lcom/qbao/sdk/e/g;->hI:I

    sget v8, Lcom/qbao/sdk/e/g;->hK:I

    move-object v0, p0

    move v2, v12

    move v4, v14

    move v5, v11

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/ExitView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v10

    .line 67
    new-instance v0, Lcom/qbao/sdk/ui/ExitView$3;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/ui/ExitView$3;-><init>(Lcom/qbao/sdk/ui/ExitView;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v1, "\u786e\u5b9a"

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    sget v6, Lcom/qbao/sdk/e/g;->hH:I

    sget v7, Lcom/qbao/sdk/e/g;->hH:I

    sget v8, Lcom/qbao/sdk/e/g;->hL:I

    move-object v0, p0

    move v2, v12

    move v4, v14

    move v5, v11

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/ExitView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/qbao/sdk/ui/ExitView$4;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/ExitView$4;-><init>(Lcom/qbao/sdk/ui/ExitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget-object v1, Lcom/qbao/core/d/d$a;->aQ:Lcom/qbao/core/d/d$a;

    sget v2, Lcom/qbao/sdk/e/g;->hT:I

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    aput-object v10, v3, v13

    aput-object v0, v3, v11

    invoke-virtual {p0, v1, v11, v2, v3}, Lcom/qbao/sdk/ui/ExitView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 88
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v12, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    return-object v9
.end method

.method protected aI()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    .line 33
    invoke-super {p0}, Lcom/qbao/sdk/ui/BaseView;->aI()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/qbao/sdk/e/g;->aC:I

    sget v3, Lcom/qbao/sdk/e/g;->aD:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x15

    div-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    return-object v1
.end method
