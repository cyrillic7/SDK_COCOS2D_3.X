.class Lcom/baidu/paysdk/ui/PwdPayActivity$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/base/controllers/PasswordController$IPwdListener;


# instance fields
.field final synthetic this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$6;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdPayActivity$6;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$6$1;->this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onSucceed(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$6$1;->this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$6;

    iget-object v0, v0, Lcom/baidu/paysdk/ui/PwdPayActivity$6;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mPayResponse:Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1500(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$6$1;->this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$6;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$6;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1000(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/datamodel/DirectPayContentResponse;->storeResponse(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/wallet/base/controllers/PayController;->getInstance()Lcom/baidu/wallet/base/controllers/PayController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$6$1;->this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$6;

    iget-object v1, v1, Lcom/baidu/paysdk/ui/PwdPayActivity$6;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1000(Lcom/baidu/paysdk/ui/PwdPayActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$6$1;->this$1:Lcom/baidu/paysdk/ui/PwdPayActivity$6;

    iget-object v2, v2, Lcom/baidu/paysdk/ui/PwdPayActivity$6;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mCardToComplete:Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$1100(Lcom/baidu/paysdk/ui/PwdPayActivity;)Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/controllers/PayController;->completeCardPay(Landroid/content/Context;Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)V

    return-void
.end method
