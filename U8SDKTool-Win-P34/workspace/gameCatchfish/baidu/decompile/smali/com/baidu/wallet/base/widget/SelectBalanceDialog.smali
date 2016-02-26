.class public Lcom/baidu/wallet/base/widget/SelectBalanceDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/widget/SelectBalanceDialog$1;,
        Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;
    }
.end annotation


# instance fields
.field a:Lcom/baidu/paysdk/datamodel/PayRequest;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/Button;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "EbpayPromptDialog"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->style(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .registers 7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->b:Landroid/view/LayoutInflater;

    :cond_c
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v1, "ebpay_select_balance_dialog"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->setContentView(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v1, "dialog_title_close"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v1, "score_tv"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v1, "balance_tv"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v1, "btn_next"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;ZLcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 8

    const/4 v3, 0x0

    new-instance v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;-><init>(Lcom/baidu/wallet/base/widget/SelectBalanceDialog$1;)V

    iget-boolean v0, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreIsEnable:Z

    if-eqz v0, :cond_40

    if-eqz p2, :cond_37

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_check_sel"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_15
    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTotalAmount:Ljava/lang/String;

    iget-object v2, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreAmount:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->setScore(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreIsEnable:Z

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->a:Z

    iput-boolean p2, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->b:Z

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "bd_wallet_dialog_contenttext"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_33
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_37
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_check_bg"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_15

    :cond_40
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_check_disable"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_15

    :cond_49
    iput-boolean v3, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->a:Z

    iput-boolean v3, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->b:Z

    iget-object v0, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreTip:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "bd_wallet_text_gray2"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_33
.end method

.method private a(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScoreBalanceAmount(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->easyPrice:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2YuanBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v3, "ebpay_choose_score_balnace_dialog_btn"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2b
    const-string v0, "0"

    goto :goto_13
.end method

.method private a(Landroid/widget/TextView;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;

    :cond_f
    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    iget-boolean v0, v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->b:Z

    goto :goto_12
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->countPayAmount(Landroid/content/Context;ZZ)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->b(Landroid/widget/TextView;ZLcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;ZLcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    return-void
.end method

.method private b(Landroid/widget/TextView;ZLcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 8

    const/4 v3, 0x0

    new-instance v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;-><init>(Lcom/baidu/wallet/base/widget/SelectBalanceDialog$1;)V

    iget-boolean v0, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    if-eqz v0, :cond_40

    if-eqz p2, :cond_37

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_check_sel"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_15
    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTotalAmount:Ljava/lang/String;

    iget-object v2, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->setBalance(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->a:Z

    iput-boolean p2, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->b:Z

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "bd_wallet_dialog_contenttext"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_33
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_37
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_check_bg"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_15

    :cond_40
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "ebpay_pwdpay_check_disable"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->drawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_15

    :cond_49
    iput-boolean v3, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->a:Z

    iput-boolean v3, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->b:Z

    iget-object v0, p3, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceTip:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "bd_wallet_text_gray2"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_33
.end method

.method private c()V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->dismiss()V

    return-void
.end method

.method private d()V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;

    iget-boolean v4, v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->a:Z

    if-nez v4, :cond_21

    iget-object v1, v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_8a

    iget-object v4, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v5, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_7a

    move v0, v1

    :goto_32
    iget-object v6, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/baidu/paysdk/datamodel/PayRequest;->countPayAmount(Landroid/content/Context;ZZ)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    :goto_3f
    iget-object v4, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v5

    if-nez v5, :cond_7c

    :goto_49
    invoke-direct {p0, v4, v1, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;ZLcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->b(Landroid/widget/TextView;ZLcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v2, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->scoreAmount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScorePayAmount(Ljava/lang/String;)V

    :goto_66
    iget-boolean v1, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceIsEnable:Z

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    goto :goto_20

    :cond_7a
    move v0, v2

    goto :goto_32

    :cond_7c
    move v1, v2

    goto :goto_49

    :cond_7e
    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v1, v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScorePayAmount(Ljava/lang/String;)V

    goto :goto_66

    :cond_84
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    goto :goto_20

    :cond_8a
    move-object v0, v3

    goto :goto_3f
.end method

.method private e()V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;

    iget-boolean v4, v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->a:Z

    if-nez v4, :cond_21

    iget-object v1, v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog$a;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_71

    iget-object v4, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v5, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v6

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_67

    move v0, v1

    :goto_38
    invoke-virtual {v4, v5, v6, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->countPayAmount(Landroid/content/Context;ZZ)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    :goto_3f
    iget-object v4, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v5

    if-nez v5, :cond_69

    :goto_49
    invoke-direct {p0, v4, v1, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->b(Landroid/widget/TextView;ZLcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;ZLcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;->balanceAmount:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    goto :goto_20

    :cond_67
    move v0, v2

    goto :goto_38

    :cond_69
    move v1, v2

    goto :goto_49

    :cond_6b
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v3}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    goto :goto_20

    :cond_71
    move-object v0, v3

    goto :goto_3f
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c()V

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_11

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d()V

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_19

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->e()V

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->e:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmBalancePayAmount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScorePayAmount(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/PayRequest;->setmScoreBalanceAmount(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->b()V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a:Lcom/baidu/paysdk/datamodel/PayRequest;

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a()V

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->b()V

    invoke-virtual {p0, v2}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v2}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->setCancelable(Z)V

    return-void
.end method

.method public setBalance(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "0"

    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p2, "0"

    :cond_10
    invoke-static {p1}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2YuanBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-static {p2}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2YuanBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_24
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ebpay_pwdpay_balance_pre"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4d
    const-string v0, "0"

    goto :goto_1a

    :cond_50
    const-string v1, "0"

    goto :goto_24
.end method

.method public setEnableScore(Z)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->setEnableScore(ZLjava/lang/String;)V

    return-void
.end method

.method public setEnableScore(ZLjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "bd_wallet_dialog_contenttext"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->mContext:Landroid/content/Context;

    const-string v2, "bd_wallet_text_gray2"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f
.end method

.method public setScore(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "0"

    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p2, "0"

    :cond_10
    invoke-static {p2}, Lcom/baidu/wallet/core/utils/StringUtils;->fen2YuanBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ebpay_pwdpay_score_pre"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/widget/SelectBalanceDialog;->a(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_48
    const-string v0, "0"

    goto :goto_1c
.end method
