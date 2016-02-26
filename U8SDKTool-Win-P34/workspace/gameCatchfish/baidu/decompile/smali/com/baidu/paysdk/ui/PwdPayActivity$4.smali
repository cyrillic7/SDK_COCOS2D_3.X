.class Lcom/baidu/paysdk/ui/PwdPayActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/paysdk/ui/PwdPayActivity$OnSelectPaymentListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountPayAmount(ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->countPayAmount(ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$700(Lcom/baidu/paysdk/ui/PwdPayActivity;ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V

    return-void
.end method

.method public onNewCard(Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # setter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v0, p1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$102(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->channelActivityIds:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # setter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    invoke-static {v0, p2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$002(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->storeParams()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$200(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PasswordController;->getPassWordInstance()Lcom/baidu/wallet/base/controllers/PasswordController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1000(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/baidu/paysdk/ui/PwdPayActivity$4$1;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/PwdPayActivity$4$1;-><init>(Lcom/baidu/paysdk/ui/PwdPayActivity$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/controllers/PasswordController;->checkPwd(Landroid/content/Context;Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;)V

    :goto_34
    return-void

    :cond_35
    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1000(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    invoke-virtual {v2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/base/controllers/PayController;->bindCardPay(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_34
.end method

.method public onResult(Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # setter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v0, p1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$102(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # setter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;
    invoke-static {v0, p2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$002(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;)Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->storeParams()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$200(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v0

    iget v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    if-eq v0, v2, :cond_55

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$500(Lcom/baidu/paysdk/ui/PwdPayActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v1

    iget v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->isCompled()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$500(Lcom/baidu/paysdk/ui/PwdPayActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v2

    iget v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    aget-object v1, v1, v2

    # setter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mCardToComplete:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1102(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    const/16 v1, 0xf

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_6

    :cond_55
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->showInputMethod()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1200(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v0

    iget v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    if-ne v0, v2, :cond_7a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1300(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->displayPayAmount()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$300(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    goto :goto_6

    :cond_7a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPwdPayLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1300(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondRequest:Lcom/baidu/paysdk/datamodel/BondPayRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1400(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/datamodel/BondPayRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$500(Lcom/baidu/paysdk/ui/PwdPayActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayment:Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;
    invoke-static {v2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;

    move-result-object v2

    iget v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$Payment;->bankCardSelectedIdx:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/baidu/paysdk/datamodel/BondPayRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$4;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->displayPayAmount()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$300(Lcom/baidu/paysdk/ui/PwdPayActivity;)V

    goto/16 :goto_6
.end method
