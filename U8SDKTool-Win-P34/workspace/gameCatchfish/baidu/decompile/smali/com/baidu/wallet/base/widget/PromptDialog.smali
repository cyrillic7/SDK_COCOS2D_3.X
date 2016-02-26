.class public Lcom/baidu/wallet/base/widget/PromptDialog;
.super Lcom/baidu/wallet/base/widget/r;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "EbpayPromptDialog"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->style(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/wallet/base/widget/r;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/base/widget/r;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addContentView(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/r;->addContentView(I)V

    return-void
.end method

.method public bridge synthetic addContentView(ILandroid/widget/LinearLayout$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/base/widget/r;->addContentView(ILandroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic addContentView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/base/widget/r;->addContentView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic hideButtons()V
    .registers 1

    invoke-super {p0}, Lcom/baidu/wallet/base/widget/r;->hideButtons()V

    return-void
.end method

.method public bridge synthetic hideNegativeButton()V
    .registers 1

    invoke-super {p0}, Lcom/baidu/wallet/base/widget/r;->hideNegativeButton()V

    return-void
.end method

.method public bridge synthetic hidePositiveButton()V
    .registers 1

    invoke-super {p0}, Lcom/baidu/wallet/base/widget/r;->hidePositiveButton()V

    return-void
.end method

.method public bridge synthetic hideTitle()V
    .registers 1

    invoke-super {p0}, Lcom/baidu/wallet/base/widget/r;->hideTitle()V

    return-void
.end method

.method public bridge synthetic hideTitleLine()V
    .registers 1

    invoke-super {p0}, Lcom/baidu/wallet/base/widget/r;->hideTitleLine()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/r;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_dimen_30dp"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->dimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    const-string v4, "ebpay_dimen_20dp"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->dimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    const-string v5, "ebpay_dimen_30dp"

    invoke-static {v4, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->dimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    const-string v6, "ebpay_dimen_20dp"

    invoke-static {v5, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->dimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    const/high16 v1, 0x41700000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_black"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_confirm_exit"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/PromptDialog;->a(Landroid/view/View;)V

    return-void
.end method

.method public setMessage(I)V
    .registers 5

    const-string v0, "PromptDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessage. text view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    if-nez v0, :cond_29

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_28
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "PromptDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessage. text view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    if-nez v0, :cond_29

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/PromptDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28
.end method

.method public bridge synthetic setNegativeBtn(ILandroid/view/View$OnClickListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/base/widget/r;->setNegativeBtn(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setNegativeBtn(Landroid/view/View$OnClickListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/r;->setNegativeBtn(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setNegativeBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/base/widget/r;->setNegativeBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setPositiveBtn(ILandroid/view/View$OnClickListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/base/widget/r;->setPositiveBtn(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setPositiveBtn(Landroid/view/View$OnClickListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/r;->setPositiveBtn(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/baidu/wallet/base/widget/r;->setPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setTitleText(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/r;->setTitleText(I)V

    return-void
.end method

.method public bridge synthetic setTitleText(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/r;->setTitleText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTitleTextBackgroud(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/baidu/wallet/base/widget/r;->setTitleTextBackgroud(I)V

    return-void
.end method
