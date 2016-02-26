.class Lcom/baidu/paysdk/ui/OrderHomeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/OrderHomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    # invokes: Lcom/baidu/paysdk/ui/OrderHomeActivity;->isLoading()Z
    invoke-static {v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->access$000(Lcom/baidu/paysdk/ui/OrderHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "discountToPayClick"

    iget-object v2, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    iget-object v2, v2, Lcom/baidu/paysdk/ui/OrderHomeActivity;->mPayReq:Lcom/baidu/paysdk/datamodel/PayRequest;

    iget-object v2, v2, Lcom/baidu/paysdk/datamodel/PayRequest;->mSpNO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/controllers/PayController;->onDiscountConfirmed()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->finishWithoutAnim()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/OrderHomeActivity;

    invoke-virtual {v0, v3, v3}, Lcom/baidu/paysdk/ui/OrderHomeActivity;->overridePendingTransition(II)V

    goto :goto_9
.end method
