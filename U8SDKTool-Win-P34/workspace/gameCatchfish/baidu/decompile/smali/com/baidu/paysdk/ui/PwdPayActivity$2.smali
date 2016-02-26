.class Lcom/baidu/paysdk/ui/PwdPayActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

.field final synthetic val$balanceSelected:Z

.field final synthetic val$bankCardIdx:I

.field final synthetic val$onCountPayAmountListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;

.field final synthetic val$payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

.field final synthetic val$scoreSelected:Z


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdPayActivity;Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;ZZI)V
    .registers 7

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$onCountPayAmountListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;

    iput-object p3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    iput-boolean p4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$balanceSelected:Z

    iput-boolean p5, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$scoreSelected:Z

    iput p6, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$bankCardIdx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$onCountPayAmountListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$payPrice:Lcom/baidu/paysdk/datamodel/PayRequest$PayPrice;

    invoke-interface {v0, v2, v1, v3, v3}, Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;->onDone(ILcom/baidu/paysdk/datamodel/PayRequest$PayPrice;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mFirstRemoteCalculate:Z
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$400(Lcom/baidu/paysdk/ui/PwdPayActivity;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mBondCards:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$500(Lcom/baidu/paysdk/ui/PwdPayActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPayActivity$Utils;->hasChannelActivities([Lcom/baidu/wallet/base/datamodel/CardData$BondCard;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    # setter for: Lcom/baidu/paysdk/ui/PwdPayActivity;->mUseLocalCalculate:Z
    invoke-static {v0, v2}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$602(Lcom/baidu/paysdk/ui/PwdPayActivity;Z)Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity;

    iget-boolean v1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$balanceSelected:Z

    iget-boolean v2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$scoreSelected:Z

    iget v3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$bankCardIdx:I

    iget-object v4, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$2;->val$onCountPayAmountListener:Lcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;

    # invokes: Lcom/baidu/paysdk/ui/PwdPayActivity;->countPayAmount(ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/paysdk/ui/PwdPayActivity;->access$700(Lcom/baidu/paysdk/ui/PwdPayActivity;ZZILcom/baidu/paysdk/ui/PwdPayActivity$OnCountPayAmountListener;)V

    :cond_2f
    return-void
.end method
