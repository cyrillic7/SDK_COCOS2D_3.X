.class Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;I)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iput p2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    iget v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->access$900(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v2, v2, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    invoke-virtual {v2}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ebpay_safe_handle"

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v1, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v2, v2, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    invoke-virtual {v2}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "SignChannelListActivity"

    invoke-virtual {v0, v2, v3, v4}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/beans/g;

    # setter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1002(Lcom/baidu/paysdk/ui/SignChannelListActivity;Lcom/baidu/paysdk/beans/g;)Lcom/baidu/paysdk/beans/g;

    :cond_4e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/g;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v5, :cond_16c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankCard()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v2, v2, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v2}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v5, :cond_b2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    iput-boolean v6, v0, Lcom/baidu/paysdk/beans/g;->a:Z

    :cond_b2
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->access$900(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/SignBank;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/SignBank;->bank_code:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->setSubBankCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v7, :cond_104

    :cond_e9
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->getPayResponse()Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v1

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->pay:Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;

    iget-object v0, v0, Lcom/baidu/wallet/base/datamodel/PayData$DirectPayPay;->easypay:Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/PayData$EasyPay;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;)V

    :cond_104
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_120

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    const-string v1, "bind_card"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;)V

    :cond_120
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v8, :cond_13b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    const-string v1, "repair_card_info"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;)V

    :cond_13b
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v5, :cond_160

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    iput-boolean v6, v0, Lcom/baidu/paysdk/beans/g;->a:Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    const-string v1, "find_password"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;)V

    :cond_160
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/g;->execBean()V

    :cond_16b
    return-void

    :cond_16c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-eq v0, v7, :cond_188

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBindFrom()I

    move-result v0

    if-ne v0, v8, :cond_1de

    :cond_188
    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasMobilePwd()Z

    move-result v0

    if-eqz v0, :cond_1ad

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v2, v2, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v2}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankCard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    :cond_1ad
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankCard()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v2, v2, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v2}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/BindFastRequest;->mBondCard:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    iget-object v2, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    :cond_1de
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->getCardInfoBean:Lcom/baidu/paysdk/beans/g;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1000(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/beans/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;->this$1:Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mBindReq:Lcom/baidu/paysdk/datamodel/BindFastRequest;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1100(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Lcom/baidu/paysdk/datamodel/BindFastRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/paysdk/datamodel/BindFastRequest;->getmBankCard()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/beans/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a
.end method
