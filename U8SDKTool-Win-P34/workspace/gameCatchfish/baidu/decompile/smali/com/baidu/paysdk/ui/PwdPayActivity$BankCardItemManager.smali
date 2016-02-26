.class Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/PwdPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BankCardItemManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;
    }
.end annotation


# instance fields
.field private mBankCardListDisableTip:Ljava/lang/String;

.field private mBankCardListEnabled:Z

.field private mCurrentBankDiscountDesc:Ljava/lang/String;

.field private mCurrentSelected:I

.field private mMgrContext:Landroid/content/Context;

.field private mOnItemClickListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnBankCardItemClickListener;

.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;ILjava/lang/String;Lcom/baidu/paysdk/ui/PwdPayActivity$OnBankCardItemClickListener;)V
    .registers 7

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mBankCardListEnabled:Z

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mParent:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentSelected:I

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentBankDiscountDesc:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mOnItemClickListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnBankCardItemClickListener;

    iget v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentSelected:I

    if-ltz v0, :cond_1a

    iput-boolean v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mBankCardListEnabled:Z

    :cond_1a
    return-void
.end method

.method private getItemDescView(Landroid/widget/LinearLayout;)Landroid/widget/TextView;
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v1, "bankcard_name"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getItemDiscountView(Landroid/widget/LinearLayout;)Landroid/widget/TextView;
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v1, "bankcard_discount"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getItemLayout(Landroid/widget/LinearLayout;)Landroid/widget/RelativeLayout;
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v1, "bankcard_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getItemRadioButton(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v1, "bankcard_select"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTag(Landroid/widget/LinearLayout;)Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getItemLayout(Landroid/widget/LinearLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;

    return-object v0
.end method

.method private setBankCardRadioSel(Landroid/widget/LinearLayout;Z)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getTag(Landroid/widget/LinearLayout;)Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;

    move-result-object v0

    iput-boolean p2, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;->selected:Z

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->updateBankCardRadio(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private updateBankCardRadio(Landroid/widget/LinearLayout;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getItemRadioButton(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mBankCardListEnabled:Z

    if-eqz v1, :cond_1c

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getTag(Landroid/widget/LinearLayout;)Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;->selected:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_radio_sel"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1b
    return-void

    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b
.end method


# virtual methods
.method public addItems([Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    move v1, v2

    move-object v0, v3

    :goto_7
    array-length v4, p1

    if-ge v1, v4, :cond_5c

    aget-object v5, p1, v1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v6, "ebpay_pwdpay_payment_select_item"

    invoke-static {v4, v6}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getItemLayout(Landroid/widget/LinearLayout;)Landroid/widget/RelativeLayout;

    move-result-object v6

    new-instance v7, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;

    iget v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentSelected:I

    if-ne v1, v4, :cond_5a

    const/4 v4, 0x1

    :goto_2b
    invoke-direct {v7, p0, v1, v4}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;IZ)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getItemDescView(Landroid/widget/LinearLayout;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v6, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->getCardDesc(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v5, "divider"

    invoke-static {v4, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->updateBankCardRadio(Landroid/widget/LinearLayout;)V

    iget-object v5, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v4

    goto :goto_7

    :cond_5a
    move v4, v2

    goto :goto_2b

    :cond_5c
    invoke-static {}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->isMaximumBondCards()Z

    move-result v1

    if-eqz v1, :cond_67

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_67
    iget v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentSelected:I

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentBankDiscountDesc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->updateBankCardActivity(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public enableBankCardList(ZLjava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v1, "bd_wallet_dialog_contenttext"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_b
    iput-boolean p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mBankCardListEnabled:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_15
    if-ge v2, v3, :cond_39

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getItemDescView(Landroid/widget/LinearLayout;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->updateBankCardRadio(Landroid/widget/LinearLayout;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_2d
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    const-string v1, "bd_wallet_pwdpay_light_gray"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput-object p2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mBankCardListDisableTip:Ljava/lang/String;

    move v1, v0

    goto :goto_b

    :cond_39
    return-void
.end method

.method public getBankCardListEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mBankCardListEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-boolean v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mBankCardListEnabled:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;

    iget v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;->idx:I

    iget v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentSelected:I

    if-ne v1, v2, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mOnItemClickListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnBankCardItemClickListener;

    iget v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;->idx:I

    invoke-interface {v1, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$OnBankCardItemClickListener;->onBankCardItemClick(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_10

    :cond_1c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mMgrContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mBankCardListDisableTip:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->toastIfNotEmpty(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method public updateBankCardActivity(ILjava/lang/String;)V
    .registers 9

    const/4 v2, 0x0

    iput p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentSelected:I

    iput-object p2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mCurrentBankDiscountDesc:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_c
    if-ge v3, v4, :cond_35

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->getItemDiscountView(Landroid/widget/LinearLayout;)Landroid/widget/TextView;

    move-result-object v5

    if-ne v3, p1, :cond_33

    const/4 v1, 0x1

    :goto_1d
    invoke-direct {p0, v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;->setBankCardRadioSel(Landroid/widget/LinearLayout;Z)V

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v3, p1, :cond_2f

    if-eqz p2, :cond_2f

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_33
    move v1, v2

    goto :goto_1d

    :cond_35
    return-void
.end method
