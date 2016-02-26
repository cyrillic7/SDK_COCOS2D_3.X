.class public Lcom/qbao/sdk/ui/RechargeView;
.super Lcom/qbao/sdk/ui/BaseView;
.source "RechargeView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/RechargeView;->setOrientation(I)V

    .line 23
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/RechargeView;->setGravity(I)V

    .line 24
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/RechargeView;->aF()V

    .line 25
    return-void
.end method


# virtual methods
.method protected aA()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 29
    const-string v1, "\u5145\u503c"

    const/4 v3, 0x0

    new-instance v5, Lcom/qbao/sdk/ui/RechargeView$1;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/RechargeView$1;-><init>(Lcom/qbao/sdk/ui/RechargeView;)V

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/RechargeView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0, v6, v6, v7, v5}, Lcom/qbao/sdk/ui/RechargeView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 41
    sget v0, Lcom/qbao/sdk/e/g;->ic:I

    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    sget v3, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 43
    const-string v0, "www.qbao.com"

    .line 44
    new-instance v0, Lcom/qbao/sdk/ui/RechargeView$2;

    const-string v1, "www.qbao.com"

    sget v2, Lcom/qbao/sdk/e/g;->hN:I

    sget v3, Lcom/qbao/sdk/e/g;->hF:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/qbao/sdk/ui/RechargeView$2;-><init>(Lcom/qbao/sdk/ui/RechargeView;Ljava/lang/String;II)V

    .line 53
    const-string v1, "\u8bf7\u4e0b\u8f7d\u94b1\u5b9d\u5ba2\u6237\u7aef\r\n\u6216\u524d\u5f80\u94b1\u5b9d\u7f51{0}\u5145\u503c"

    sget v2, Lcom/qbao/sdk/e/g;->hD:I

    sget v3, Lcom/qbao/sdk/e/g;->ip:I

    new-array v4, v6, [Lcom/qbao/core/d/c;

    aput-object v0, v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qbao/sdk/ui/RechargeView;->a(Ljava/lang/String;II[Lcom/qbao/core/d/c;)Landroid/widget/TextView;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    sget v0, Lcom/qbao/sdk/e/g;->id:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v6, v5, v0}, Lcom/qbao/sdk/ui/RechargeView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    const-string v1, "\u4e0b\u8f7d\u94b1\u5b9d\u5ba2\u6237\u7aef"

    sget v2, Lcom/qbao/sdk/e/g;->hI:I

    const-string v0, "qb_logo"

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/RechargeView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x3f400000

    sget v6, Lcom/qbao/sdk/e/g;->hI:I

    sget v7, Lcom/qbao/sdk/e/g;->hM:I

    new-instance v8, Lcom/qbao/sdk/ui/RechargeView$3;

    invoke-direct {v8, p0}, Lcom/qbao/sdk/ui/RechargeView$3;-><init>(Lcom/qbao/sdk/ui/RechargeView;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/RechargeView;->a(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;FIIILandroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    .line 65
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    return-object v9
.end method
