.class public Lcom/baidu/wallet/base/widget/BaseTipDialog;
.super Landroid/app/Dialog;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSubParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "EbpayPromptDialog"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->style(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mRootView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mSubParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/baidu/wallet/base/widget/BaseTipDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mContext:Landroid/content/Context;

    const-string v1, "wallet_base_dialog_notitle"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BaseTipDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mInflater:Landroid/view/LayoutInflater;

    :cond_1e
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mSubParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mSubParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_dialog_content_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BaseTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mRootView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_dialog_title"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BaseTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_dialog_title_close"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BaseTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/base/widget/l;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/widget/l;-><init>(Lcom/baidu/wallet/base/widget/BaseTipDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/baidu/wallet/base/widget/BaseTipDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BaseTipDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setTitleMessage(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method

.method public setTitleMessage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BaseTipDialog;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
