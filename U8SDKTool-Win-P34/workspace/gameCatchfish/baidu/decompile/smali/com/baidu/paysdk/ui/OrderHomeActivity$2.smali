.class Lcom/baidu/paysdk/ui/OrderHomeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/OrderHomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    # invokes: Lcom/baidu/paysdk/ui/OrderHomeActivity;->isLoading()Z
    invoke-static {v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->access$000(Lcom/baidu/paysdk/ui/OrderHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;

    iget v1, v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6a

    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    # getter for: Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->access$100(Lcom/baidu/paysdk/ui/OrderHomeActivity;)Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->coupon_list:[Lcom/baidu/wallet/base/datamodel/PayData$Coupon;

    iget v2, v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->idx:I

    aget-object v1, v1, v2

    :goto_21
    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->getSelected()Z

    move-result v2

    if-nez v2, :cond_77

    const/4 v2, 0x1

    :goto_2e
    iput-boolean v2, v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->selected:Z

    iget-object v4, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->discount_amount:Ljava/lang/String;

    # invokes: Lcom/baidu/paysdk/ui/OrderHomeActivity;->updateItemDisplay(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    invoke-static {v4, p1, v1}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->access$200(Lcom/baidu/paysdk/ui/OrderHomeActivity;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getInstance()Lcom/baidu/paysdk/beans/PayBeanFactory;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-virtual {v4}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v5, 0x10

    const-string v6, ""

    invoke-virtual {v1, v4, v5, v6}, Lcom/baidu/paysdk/beans/PayBeanFactory;->getBean(Landroid/content/Context;ILjava/lang/String;)Lcom/baidu/wallet/core/beans/BaseBean;

    move-result-object v1

    check-cast v1, Lcom/baidu/paysdk/beans/h;

    iget v4, v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->type:I

    iget v5, v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->idx:I

    if-eqz v2, :cond_79

    const-string v0, "1"

    :goto_55
    invoke-virtual {v1, v4, v5, v0}, Lcom/baidu/paysdk/beans/h;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-virtual {v1, v0}, Lcom/baidu/paysdk/beans/h;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v1}, Lcom/baidu/paysdk/beans/h;->execBean()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    # getter for: Lcom/baidu/paysdk/ui/OrderHomeActivity;->mLoadingProcess:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->access$300(Lcom/baidu/paysdk/ui/OrderHomeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_9

    :cond_6a
    iget-object v1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    # getter for: Lcom/baidu/paysdk/ui/OrderHomeActivity;->mCalcPaymentResponse:Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->access$100(Lcom/baidu/paysdk/ui/OrderHomeActivity;)Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/paysdk/datamodel/CalcPaymentResponse;->activity_list:[Lcom/baidu/wallet/base/datamodel/PayData$Discount;

    iget v2, v0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->idx:I

    aget-object v1, v1, v2

    goto :goto_21

    :cond_77
    move v2, v3

    goto :goto_2e

    :cond_79
    const-string v0, "0"

    goto :goto_55

    :cond_7c
    iget-object v0, v1, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->select_state_desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$2;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v1, Lcom/baidu/wallet/base/datamodel/PayData$BaseDiscount;->select_state_desc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_9
.end method
